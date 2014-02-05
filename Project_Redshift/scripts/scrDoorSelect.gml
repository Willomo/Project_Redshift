if(self.dir!=""){
    switch (self.dir){
        case "Up":
            if(collision_rectangle(self.x-(2*self.sprite_width), self.y+(self.sprite_height/2), self.x+(3*self.sprite_width), self.y-(1.5*self.sprite_height), objDoorParent, false, false)!=noone){
                 global.selected1=collision_rectangle(self.x-(2*self.sprite_width), self.y-(self.sprite_height/2), self.x+(3*self.sprite_width), self.y-(2.5*self.sprite_height), objDoorParent, false, false)
            } else {
                global.selected1=noone;
            }
        break;
        
        case "Down":
            if(collision_rectangle(self.x-(2*self.sprite_width), self.y+(self.sprite_height/2), self.x+(3*self.sprite_width), self.y+(2.5*self.sprite_height), objDoorParent, false, false)!=noone){
                global.selected1=collision_rectangle(self.x-(2*self.sprite_width), self.y+(self.sprite_height/2), self.x+(3*self.sprite_width), self.y+(2.5*self.sprite_height), objDoorParent, false, false)   
            } else {
                global.selected1=noone;
            }
        break;
        
        case "Left":
            if(collision_rectangle(self.x+(self.sprite_width/2), self.y-(2*self.sprite_height), self.x-(1.5*self.sprite_width), self.y+(3*self.sprite_height), objDoorParent, false, false)!=noone){
                global.selected1=collision_rectangle(self.x+(self.sprite_width/2), self.y-(2*self.sprite_height), self.x-(1.5*self.sprite_width), self.y+(3*self.sprite_height), objDoorParent, false, false)
            } else {
                global.selected1=noone;
            }
        break;
        
        case "Right":
            if(collision_rectangle(self.x+(self.sprite_width/2), self.y-(2*self.sprite_height), self.x+(2*self.sprite_width), self.y+(3*self.sprite_height), objDoorParent, false, false)!=noone){
                global.selected1=collision_rectangle(self.x+(self.sprite_width/2), self.y-(2*self.sprite_height), self.x+(2*self.sprite_width), self.y+(3*self.sprite_height), objDoorParent, false, false)   
            } else {
                global.selected1=noone;
            }
        break;
    }
}