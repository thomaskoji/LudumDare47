function scr_screenShake(Magnitude,Length)
{
	with (G.iCamera)
	{
		if (argument0 < shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLength = argument1;
		}
	}
}