 function scr_slimeStateRun(){
	if (state_new)
	{
		scr_setSprite(spr_slimeRunE, spr_slimeRunN, spr_slimeRunS, DEFAULT_IMAGE_SPEED);
	}
	
	scr_enemyAnimateSprite();

	faceDirection = point_direction(obj_player.x, obj_player.y, x, y);
	velocity[XAXIS] = lengthdir_x(enemySpeed, faceDirection);
	velocity[YAXIS] = lengthdir_y(enemySpeed, faceDirection);

	if (instance_exists(obj_player) and (point_distance(x, y, obj_player.x, obj_player.y) >= runCheckRadius + 50))
	{
		scr_stateSwitch("wait");
	}

}