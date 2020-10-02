 /// @description apply x movement
/// @param Hdir,Vdir,accel,maxSpeed,fric,...overMaxFriction
function scr_applyMovement()
{
	var _Hdir = argument[0];
	var _Vdir = argument[1];
	var _accel = argument[2];
	var _maxSpeed = argument[3];
	var _fric = argument[4];
	var _overMaxFriction = NULLVALUE;
	if (argument_count > 5)
	{_overMaxFriction = argument[5];}

	if (_Hdir != 0)
	{
		// X AXIS
		if (abs(velocity[XAXIS]) < _maxSpeed or 
			(abs(velocity[XAXIS])) == _maxSpeed and 
			_Hdir = sign(velocity[XAXIS]) * -1)
		{velocity[XAXIS] += _Hdir * _accel;}
	
		if (abs(velocity[XAXIS]) > _maxSpeed)
		{
			velocity[XAXIS] = sign(velocity[XAXIS]) * _maxSpeed;
		}
	}
	else
	{
		scr_applyXFriction(_fric);
	}
	
	if (_Vdir != 0)
	{
		// Y AXIS
		if (abs(velocity[YAXIS]) < _maxSpeed or 
			(abs(velocity[YAXIS])) == _maxSpeed and 
			_Vdir = sign(velocity[YAXIS]) * -1)
		{velocity[YAXIS] += _Vdir * _accel;}
	
		if (abs(velocity[YAXIS]) > _maxSpeed)
		{
			velocity[YAXIS] = sign(velocity[YAXIS]) * _maxSpeed;
		}
	}
	else
	{
		scr_applyYFriction(_fric);
	}
}
