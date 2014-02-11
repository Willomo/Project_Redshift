///testControl(player)

playerID = argument0;

switch global.upKeyType[playerID] {
    case "Keyboard":
        global.upKey[playerID] = keyboard_check(global.upKeyID[playerID]);
    break;
    case "Mouse":
        global.upKey[playerID] = mouse_check_button(global.upKeyID[playerID]);
    break;
}
switch global.downKeyType[playerID] {
    case "Keyboard":
        global.downKey[playerID] = keyboard_check(global.downKeyID[playerID]);
    break;
    case "Mouse":
        global.downKey[playerID] = mouse_check_button(global.downKeyID[playerID]);
    break;
}
switch global.leftKeyType[playerID] {
    case "Keyboard":
        global.leftKey[playerID] = keyboard_check(global.leftKeyID[playerID]);
    break;
    case "Mouse":
        global.leftKey[playerID] = mouse_check_button(global.leftKeyID[playerID]);
    break;
}
switch global.rightKeyType[playerID] {
    case "Keyboard":
        global.rightKey[playerID] = keyboard_check(global.rightKeyID[playerID]);
    break;
    case "Mouse":
        global.rightKey[playerID] = mouse_check_button(global.rightKeyID[playerID]);
    break;
}
