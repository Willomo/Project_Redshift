///saveProfile(profile)

profile = argument0;

profileTitle = "Profile" + string(profile + 1);

ini_open("profiles.ini");

ini_write_string(profileTitle,"Name",global.profileName[profile]);
ini_write_real(profileTitle,"Voice",global.profileVoice[profile]);
ini_close();
