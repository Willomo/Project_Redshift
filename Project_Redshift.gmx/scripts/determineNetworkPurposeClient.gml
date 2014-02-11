///determineNetworkPurposeClient(input,sock)

input = argument0;
playerSend = argument1;
//playerID = argument1;

if input != "" {
    purposeCode = real(fnStringExplode(input,"|",0));
    switch purposeCode {
       case 0:
            //Ping
            result = real(fnStringExplode(input,"|",1));
            ping = current_time - result;
            title = ping;
            pingSend = "0|" + string(current_time) + "|" + string(ping);
            pingBuff = buffer_create(256,buffer_grow,1);
            buffer_seek(pingBuff,buffer_seek_start,0);
            buffer_write(pingBuff,buffer_string,pingSend);
            
            network_send_packet(playerSend,pingBuff,buffer_tell(pingBuff));
            
       break;
       case 1:
            result = fnStringExplode(input,"|",1);
            switch result {
                case "Confirm":
                    show_message("Connected");
                    /*joined = true;
                    pingSend = "0|" + string(current_time) + "|0";
                    pingBuff = buffer_create(256,buffer_grow,1);
                    buffer_seek(pingBuff,buffer_seek_start,0);
                    buffer_write(pingBuff,buffer_string,pingSend);
                    
                    network_send_packet(playerSend,pingBuff,buffer_tell(pingBuff));*/
                break;
                case "Password":
                    show_message("Password");
                    passwordBuff = buffer_create(256,buffer_grow,1);
                    
                    buffer_seek(passwordBuff,buffer_seek_start,0);
                    buffer_write(passwordBuff,buffer_string,"1|" + global.password);
                    
                    network_send_packet(playerSend,passwordBuff,buffer_tell(passwordBuff));
                break;
                case "Incorrect":
                    show_message("Wrong Password");
                break;
            }
       break;
    }
}
