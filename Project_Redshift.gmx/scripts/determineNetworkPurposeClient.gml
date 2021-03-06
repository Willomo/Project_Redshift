///determineNetworkPurposeClient(input,sock)

input = argument0;
playerSend = argument1;

if input != "" {
    purposeCode = real(fnStringExplode(input,"|",1));
    switch purposeCode {
       case 0:
            //Ping
            result = real(fnStringExplode(input,"|",2));
            ping = current_time - result;
            clientLobby.ping = ping;
            pingSend = string(global.networkPlayerID) + "|0|" + string(current_time) + "|" + string(ping);
            pingBuff = buffer_create(256,buffer_grow,1);
            buffer_seek(pingBuff,buffer_seek_start,0);
            buffer_write(pingBuff,buffer_string,pingSend);
            
            network_send_packet(playerSend,pingBuff,buffer_tell(pingBuff));
            
       break;
       case 1:
            result = fnStringExplode(input,"|",2);
            switch result {
                case "Confirm":
                    global.networkPlayerID = real(fnStringExplode(input,"|",0));
                    //show_message(fnStringExplode(input,"|",3));
                    clientLobby.shipNameFont = clientLobby.shipFont[real(fnStringExplode(input,"|",3))];
                    
                    clientLobby.spaceshipName = fnStringExplode(input,"|",4);
                    
                    clientLobby.joined = true;
                    clientLobby.joining = false;
                    clientLobby.serverSecondary[3] = "Join Server";
                    clientLobby.alarm[5] = 0;
                    clientLobby.title = "Joined";
                    
                    global.maxCrew = real(fnStringExplode(input,"|",5));
                    clientLobby.userDraw[0] = "0/" + string(global.maxCrew);
                    for (i=1;i<=global.maxCrew;i++) {
                        clientLobby.userDraw[i] = "";
                    }
                    for (i=0;i<global.maxCrew;i++) {
                        global.nameList[i] = "<Empty Slot>";
                    }
                    
                    pingSend = string(global.networkPlayerID) + "|0|" + string(current_time) + "|0";
                    pingBuff = buffer_create(256,buffer_grow,1);
                    buffer_seek(pingBuff,buffer_seek_start,0);
                    buffer_write(pingBuff,buffer_string,pingSend);
                    
                    network_send_packet(playerSend,pingBuff,buffer_tell(pingBuff));
                    
                    
                    
                break;
                case "Password":
                    global.networkPlayerID = real(fnStringExplode(input,"|",0));
                    
                    passwordBuff = buffer_create(256,buffer_grow,1);
                    
                    buffer_seek(passwordBuff,buffer_seek_start,0);
                    buffer_write(passwordBuff,buffer_string,string(global.networkPlayerID) + "|1|" + global.password);
                    
                    network_send_packet(playerSend,passwordBuff,buffer_tell(passwordBuff));
                    
                break;
                case "Incorrect":
                    clientLobby.joining = false;
                    clientLobby.serverSecondary[3] = "Join Server";
                    clientLobby.alarm[5] = 0;
                    clientLobby.title = "Join Failed: Incorrect Password";
                    instance_destroy();
                break;
            }
        break;
        case 2:
            
        break;
    }
}
