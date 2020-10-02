/// @desc Game pause
if (G.keyPause[PRESSED])
{
	G.gamePaused = !G.gamePaused;
	
	if (G.gamePaused)
	{
		with (all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		image_speed = gamePausedImageSpeed;
	}
}