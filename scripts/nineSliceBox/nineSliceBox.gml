///@arg sprite
///@arg x1
///@arg y1
///@arg x2
///@arg y2

function scr_nineSliceBox(_sprite, _x1, _y1, _x2, _y2){
	var _size = sprite_get_width(_sprite) / 3;
	var _width = _x2 - _x1;
	var _height = _y2 - _y1;
	
	// top left
	draw_sprite_part(_sprite, 0, 0, 0, _size, _size, _x1, _y1);
	
	// top right
	draw_sprite_part(_sprite, 0, _size * 2, 0, _size, _size, _x1 + _width - _size, _y1);
	
	// bottom left
	draw_sprite_part(_sprite, 0, 0, _size * 2, _size, _size, _x1, _y1 + _height - _size);
	
	// bottom right
	draw_sprite_part(_sprite, 0, _size * 2, _size * 2, _size, _size, _x1 + _width - _size, _y1 + _height - _size);
	
	// left
	draw_sprite_part_ext(_sprite, 0, 0, _size, _size, 1, _x1, _y1 + _size, 1, _height - (_size * 2), c_white, 1);
	
	// right
	draw_sprite_part_ext(_sprite, 0, _size * 2, _size, _size, 1, _x1 + _width - _size, _y1 + _size, 1, _height - (_size * 2), c_white, 1);
	
	// top
	draw_sprite_part_ext(_sprite, 0, _size, 0, 1, _size, _x1 + _size, _y1, _width - (_size * 2) , 1, c_white, 1);
	
	// bottom
	draw_sprite_part_ext(_sprite, 0, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _height - _size, _width - (_size * 2) , 1, c_white, 1);

	// middle
	draw_sprite_part_ext(_sprite, 0, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _width - (_size * 2), _height - (_size * 2), c_white, 1);
}