///saveScheme(scheme)

scheme = argument0;

schemeTitle = "Scheme" + string(scheme+1);

ini_open("controls.ini");

ini_write_string(schemeTitle,"Name",global.schemeName[scheme]);
ini_write_string(schemeTitle,"Type",global.schemeType[scheme]);
ini_write_string(schemeTitle,"Up",global.schemeUpKeyMask[scheme]);
ini_write_string(schemeTitle,"Down",global.schemeDownKeyMask[scheme]);
ini_write_string(schemeTitle,"Left",global.schemeLeftKeyMask[scheme]);
ini_write_string(schemeTitle,"Right",global.schemeRightKeyMask[scheme]);
ini_write_string(schemeTitle,"MovementStick",global.schemeMovementStickMask[scheme]);
ini_write_string(schemeTitle,"LookStick",global.schemeLookStickMask[scheme]);

ini_close();
