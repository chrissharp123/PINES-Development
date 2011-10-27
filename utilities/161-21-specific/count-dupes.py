#!/usr/bin/python
#
# created by Josh Lamos to pull out the IDs from an SQL result set for
# duplicated authority headings.
#

import os
f=open('auth_rec_dupes.out','ro')
lines=f.readlines()
f.close()
lines[0].split('|')
extra_ids=list()
last_entry=""
for line in lines:
    if line.split('|')[0] != last_entry:
        last_entry = line.split('|')[0]
    else:
        extra_ids.append(line.split('|')[1])
f=open('results.out','w')
for line in extra_ids:
        f.write(line)

f.close()
