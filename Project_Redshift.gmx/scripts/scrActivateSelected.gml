if(keyboard_check(activateKey)){
    selectedParent=object_get_parent(global.selected1.object_index)
    if(selectedParent==objDoorParent){
        
        with(global.selected1){
            image_speed=1;
            image_index=5;
        }
        global.selected1=noone;
    }
}
