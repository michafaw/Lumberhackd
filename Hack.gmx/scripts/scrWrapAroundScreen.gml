/// scrWrapAroundScreen

var horizontalFudgeFactor = 20.0;
var verticalFudgeFactor = 20.0
if(x > room_width + horizontalFudgeFactor ||
    x < 0 - horizontalFudgeFactor)
    x = (x + room_width) % room_width;
if(y > room_height + verticalFudgeFactor ||
    y < 0 - verticalFudgeFactor)
    y = (y + room_height) % room_height;
