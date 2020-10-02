///@arg spriteE
///@arg spriteN
///@arg spriteS
///@arg imageSpeed

function scr_setSprite(_spriteE, _spriteN, _spriteS, _imageSpeed){
	spriteE = _spriteE;
	spriteN = _spriteN;
	spriteS = _spriteS;
	image_speed = _imageSpeed;
	
	if(argument_count > 4)	image_index = argument[4];
	else image_index = 0;
}