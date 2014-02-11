///drawView(player)

player = argument0;


view_xview[player] = global.playerViewX[player];
view_yview[player] = global.playerViewY[player];

view_wview[player] = global.playerViewWidth[player];
view_hview[player] = global.playerViewHeight[player];

view_xport[player] = global.playerPortX[player];
view_yport[player] = global.playerPortY[player];

view_wport[player] = global.playerPortWidth[player];
view_hport[player] = global.playerPortHeight[player];
if (view_current = player) and global.pause[player] {

    /*draw_set_color(menuColour[player]);
    draw_rectangle(view_xview[player],view_yview[player],view_xview[player] + view_wview[player],view_yview[player] + view_hview[player],0);*/
    draw_background(menu.bkgMainMenu,view_xview[player],view_yview[player]);
    draw_set_color(c_black);
    
    borderWidth = 2;

    draw_rectangle(view_xview[player],view_yview[player],view_xview[player] + borderWidth,view_yview[player] + view_hview[player],0);
    draw_rectangle(view_xview[player],view_yview[player],view_xview[player] + view_wview[player],view_yview[player] + borderWidth,0);
    draw_rectangle(view_wview[player] - borderWidth,view_yview[player],view_wview[player],view_yview[player] + view_hview[player],0);
    draw_rectangle(view_xview[player],view_yview[player] + view_hview[player] - borderWidth,view_xview[player] + view_wview[player],view_yview[player] + view_hview[player],0);
}

