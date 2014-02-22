///addPlayer(position,name);
pos = argument0;
name = argument1;
for (IDCount = global.networkPlayers - 1;IDCount>=pos;IDCount--) {
    show_message("Yo");
    global.nameList[IDCount] = global.nameList[IDCount - 1];
    global.nameList[pos] = name;
}
