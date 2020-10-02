function scr_applyYFriction() {

	var _fric = argument[0];
	
	if ( velocity[YAXIS] != 0)
	{
		var _oldVelocitySign = sign(velocity[YAXIS]);
	
		velocity[YAXIS] -= _oldVelocitySign * _fric;
	
		if (sign(velocity[YAXIS]) != _oldVelocitySign)
		{
			velocity[YAXIS] = 0;
		}
	}
}
