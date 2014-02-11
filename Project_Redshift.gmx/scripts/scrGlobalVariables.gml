/*globalvar pause;
pause=false;*/

for (currentPlayer = 0;currentPlayer<4;currentPlayer++) {
    global.upKeyID[currentPlayer]=convertMask(global.schemeUpKeyMask[currentPlayer]);
    
    global.downKeyID[currentPlayer]=convertMask(global.schemeDownKeyMask[currentPlayer]);
    
    global.leftKeyID[currentPlayer]=convertMask(global.schemeLeftKeyMask[currentPlayer]);
    
    global.rightKeyID[currentPlayer]=convertMask(global.schemeRightKeyMask[currentPlayer]);
    
    activateKey[currentPlayer]=ord("E");
    globalvar selected1;
    selected1=noone;
    globalvar shipArray;
}
