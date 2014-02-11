///addNumber(decimal)
addString = "";

decimal = argument0;

if keyboard_check(ord("0")) addString += "0"
if keyboard_check(ord("1")) addString += "1"
if keyboard_check(ord("2")) addString += "2"
if keyboard_check(ord("3")) addString += "3"
if keyboard_check(ord("4")) addString += "4"
if keyboard_check(ord("5")) addString += "5"
if keyboard_check(ord("6")) addString += "6"
if keyboard_check(ord("7")) addString += "7"
if keyboard_check(ord("8")) addString += "8"
if keyboard_check(ord("9")) addString += "9"


if keyboard_check(vk_numpad0) addString += "0"
if keyboard_check(vk_numpad1) addString += "1"
if keyboard_check(vk_numpad2) addString += "2"
if keyboard_check(vk_numpad3) addString += "3"
if keyboard_check(vk_numpad4) addString += "4"
if keyboard_check(vk_numpad5) addString += "5"
if keyboard_check(vk_numpad6) addString += "6"
if keyboard_check(vk_numpad7) addString += "7"
if keyboard_check(vk_numpad8) addString += "8"
if keyboard_check(vk_numpad9) addString += "9"

if decimal {
    if keyboard_check(vk_period) addString += "."
    if keyboard_check(vk_decimal) addString += "."
}
return addString;
