///determineNetworkPurposeClient(input,id)

purposeCode = argument0;
playerID = argument1;
purpose = real(fnStringExplode(display,"|",0));
switch purposeCode {
   case 0:
        //Ping
        prevPing = real(fnStringExplode(display,"|",1));
        
   break;
   case 1:
        show_message("purposeCode");
   break;
}
