///getType(mask)

mask = argument0;
switch mask {
    case "Left MB":
    case "Right MB":
    case "Middle MB":
        return "Mouse";
    break;
    default:
        return "Keyboard";
    break;
}
