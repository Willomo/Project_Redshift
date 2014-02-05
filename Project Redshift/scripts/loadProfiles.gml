///loadProfiles()

ini_open("profiles.ini");

global.profileName[0] = ini_read_string("Profile1","Name","Profile1");
global.profileVoice[0] = ini_read_real("Profile1","Voice",0);

global.profileName[1] = ini_read_string("Profile2","Name","Profile2");
global.profileVoice[1] = ini_read_real("Profile2","Voice",0);

global.profileName[2] = ini_read_string("Profile3","Name","Profile3");
global.profileVoice[2] = ini_read_real("Profile3","Voice",0);

global.profileName[3] = ini_read_string("Profile4","Name","Profile4");
global.profileVoice[3] = ini_read_real("Profile4","Voice",0);

global.profileName[4] = ini_read_string("Profile5","Name","Profile5");
global.profileVoice[4] = ini_read_real("Profile5","Voice",0);

global.profileName[5] = ini_read_string("Profile6","Name","Profile6");
global.profileVoice[5] = ini_read_real("Profile6","Voice",0);

global.profileName[6] = ini_read_string("Profile7","Name","Profile7");
global.profileVoice[6] = ini_read_real("Profile7","Voice",0);

global.profileName[7] = ini_read_string("Profile8","Name","Profile8");
global.profileVoice[7] = ini_read_real("Profile8","Voice",0);

global.profileName[8] = ini_read_string("Profile9","Name","Profile9");
global.profileVoice[8] = ini_read_real("Profile9","Voice",0);

global.profileName[9] = ini_read_string("Profile10","Name","Profile10");
global.profileVoice[9] = ini_read_real("Profile10","Voice",0);

ini_close();

currentProfile = 0;
