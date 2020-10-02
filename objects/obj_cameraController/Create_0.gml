event_inherited();

camera = view_camera[0];
follow = obj_player;

viewWidthHalf = RESOLUTION_W * .5; //camera_get_view_width(camera) * .5;
viewHeightHalf = RESOLUTION_H * .5; //camera_get_view_height(camera) * .5;

xTo = xstart;
yTo = ystart;

cameraSmoothSpeed = 1;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;