dojo.require('dijit.Dialog');
dojo.require('dojo.cookie');
dojo.require('fieldmapper.AutoIDL');  // make conditional.  TT variable sets JS var to enable/disable?
dojo.require('fieldmapper.dojoData');
dojo.require('openils.User');
dojo.require('openils.CGI');
dojo.require('openils.Event');
dojo.require('openils.Util');

function oilsSetupUser() {
    var cgi = new openils.CGI();
    var authtoken = cgi.param('ses') || dojo.cookie('ses');
    var workstation = cgi.param('ws') || dojo.cookie('ws');
    var user;
    if(authtoken) user = new openils.User({authtoken:authtoken});
    if(!authtoken || openils.Event.parse(user.user)) {
        dojo.cookie('ses', openils.User.authtoken, {expires:-1, path:'/'}); // remove the cookie
        openils.User.authtoken = null;
        dojo.addOnLoad(function(){
            oilsLoginDialog.show(); 
            var func = function(){ oilsDoLogin(); };
            openils.Util.registerEnterHandler(dojo.byId('oils-login-username'), func);
            openils.Util.registerEnterHandler(dojo.byId('oils-login-password'), func);
            dojo.byId('oils-login-workstation').innerHTML = workstation || '';
        });
        return;
    }
    dojo.cookie('ses', authtoken, {path:'/'});
    openils.User.authtoken = authtoken;
    openils.User.workstation = workstation;
}

function oilsDoLogin() {
    var cgi = new openils.CGI();
    var workstation = cgi.param('ws') || dojo.cookie('ws');
    var user = new openils.User();
    var args = {
        username: dojo.byId('oils-login-username').value,
        passwd: dojo.byId('oils-login-password').value,
        type: 'staff', // hardcode for now
    };
    if(workstation) 
        args.workstation = workstation;
    user.login(args);
    dojo.cookie('ses', user.authtoken, {path : '/'});
    location.href = location.href;
    return false;
}

oilsSetupUser();

