///determineNetworkPurposeClient(input)

input = argument0;
//playerID = argument1;
if input != "" {
    purposeCode = real(fnStringExplode(input,"|",0));
    show_message(input);
    switch purposeCode {
       case 0:
            //Ping
            prevPing = real(fnStringExplode(input,"|",1));
            
       break;
       case 1:
    
       break;
    }
}
