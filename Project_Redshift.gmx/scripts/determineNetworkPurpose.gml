///determineNetworkPurpose(input,id,playerID)
//Format for input
input = argument0;
playerSend = argument1;
playerSendID = argument2;
if input != "" {
    purposeCode = real(fnStringExplode(input,"|",1));
    switch purposeCode {
       case 0:
            //Ping
            hold = fnStringExplode(input,"|",2);
            pingSend = string(playerSendID) + "|0|" + hold;
            ping[playerSend] = real(fnStringExplode(input,"|",3));
                       
            pingBuff = buffer_create(256,buffer_grow,1);
            buffer_seek(pingBuff,buffer_seek_start,0);
            buffer_write(pingBuff,buffer_string,pingSend);
            
            
            network_send_packet(playerSend,pingBuff,buffer_tell(pingBuff));
            
       break;
       case 1:
            if global.password != "" {
                clientPassword = fnStringExplode(input,"|",2);
            } else {
                clientPassword = "";
            }
            if clientPassword = global.password {
                joinResponse = buffer_create(256,buffer_grow,1);
                sendResponse = string(playerSendID) + "|1|Confirm|" + string(serverLobby.fontSend) + "|" + serverLobby.spaceshipName + "|" + string(global.maxCrew);
                
                
                buffer_seek(joinResponse,buffer_seek_start,0);
                buffer_write(joinResponse,buffer_string,sendResponse);
                network_send_packet(playerSend,joinResponse,buffer_tell(joinResponse));
                //playerSock[playerSend] = ds_map_find_value(async_load,"socket");
                connected[playerSend] = true;
                joinResponse = buffer_create(256,buffer_grow,1);
                buffer_seek(joinResponse,buffer_seek_start,0);
                buffer_write(joinResponse,buffer_string,response);
                
                network_send_packet(playerSend,joinResponse,buffer_tell(joinResponse));
            } else {
                joinResponse = buffer_create(256,buffer_grow,1);
                buffer_seek(joinResponse,buffer_seek_start,0);
                buffer_write(joinResponse,buffer_string,string(playerSendID) + "|1|Incorrect");
                
                network_send_packet(playerSend,joinResponse,buffer_tell(joinResponse));
            }
        break;
        case 2:
            for (playerCount=0;playerCount<array_length_1d(playerSock);playerCount++) {
                addPlayer(global.networkPlayers,fnStringExplode(input,"|",2));
                global.networkPlayers++;
                if connected[playerCount] {
                    playerNameSend = buffer_create(256,buffer_grow,1);
                    buffer_seek(playerNameSend,buffer_seek_start,0);
                    buffer_write(playerNameSend,buffer_string,string(playerCount) + "|2|" + fnStringExplode(input,"|",2));
                    
                    network_send_packet(playerSock[playerCount],joinResponse,buffer_tell(joinResponse));
                }
            }
        break;
    }
}
