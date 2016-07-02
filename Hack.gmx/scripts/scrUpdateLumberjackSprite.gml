///scrUpdateLumberjackSprite(lumberjackNumber)

var lumberjackNumber = argument0;

if(lumberjackNumber == 1) {
    if(direction < 45 || direction > 315) {
        // Right
        sprite_index = sprLumberjackRight1;
        image_xscale = abs(image_xscale);
    } else if(direction > 45 && direction < 135) {
         // Up
        sprite_index = sprLumberjackBack1;
    } else if(direction > 135 && direction < 225) {
        // Left
        sprite_index = sprLumberjackRight1;
        image_xscale = -1 * abs(image_xscale);
    } else {
        // Down
        sprite_index = sprLumberjackFront1;
    }
} else {
    show_debug_message("Incorrect lumberjack sprite number");
}
