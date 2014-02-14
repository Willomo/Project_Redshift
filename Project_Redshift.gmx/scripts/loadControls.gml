///loadControls()

ini_open("controls.ini");

global.schemeName[0] = ini_read_string("Scheme1","Name","WASD_Default");
global.schemeType[0] = ini_read_string("Scheme1","Type","Keyboard");
global.schemeUpKeyMask[0] = ini_read_string("Scheme1","Up","W");
global.schemeDownKeyMask[0] = ini_read_string("Scheme1","Down","S");
global.schemeLeftKeyMask[0] = ini_read_string("Scheme1","Left","A");
global.schemeRightKeyMask[0] = ini_read_string("Scheme1","Right","D");
global.schemeMovementStickMask[0] = ini_read_string("Scheme1","MovementStick","");
global.schemeLookStickMask[0] = ini_read_string("Scheme1","LookStick","");

global.schemeName[1] = ini_read_string("Scheme2","Name","ControllerDefault");
global.schemeType[1] = ini_read_string("Scheme2","Type","Controller");
global.schemeUpKeyMask[1] = ini_read_string("Scheme2","Up","");
global.schemeDownKeyMask[1] = ini_read_string("Scheme2","Down","");
global.schemeLeftKeyMask[1] = ini_read_string("Scheme2","Left","");
global.schemeRightKeyMask[1] = ini_read_string("Scheme2","Right","");
global.schemeMovementStickMask[1] = ini_read_string("Scheme2","MovementStick","Left");
global.schemeLookStickMask[1] = ini_read_string("Scheme2","LookStick","Right");

global.schemeName[2] = ini_read_string("Scheme3","Name","ControllerSwapped");
global.schemeType[2] = ini_read_string("Scheme3","Type","Controller");
global.schemeUpKeyMask[2] = ini_read_string("Scheme3","Up","");
global.schemeDownKeyMask[2] = ini_read_string("Scheme3","Down","");
global.schemeLeftKeyMask[2] = ini_read_string("Scheme3","Left","");
global.schemeRightKeyMask[2] = ini_read_string("Scheme3","Right","");
global.schemeMovementStickMask[2] = ini_read_string("Scheme3","MovementStick","Right");
global.schemeLookStickMask[2] = ini_read_string("Scheme3","LookStick","Left");

global.schemeName[3] = ini_read_string("Scheme4","Name","Arrow Keys");
global.schemeType[3] = ini_read_string("Scheme4","Type","Keyboard");
global.schemeUpKeyMask[3] = ini_read_string("Scheme4","Up","Up Arrow");
global.schemeDownKeyMask[3] = ini_read_string("Scheme4","Down","Down Arrow");
global.schemeLeftKeyMask[3] = ini_read_string("Scheme4","Left","Left Arrow");
global.schemeRightKeyMask[3] = ini_read_string("Scheme4","Right","Right Arrow");
global.schemeMovementStickMask[3] = ini_read_string("Scheme4","MovementStick","");
global.schemeLookStickMask[3] = ini_read_string("Scheme4","LookStick","");

global.schemeName[4] = ini_read_string("Scheme5","Name","IJKL");
global.schemeType[4] = ini_read_string("Scheme5","Type","Keyboard");
global.schemeUpKeyMask[4] = ini_read_string("Scheme5","Up","I");
global.schemeDownKeyMask[4] = ini_read_string("Scheme5","Down","K");
global.schemeLeftKeyMask[4] = ini_read_string("Scheme5","Left","I");
global.schemeRightKeyMask[4] = ini_read_string("Scheme5","Right","L");
global.schemeMovementStickMask[4] = ini_read_string("Scheme5","MovementStick","");
global.schemeLookStickMask[4] = ini_read_string("Scheme5","LookStick","");

global.schemeName[5] = ini_read_string("Scheme6","Name","Scheme6");
global.schemeType[5] = ini_read_string("Scheme6","Type","Keyboard");
global.schemeUpKeyMask[5] = ini_read_string("Scheme6","Up","W");
global.schemeDownKeyMask[5] = ini_read_string("Scheme6","Down","S");
global.schemeLeftKeyMask[5] = ini_read_string("Scheme6","Left","A");
global.schemeRightKeyMask[5] = ini_read_string("Scheme6","Right","D");
global.schemeMovementStickMask[5] = ini_read_string("Scheme6","MovementStick","");
global.schemeLookStickMask[5] = ini_read_string("Scheme6","LookStick","");

