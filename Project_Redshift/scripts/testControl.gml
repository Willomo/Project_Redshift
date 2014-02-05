///testControl

switch global.upKey1Type {
    case "Keyboard":
        global.upKey1 = keyboard_check(global.upKey1ID);
    break;
    case "Mouse":
        global.upKey1 = mouse_check_button(global.upKey1ID);
    break;
}
switch global.downKey1Type {
    case "Keyboard":
        global.downKey1 = keyboard_check(global.downKey1ID);
    break;
    case "Mouse":
        global.downKey1 = mouse_check_button(global.downKey1ID);
    break;
}
switch global.leftKey1Type {
    case "Keyboard":
        global.leftKey1 = keyboard_check(global.leftKey1ID);
    break;
    case "Mouse":
        global.leftKey1 = mouse_check_button(global.leftKey1ID);
    break;
}
switch global.rightKey1Type {
    case "Keyboard":
        global.rightKey1 = keyboard_check(global.rightKey1ID);
    break;
    case "Mouse":
        global.rightKey1 = mouse_check_button(global.rightKey1ID);
    break;
}
