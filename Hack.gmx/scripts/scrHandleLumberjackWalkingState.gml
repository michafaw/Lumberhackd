/// scrHandleLumberjackWalkingState

move_towards_point(destX, destY, movementSpeed);
    if(distance_to_point(destX, destY) < movementSpeed) {
        speed = 0;
        newState = IDLE;
    }
