function scr_slimeStateWait(){
	if (state_new)
	{
		scr_setSprite(spr_slimeIdleE, spr_slimeIdleN, spr_slimeIdleS, DEFAULT_IMAGE_SPEED);
	}
	
	scr_enemyAnimateSprite();
	
	if ((x == xTo) and (y == yTo))
	{
		velocity[XAXIS] = 0;
		velocity[YAXIS] = 0;
	}
	
	if (++wait >= waitDuration)
	{
		wait = 0;
		faceDirection = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
		xTo = x + lengthdir_x(enemyWanderDistance, faceDirection);
		yTo = y + lengthdir_y(enemyWanderDistance, faceDirection);
	}
	else
	{
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		faceDirection = point_direction(x, y, xTo, yTo);
		velocity[XAXIS] = lengthdir_x(_speedThisFrame, faceDirection);
		velocity[YAXIS] = lengthdir_y(_speedThisFrame, faceDirection);
	}
	
	if (++runCheck >= runCheckDuration)
	{
		runCheck = 0;
		if (instance_exists(obj_player) and (point_distance(x, y, obj_player.x, obj_player.y) <= runCheckRadius))
		{
			scr_stateSwitch("run");
		}
	}
}