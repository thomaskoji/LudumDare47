/// @description applies friction
/// @param friction
function scr_applyFriction() {

	var _fric = argument[0];

	// X AXIS
	if ( velocity[XAXIS] != 0)
	{
		var _oldVelocitySign = sign(velocity[XAXIS]);
	
		velocity[XAXIS] -= _oldVelocitySign * _fric;
	
		if (sign(velocity[XAXIS]) != _oldVelocitySign)
		{
			velocity[XAXIS] = 0;
		}
	}
	
	// Y AXIS
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
