///loadProfiles()

profile = argument0;

profileTitle = "Profile" + string(profile+1);

ini_open("profile.ini");

global.profileName[profile] = ini_read_string(profileTitle,"Name",profileTitle);
global.profileControlScheme[profile] = ini_read_real(profileTitle,"Scheme",profile);
global.profileVoice[profile] = ini_read_real(profileTitle,"Voice",0);

ini_close();
