///scrUpdateLumberjackSprite(lumberjackNumber)

var lumberjackNumber = argument0;

if(lumberjackNumber == 1) {
    if(direction < 45 || direction > 315) {
        // Right
        if(state == IDLE) {
            sprite_index = sprLumberjackFrontIdle1;
        } else if(state == WALKING) {
            sprite_index = sprLumberjackRight1;
        }
    } else if(direction > 45 && direction < 135) {
         // Up
         if(state == IDLE)
            sprite_index = sprLumberjackFrontIdle1;
         else if(state == WALKING)
            sprite_index = sprLumberjackBack1;
    } else if(direction > 135 && direction < 225) {
        // Left
        if(state == IDLE) {
            sprite_index = sprLumberjackFrontIdle1;
        } else if(state == WALKING) {
            sprite_index = sprLumberjackLeft1;
        }
    } else {
        // Down
        if(state == IDLE)
            sprite_index = sprLumberjackFrontIdle1;
        else if(state == WALKING)
            sprite_index = sprLumberjackFront1;
    }
} else {
    show_debug_message("Incorrect lumberjack sprite number");
}
