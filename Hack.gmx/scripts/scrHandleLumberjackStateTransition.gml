/// scrHandleLumberjackStateTransition

if(state != newState) {
    // State exit functions
    if(state == IDLE) {
        alarm[0] = -1;
    }

    // State transitions
    if(state == IDLE) {
        if(newState == WALKING) {
            MFLog("Idle to walking.");
        }
    } else if(state == WALKING) {
        if(newState == IDLE) {
            MFLog("Walking to idle.");
        }
    } else {
        MFLog("Unhandled state transition. " + string(state) + " to " + string(newState));
    }
    
    // State entry functions
    if(newState == WALKING) {
        MFLog("Entering walking state.");
        destX = irandom(room_width - 50) + 25;
        destY = irandom(room_height - 50) + 25;
        movementSpeed = (random(100.0) + 80.0)/room_speed;
        image_speed = 12.0*movementSpeed/room_speed; // 10.0 looks good
        show_debug_message(string(movementSpeed) + ", " + string(image_speed));
    } else if(newState == IDLE) {
        alarm[0] = irandom(maximumIdleTime - minimumIdleTime) + minimumIdleTime;
        sprite_index = 12;
        image_speed = 0;
    }
    
    
    // Update the current state
    state = newState;
}