global.schemeName[6] = ini_read_string("Scheme7","Name","Scheme7");
global.schemeType[6] = ini_read_string("Scheme7","Type","Keyboard");
global.schemeUpKeyMask[6] = ini_read_string("Scheme7","Up","W");
global.schemeDownKeyMask[6] = ini_read_string("Scheme7","Down","S");
global.schemeLeftKeyMask[6] = ini_read_string("Scheme7","Left","A");
global.schemeRightKeyMask[6] = ini_read_string("Scheme7","Right","D");
global.schemeMovementStickMask[6] = ini_read_string("Scheme7","MovementStick","");
global.schemeLookStickMask[6] = ini_read_string("Scheme7","LookStick","");

global.schemeName[7] = ini_read_string("Scheme8","Name","Scheme8");
global.schemeType[7] = ini_read_string("Scheme8","Type","Keyboard");
global.schemeUpKeyMask[7] = ini_read_string("Scheme8","Up","W");
global.schemeDownKeyMask[7] = ini_read_string("Scheme8","Down","S");
global.schemeLeftKeyMask[7] = ini_read_string("Scheme8","Left","A");
global.schemeRightKeyMask[7] = ini_read_string("Scheme8","Right","D");
global.schemeMovementStickMask[7] = ini_read_string("Scheme8","MovementStick","");
global.schemeLookStickMask[7] = ini_read_string("Scheme8","LookStick","");

global.schemeName[8] = ini_read_string("Scheme9","Name","Scheme9");
global.schemeType[8] = ini_read_string("Scheme9","Type","Keyboard");
global.schemeUpKeyMask[8] = ini_read_string("Scheme9","Up","W");
global.schemeDownKeyMask[8] = ini_read_string("Scheme9","Down","S");
global.schemeLeftKeyMask[8] = ini_read_string("Scheme9","Left","A");
global.schemeRightKeyMask[8] = ini_read_string("Scheme9","Right","D");
global.schemeMovementStickMask[8] = ini_read_string("Scheme9","MovementStick","");
global.schemeLookStickMask[8] = ini_read_string("Scheme9","LookStick","");

global.schemeName[9] = ini_read_string("Scheme10","Name","Scheme10");
global.schemeType[9] = ini_read_string("Scheme10","Type","Keyboard");
global.schemeUpKeyMask[9] = ini_read_string("Scheme10","Up","W");
global.schemeDownKeyMask[9] = ini_read_string("Scheme10","Down","S");
global.schemeLeftKeyMask[9] = ini_read_string("Scheme10","Left","A");
global.schemeRightKeyMask[9] = ini_read_string("Scheme10","Right","D");
global.schemeMovementStickMask[9] = ini_read_string("Scheme10","MovementStick","");
global.schemeLookStickMask[9] = ini_read_string("Scheme10","LookStick","");

ini_close();

//Default Keyboard

global.schemeName[10] = "Default Keyboard";
global.schemeType[10] = "Keyboard";
global.schemeUpKeyMask[10] = "W";
global.schemeDownKeyMask[10] = "S";
global.schemeLeftKeyMask[10] = "A";
global.schemeRightKeyMask[10] = "D";
global.schemeMovementStickMask[10] = "";
global.schemeLookStickMask[10] = "";

//Default Controller

global.schemeName[11] = "Default Controller";
global.schemeType[11] = "Controller";
global.schemeUpKeyMask[11] = "";
global.schemeDownKeyMask[11] = "";
global.schemeLeftKeyMask[11] = "";
global.schemeRightKeyMask[11] = "";
global.schemeMovementStickMask[11] = "Right";
global.schemeLookStickMask[11] = "Left";

for (currentScheme=0;currentScheme<12;currentScheme++) {
    global.schemeUpKey[currentScheme] = convertMask(global.schemeUpKeyMask[currentScheme]);
    global.upKeyType[currentScheme] = getType(global.schemeUpKeyMask[currentScheme]);
    
    global.schemeDownKey[currentScheme] = convertMask(global.schemeDownKeyMask[currentScheme]);
    global.downKeyType[currentScheme] = getType(global.schemeDownKeyMask[currentScheme]);
    
    global.schemeLeftKey[currentScheme] = convertMask(global.schemeLeftKeyMask[currentScheme]);
    global.leftKeyType[currentScheme] = getType(global.schemeLeftKeyMask[currentScheme]);
    
    global.schemeRightKey[currentScheme] = convertMask(global.schemeRightKeyMask[currentScheme]);
    global.rightKeyType[currentScheme] = getType(global.schemeRightKeyMask[currentScheme]);
    
    global.schemeMovementStick[currentScheme] = convertMask(global.schemeMovementStickMask[currentScheme]);
    
    global.schemeLookStick[currentScheme] = convertMask(global.schemeLookStickMask[currentScheme]);    
}

currentScheme = 0;
