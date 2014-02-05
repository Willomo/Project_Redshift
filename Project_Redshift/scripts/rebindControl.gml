///rebindControl(profile)

currentProfile = argument0;

rebound = false;

newKeyMask = "";


newKeyType = "";

if keyboard_check(ord("A")) {
    newKey = ord("A");
    newKeyMask = "A";
} else if keyboard_check(ord("B")) {
    newKey = ord("B");
    newKeyMask = "B";
} else if keyboard_check(ord("C")) {
    newKey = ord("C");
    newKeyMask = "C";
} else if keyboard_check(ord("D")) {
    newKey = ord("D");
    newKeyMask = "D";
} else if keyboard_check(ord("E")) {
    newKey = ord("E");
    newKeyMask = "E";
} else if keyboard_check(ord("F")) {
    newKey = ord("F");
    newKeyMask = "F";
} else if keyboard_check(ord("G")) {
    newKey = ord("G");
    newKeyMask = "G";
} else if keyboard_check(ord("H")) {
    newKey = ord("H");
    newKeyMask = "H";
} else if keyboard_check(ord("I")) {
    newKey = ord("I");
    newKeyMask = "I";
} else if keyboard_check(ord("J")) {
    newKey = ord("J");
    newKeyMask = "J";
} else if keyboard_check(ord("K")) {
    newKey = ord("K");
    newKeyMask = "K";
} else if keyboard_check(ord("L")) {
    newKey = ord("L");
    newKeyMask = "L";
} else if keyboard_check(ord("M")) {
    newKey = ord("M");
    newKeyMask = "M";
} else if keyboard_check(ord("N")) {
    newKey = ord("N");
    newKeyMask = "N";
} else if keyboard_check(ord("O")) {
    newKey = ord("O");
    newKeyMask = "O";
} else if keyboard_check(ord("P")) {
    newKey = ord("P");
    newKeyMask = "P";
} else if keyboard_check(ord("Q")) {
    newKey = ord("Q");
    newKeyMask = "Q";
} else if keyboard_check(ord("R")) {
    newKey = ord("R");
    newKeyMask = "R";
} else if keyboard_check(ord("S")) {
    newKey = ord("S");
    newKeyMask = "S";
} else if keyboard_check(ord("T")) {
    newKey = ord("T");
    newKeyMask = "T";
} else if keyboard_check(ord("U")) {
    newKey = ord("U");
    newKeyMask = "U";
} else if keyboard_check(ord("V")) {
    newKey = ord("V");
    newKeyMask = "V";
} else if keyboard_check(ord("W")) {
    newKey = ord("W");
    newKeyMask = "W";
} else if keyboard_check(ord("X")) {
    newKey = ord("X");
    newKeyMask = "X";
} else if keyboard_check(ord("Y")) {
    newKey = ord("Y");
    newKeyMask = "Y";
} else if keyboard_check(ord("Z")) {
    newKey = ord("Z");
    newKeyMask = "Z";
} else if keyboard_check(ord("_")) {
    newKey = ord("_");
    newKeyMask = "-";
} else if keyboard_check(ord("1")) {
    newKey = ord("1");
    newKeyMask = "1";
} else if keyboard_check(ord("2")) {
    newKey = ord("2");
    newKeyMask = "2";
} else if keyboard_check(ord("3")) {
    newKey = ord("3");
    newKeyMask = "3";
} else if keyboard_check(ord("4")) {
    newKey = ord("4");
    newKeyMask = "4";
} else if keyboard_check(ord("5")) {
    newKey = ord("5");
    newKeyMask = "5";
} else if keyboard_check(ord("6")) {
    newKey = ord("6");
    newKeyMask = "6";
} else if keyboard_check(ord("7")) {
    newKey = ord("7");
    newKeyMask = "7";
} else if keyboard_check(ord("8")) {
    newKey = ord("8");
    newKeyMask = "8";
} else if keyboard_check(ord("9")) {
    newKey = ord("9");
    newKeyMask = "9";
} else if keyboard_check(vk_left) {
    newKey = vk_left;
    newKeyMask = "Left Arrow";
} else if keyboard_check(vk_right) {
    newKey = vk_right;
    newKeyMask = "Right Arrow";
} else if keyboard_check(vk_up) {
    newKey = vk_up;
    newKeyMask = "Up Arrow";
} else if keyboard_check(vk_down) {
    newKey = vk_down;
    newKeyMask = "Down Arrow";
} else if keyboard_check(vk_enter) {
    newKey = vk_enter;
    newKeyMask = "Enter";
} else if keyboard_check(vk_shift) {
    newKey = vk_shift;
    newKeyMask = "Shift";
} else if keyboard_check(vk_space) {
    newKey = vk_space;
    newKeyMask = "Space";
} else if keyboard_check(vk_control) {
    newKey = vk_control;
    newKeyMask = "Control";
} else if keyboard_check(vk_alt) {
    newKey = vk_alt;
    newKeyMask = "Alt";
} else if keyboard_check(vk_backspace) {
    newKey = vk_backspace;
    newKeyMask = "Backspace";
} else if keyboard_check(vk_tab) {
    newKey = vk_tab;
    newKeyMask = "Tab";
} else if keyboard_check(vk_home) {
    newKey = vk_home;
    newKeyMask = "Home";
} else if keyboard_check(vk_end) {
    newKey = vk_end;
    newKeyMask = "End";
} else if keyboard_check(vk_delete) {
    newKey = vk_delete;
    newKeyMask = "Delete";
} else if keyboard_check(vk_insert) {
    newKey = vk_insert;
    newKeyMask = "Insert";
} else if keyboard_check(vk_pageup) {
    newKey = vk_pageup;
    newKeyMask = "Page Up";
} else if keyboard_check(vk_pagedown) {
    newKey = vk_pagedown;
    newKeyMask = "Page Down";
} else if keyboard_check(vk_multiply) {
    newKey = vk_multiply;
    newKeyMask = "Numpad *";
} else if keyboard_check(vk_divide) {
    newKey = vk_divide;
    newKeyMask = "Numpad /";
} else if keyboard_check(vk_add) {
    newKey = vk_add;
    newKeyMask = "Numpad +";
} else if keyboard_check(vk_subtract) {
    newKey = vk_subtract;
    newKeyMask = "Numpad -";
} else if keyboard_check(vk_decimal) {
    newKey = vk_decimal;
    newKeyMask = "Numpad .";
} else if keyboard_check(vk_numpad0) {
    newKey = vk_numpad0;
    newKeyMask = "Numpad 0";
} else if keyboard_check(vk_numpad1) {
    newKey = vk_numpad1;
    newKeyMask = "Numpad 1";
} else if keyboard_check(vk_numpad2) {
    newKey = vk_numpad2;
    newKeyMask = "Numpad 2";
} else if keyboard_check(vk_numpad3) {
    newKey = vk_numpad3;
    newKeyMask = "Numpad 3";
} else if keyboard_check(vk_numpad4) {
    newKey = vk_numpad4;
    newKeyMask = "Numpad 4";
} else if keyboard_check(vk_numpad5) {
    newKey = vk_numpad5;
    newKeyMask = "Numpad 5";
} else if keyboard_check(vk_numpad6) {
    newKey = vk_numpad6;
    newKeyMask = "Numpad 6";
} else if keyboard_check(vk_numpad7) {
    newKey = vk_numpad7;
    newKeyMask = "Numpad 7";
} else if keyboard_check(vk_numpad8) {
    newKey = vk_numpad8;
    newKeyMask = "Numpad 8";
} else if keyboard_check(vk_numpad9) {
    newKey = vk_numpad9;
    newKeyMask = "Numpad 9";
} else if mouse_check_button(mb_left) {
    newKey = mb_left;
    newKeyType = "Mouse";
    newKeyMask = "Left MB";
    mouseRebind = true;
} else if mouse_check_button(mb_right) {
    newKey = mb_right;
    newKeyType = "Mouse";
    newKeyMask = "Right MB";
    mouseRebind = true;
} else if mouse_check_button(mb_middle) {
    newKey = mb_middle;
    newKeyType = "Mouse";
    newKeyMask = "Middle MB";
    mouseRebind = true;
}
/*
global.schemeName[0] = ini_read_string("Scheme1","Name","WASD_Default");
global.schemeType[0] = ini_read_string("Scheme1","Type","Keyboard");
global.schemeUpKey[0] = ini_read_string("Scheme1","Up","W");
global.schemeDownKey[0] = ini_read_string("Scheme1","Down","S");
global.schemeLeftKey[0] = ini_read_string("Scheme1","Left","A");
global.schemeRightKey[0] = ini_read_string("Scheme1","Right","D");
global.schemeMovementStick[0] = ini_read_string("Scheme1","MovementStick","");
global.schemeLookStick[0] = ini_read_string("Scheme1","LookStick","");
*/
if newKeyMask != "" {
    switch global.keyName {
        case "Up":
            global.schemeUpKey[currentScheme] = newKey;
            global.schemeUpKeyMask[currentScheme]= newKeyMask;
            if newKeyType = "Mouse" {
                global.upKeyType[currentScheme] = "Mouse";
            } else {
                global.upKeyType[currentScheme] = "Keyboard";
            }
        break;
        case "Down":
            global.schemeDownKey[currentScheme] = newKey;
            global.schemeDownKeyMask[currentScheme] = newKeyMask;
            if newKeyType = "Mouse" {
                global.downKeyType[currentScheme] = "Mouse";
            } else {
                global.downKeyType[currentScheme] = "Keyboard";
            }
        break;
        case "Left":
            global.schemeLeftKey[currentScheme] = newKey;
            global.schemeLeftKeyMask[currentScheme] = newKeyMask;
            if newKeyType = "Mouse" {
                global.leftKeyType[currentScheme] = "Mouse";
            } else {
                global.leftKeyType[currentScheme] = "Keyboard";
            }
        break;
        case "Right":
            global.schemeRightKey[currentScheme] = newKey;
            global.schemeRightKeyMask[currentScheme] = newKeyMask;
            if newKeyType = "Mouse" {
                global.rightKeyType[currentScheme] = "Mouse";
            } else {
                global.rightKeyType[currentScheme] = "Keyboard";
            }
        break;
        default:
        break;
    }
    controlRebind = false;
    saveScheme(currentScheme);
}
