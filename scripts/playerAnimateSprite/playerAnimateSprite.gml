///@arg faceDirDevice

function scr_playerAnimateSprite(_inputDir){
	if(_inputDir != NO_INPUT)
	{
		switch (_inputDir)
		{
			case EAST:
				faceDirection = EAST;
				break;
		
			case WEST:
				faceDirection = WEST;
				break;
		
			case NORTH:
				faceDirection = NORTH;
				break;
		
			case SOUTH:
				faceDirection = SOUTH;
				break;
		}
	}
	
	// set sprite according to the face direction
	switch (faceDirection)
	{
		case EAST:
			sprite_index = spriteE;
			image_xscale = 1;
			break;
		
		case WEST:
			sprite_index = spriteE;
			image_xscale = -1;
			break;
		
		case NORTH:
			sprite_index = spriteN;
			image_xscale = 1;
			break;
		
		case SOUTH:
			sprite_index = spriteS;
			image_xscale = 1;
			break;
	}
}