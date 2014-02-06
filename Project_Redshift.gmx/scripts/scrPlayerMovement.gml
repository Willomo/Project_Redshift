//For some reason, this makes the player move up by default
switch(keyboard_key){
    case global.upKey1:
        self.image_index=0;
        self.dir="Up"
        if(collision_rectangle(self.x,self.y,self.x+self.sprite_width-1,self.y-self.movementSpeed,objWallParent,false,false)==noone){
            if(self.movementSpeed<maxSpeed){
                self.movementSpeed+=accelerationSpeed
            }
            self.y-=self.movementSpeed
        }else if(collision_rectangle(self.x,self.y,self.x+self.sprite_width-1,self.y-1,objWallParent,false,false)==noone){
            self.y-=1
        }
    break;
    
    case global.downKey1:
    self.image_index=2;
        self.dir="Down"
        if(collision_rectangle(self.x,self.y+movementSpeed,self.x+self.sprite_width-1,self.y+self.sprite_height+movementSpeed,objWallParent,false,false)==noone){
            if(self.movementSpeed<maxSpeed){
                self.movementSpeed+=accelerationSpeed;
            }
            self.y+=self.movementSpeed
        }else if(collision_rectangle(self.x,self.y+1,self.x+self.sprite_width-1,self.y+self.sprite_height,objWallParent,false,false)==noone){
            self.y+=1
        }
    break;
    
    case global.leftKey1:
        self.image_index=3;
        self.dir="Left"
        if(collision_rectangle(self.x,self.y,self.x-movementSpeed,self.y+self.sprite_height-1,objWallParent,false,false)==noone){
            if(self.movementSpeed<maxSpeed){
                self.movementSpeed+=accelerationSpeed
            }
            self.x-=self.movementSpeed; 
        }else if(collision_rectangle(self.x,self.y,self.x-1,self.y+self.sprite_height-1,objWallParent,false,false)==noone){
            self.x-=1
        }
    break;
    
    case global.rightKey1:
        self.image_index=1;
        self.dir="Right";
        if(collision_rectangle(self.x+movementSpeed, self.y, self.x+self.sprite_width+movementSpeed,self.y+self.sprite_height-1,objWallParent,false,false)==noone){
            if(self.movementSpeed<maxSpeed){
                self.movementSpeed+=accelerationSpeed
            }
            self.x+=self.movementSpeed; 
        }else if(collision_rectangle(self.x+1,self.y,self.x+self.sprite_width,self.y+self.sprite_height-1,objWallParent,false,false)==noone){
            self.x+=1
        }
    break;
    
    case false:
        if(movementSpeed>decelerationSpeed){
            switch(self.dir){
                case "Up":
                    if(collision_rectangle(self.x,self.y,self.x+self.sprite_width-1,self.y-self.movementSpeed,objWallParent,false,false)==noone){
                        self.y-=self.movementSpeed
                    }
                break;
                
                case "Down":
                    if(collision_rectangle(self.x,self.y+movementSpeed,self.x+self.sprite_width-1,self.y+self.sprite_height+movementSpeed,objWallParent,false,false)==noone){
                        self.y+=self.movementSpeed
                    }
                break;
                
                case "Left":
                    if(collision_rectangle(self.x,self.y,self.x-movementSpeed,self.y+self.sprite_height-1,objWallParent,false,false)==noone){
                        self.x-=self.movementSpeed
                    }
                break;
                
                case "Right":
                    if(collision_rectangle(self.x+movementSpeed, self.y, self.x+self.sprite_width+movementSpeed,self.y+self.sprite_height-1,objWallParent,false,false)==noone){
                        self.x+=self.movementSpeed
                    }
                break;
            }
            movementSpeed-=decelerationSpeed;
        }else{
            movementSpeed=0
        }
    break;
}
