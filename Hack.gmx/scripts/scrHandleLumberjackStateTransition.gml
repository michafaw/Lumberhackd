/// scrHandleLumberjackStateTransition

if(state != newState) {
    // State transitions
    if(state == IDLE) {
        if(newState == WALKING) {
            show_debug_message("Idle to walking.");
        }
    } else if(state == WALKING) {
        if(newState == IDLE) {
            show_debug_message("Walking to idle.");
        }
    } else {
        show_debug_message("Unhandled state transition. " + string(state) + " to " + string(newState));
    }
    
    // State entry functions
    if(newState == WALKING) {
        show_debug_message("Entering walking state.");
        destX = irandom(room_width - 50) + 25;
        destY = irandom(room_height - 50) + 25;
        movementSpeed = random(2.0) + 2.0;
    } else if(newState == IDLE) {
        alarm[0] = irandom(maximumIdleTime - minimumIdleTime) + minimumIdleTime;
    }
    
    
    // Update the current state
    state = newState;
}
