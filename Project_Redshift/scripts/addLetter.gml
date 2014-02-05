///addLetter()
addString = "";
if keyboard_check(vk_shift) {shift = true;} else {shift = false;}
if keyboard_check(ord("A")) {if shift{addString += "A"} else {addString += "a"}}
if keyboard_check(ord("B")) {if shift{addString += "B"} else {addString += "b"}}
if keyboard_check(ord("C")) {if shift{addString += "C"} else {addString += "c"}}
if keyboard_check(ord("D")) {if shift{addString += "D"} else {addString += "d"}}
if keyboard_check(ord("E")) {if shift{addString += "E"} else {addString += "e"}}
if keyboard_check(ord("F")) {if shift{addString += "F"} else {addString += "f"}}
if keyboard_check(ord("G")) {if shift{addString += "G"} else {addString += "g"}}
if keyboard_check(ord("H")) {if shift{addString += "H"} else {addString += "h"}}
if keyboard_check(ord("I")) {if shift{addString += "I"} else {addString += "i"}}
if keyboard_check(ord("J")) {if shift{addString += "J"} else {addString += "j"}}
if keyboard_check(ord("K")) {if shift{addString += "K"} else {addString += "k"}}
if keyboard_check(ord("L")) {if shift{addString += "L"} else {addString += "l"}}
if keyboard_check(ord("M")) {if shift{addString += "M"} else {addString += "m"}}
if keyboard_check(ord("N")) {if shift{addString += "N"} else {addString += "n"}}
if keyboard_check(ord("O")) {if shift{addString += "O"} else {addString += "o"}}
if keyboard_check(ord("P")) {if shift{addString += "P"} else {addString += "p"}}
if keyboard_check(ord("Q")) {if shift{addString += "Q"} else {addString += "q"}}
if keyboard_check(ord("R")) {if shift{addString += "R"} else {addString += "r"}}
if keyboard_check(ord("S")) {if shift{addString += "S"} else {addString += "s"}}
if keyboard_check(ord("T")) {if shift{addString += "T"} else {addString += "t"}}
if keyboard_check(ord("U")) {if shift{addString += "U"} else {addString += "u"}}
if keyboard_check(ord("V")) {if shift{addString += "V"} else {addString += "v"}}
if keyboard_check(ord("W")) {if shift{addString += "W"} else {addString += "w"}}
if keyboard_check(ord("X")) {if shift{addString += "X"} else {addString += "x"}}
if keyboard_check(ord("Y")) {if shift{addString += "Y"} else {addString += "y"}}
if keyboard_check(ord("Z")) {if shift{addString += "Z"} else {addString += "z"}}

if keyboard_check(ord("0")) {if shift{addString += ")"} else {addString += "0"}}
if keyboard_check(ord("1")) {if shift{addString += "!"} else {addString += "1"}}
if keyboard_check(ord("2")) {if shift{addString += "@"} else {addString += "2"}}
if keyboard_check(ord("3")) {if shift{addString += "#"} else {addString += "3"}}
if keyboard_check(ord("4")) {if shift{addString += "$"} else {addString += "4"}}
if keyboard_check(ord("5")) {if shift{addString += "%"} else {addString += "5"}}
if keyboard_check(ord("6")) {if shift{addString += "^"} else {addString += "6"}}
if keyboard_check(ord("7")) {if shift{addString += "&"} else {addString += "7"}}
if keyboard_check(ord("8")) {if shift{addString += "*"} else {addString += "8"}}
if keyboard_check(ord("9")) {if shift{addString += "("} else {addString += "9"}}

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

if keyboard_check(vk_space) {addString += " "}

return addString;
