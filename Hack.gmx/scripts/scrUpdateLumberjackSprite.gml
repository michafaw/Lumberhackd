///scrUpdateLumberjackSprite(lumberjackNumber)

var lumberjackNumber = argument0;

if(lumberjackNumber == 1) {
    if(direction < 60 || direction > 300) {
        // Right
        sprite_index = sprLumberjackRight1;
        image_xscale = abs(image_xscale);
    } else if(direction > 60 && direction < 120) {
         // Up
        sprite_index = sprLumberjackBack1;
    } else if(direction > 120 && direction < 240) {
        // Left
        sprite_index = sprLumberjackRight1;
        image_xscale = -1 * abs(image_xscale);
    } else {
        // Down
        sprite_index = sprLumberjackFront1;
    }
} else {
    if(direction < 60 || direction > 300)
        sprite_index = sprLumberackRight1;
    else if(direction > 60 && direction < 120)
        sprite_index = sprLumberjackBack1;
    else if(direction > 120 && direction < 240)
        sprite_index = sprLumberjackBack1;
    else
        sprite_index = sprLumberjackFront1;
}
