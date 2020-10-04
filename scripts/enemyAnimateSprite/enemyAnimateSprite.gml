function scr_enemyAnimateSprite(){
	
	faceDirection -= faceDirection mod 45;
	
	switch (faceDirection)
	{
		case EAST:
		case SOUTH_EAST:
			sprite_index = spriteE;
			image_xscale = 1;
			break;
		
		case WEST:
		case NORTH_WEST:
			sprite_index = spriteE;
			image_xscale = -1;
			break;
		
		case NORTH:
		case NORTH_EAST:
			sprite_index = spriteN;
			image_xscale = 1;
			break;
		
		case SOUTH:
		case SOUTH_WEST:
			sprite_index = spriteS;
			image_xscale = 1;
			break;
	}
}