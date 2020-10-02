
// Updating destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Updating camera position
x += (xTo - x) / cameraSmoothSpeed;
y += (yTo - y) / cameraSmoothSpeed;

// Keeping camera inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

// Screen shake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);
shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(camera, x - viewWidthHalf, y - viewHeightHalf);
