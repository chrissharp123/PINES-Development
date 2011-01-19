use strict; use warnings;
package OpenILS::Utils::FlatXML;
use XML::LibXML;
use OpenILS::Utils::Fieldmapper;


my $_tC_mask = 1 << XML_TEXT_NODE | 1 << XML_COMMENT_NODE | 1 << XML_CDATA_SECTION_NODE | 1 << XML_DTD_NODE;
my $_val_mask = 1 << XML_ATTRIBUTE_NODE | 1 << XML_NAMESPACE_DECL;


my $parser = XML::LibXML->new();
$parser->keep_blanks(0);
sub new {
	my $class = shift;
	my %args = (	nodeset	=> [],
			xml	=> undef,
			xmlfile	=> undef,
			doc	=> undef,
			@_,
	);
	$class = ref($class) || $class;
	return bless(\%args,$class);
}

sub xml {
	my $self = shift;
	my $xml = shift;
	if ($xml) {
		$self->{xml} = $xml;
	}
	return $self->{xml};
}

sub xmlfile {
	my $self = shift;
	my $xml = shift;
	if ($xml) {
		$self->{xmlfile} = $xml;
	}
	return $self->{xmlfile};
}

sub xml_to_doc {
	my($self, $xml) = @_;
	my $doc = $self->{doc};
	unless ($doc) {
		$xml ||= $self->{xml};
		$doc = $self->{doc} = $parser->parse_string( $xml );
	}
	return $doc;
}

sub xml_to_nodeset {
	my($self, $xml) = @_;
	$xml ||= $self->xml;
	$self->xml_to_doc( $xml );
	my $nodeset = $self->_xml_to_nodeset;
	return $self;
}

sub xmldoc_to_nodeset {
	my($self, $doc) = @_;
	$self->{doc} = $doc if $doc;
	my $nodeset = $self->_xml_to_nodeset;
	return $self;
}

sub nodeset {
	my $self = shift;
	return $self->{nodeset};
}

sub xmlfile_to_nodeset {
	my($self, $xmlfile) = @_;
	$self->xmlfile( $xmlfile );
	$self->xmlfile_to_doc;
	return $self->xml_to_nodeset;
}

sub doc {
	my $self = shift;
	return $self->{doc};
}

sub xmlfile_to_doc {
	my($self, $xmlfile) = @_;
	$xmlfile ||= $self->xmlfile;
	my $doc = $self->{doc};
	unless ($doc) {
		$doc = $self->{doc} = $parser->parse_file( $xmlfile );
	}
	return $doc;
}
sub nodeset_to_xml {
	my $self = shift;
	my $nodeset = shift;
	$self->{nodeset} = $nodeset if $nodeset;

	my $doc = XML::LibXML::Document->new;

	my %seen_ns;
	
	my @_xmllist;
	for my $node ( @{$self->nodeset} ) {
		my $xml;

		$node = Fieldmapper::biblio::record_node->new($node);

		if ( $node->node_type == XML_ELEMENT_NODE ) {

			$xml = $doc->createElement( $node->name );

			$xml->setNodeName($seen_ns{$node->namespace_uri} . ':' . 
					$xml->nodeName) if ($node->namespace_uri and $seen_ns{$node->namespace_uri});

		} elsif ( $node->node_type == XML_TEXT_NODE ) {
			$xml = $doc->createTextNode( $node->value );
			
		} elsif ( $node->node_type == XML_COMMENT_NODE ) {
			$xml = $doc->createComment( $node->value );
			
		} elsif ( $node->node_type == XML_NAMESPACE_DECL ) {
			if ($self->nodeset->[$node->parent_node]->namespace_uri eq $node->value) {
				$_xmllist[$node->parent_node]->setNamespace($node->value, $node->name, 1);
			} else {
				$_xmllist[$node->parent_node]->setNamespace($node->value, $node->name, 0);
			}
			$seen_ns{$node->value} = $node->name;
			next;

		} elsif ( $node->node_type == XML_ATTRIBUTE_NODE ) {

			if ($node->namespace_uri) {
				$_xmllist[$node->parent_node]->setAttributeNS($node->namespace_uri, $node->name, $node->value);
			} else {
				$_xmllist[$node->parent_node]->setAttribute($node->name, $node->value);
			}

			next;
		} else {
			next;
		}

		$_xmllist[$node->intra_doc_id] = $xml;

		if (defined $node->parent_node) {
			$_xmllist[$node->parent_node]->addChild($xml);
		}
	}

	$doc->setDocumentElement($_xmllist[0]);

	return $doc;
}

sub _xml_to_nodeset {

	my($self, $doc) = @_;

	$doc ||= $self->doc;
	return undef unless($doc);

	my $node = $doc->documentElement;
	return undef unless($node);

	$self->{next_id} = 0;

	push @{$self->nodeset}, _make_node_entry( 0, undef, 
			$node->localname, undef, $node->nodeType, $node->namespaceURI );

	$self->_nodeset_recurse( $node, 0);

	return  $self;
}


sub _make_node_entry {
	my( $intra_doc, $parent, $name, $value, $type, $namespace ) = @_;

	my $array = Fieldmapper::biblio::record_node->new();
	$array->intra_doc_id($intra_doc);
	$array->parent_node($parent);
	$array->name($name);
	$array->value($value);
	$array->node_type($type);
	$array->namespace_uri($namespace);
	return $array;
}


sub _nodeset_recurse {

	my( $self, $node, $parent) = @_;
	return undef unless($node && $node->nodeType == 1);


	for my $kid ( ($node->getNamespaces, $node->attributes, $node->childNodes) ) {

		my $type = $kid->nodeType;

		push @{$self->nodeset}, _make_node_entry( ++$self->{next_id}, $parent,
			$kid->localname, _grab_content( $kid, $type ), 
			$type, ($type != 18 ? $kid->namespaceURI : undef ));

		return if ($type == 3);
		$self->_nodeset_recurse( $kid, $self->{next_id});
	}
}

sub _grab_content {
	my $node = shift;
	my $type = 1 << shift();

	return undef if ($type & 1 << XML_ELEMENT_NODE);
	return $node->textContent if ($type & $_tC_mask);
	return $node->value if ($type & $_val_mask);
	return $node->getData if ($type & 1 << XML_PI_NODE);
}

1;
