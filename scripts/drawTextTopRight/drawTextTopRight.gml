// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drawTextTopRight()
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_set_colour($e4924f);
	draw_set_font(fnt_debug);
	draw_set_alpha(1);
	var _debugString = "";
	if(argument_count > 0)	_debugString += "1: " + string(argument0) + "\n";
	if(argument_count > 1)	_debugString += "2: " + string(argument1) + "\n";
	if(argument_count > 2)	_debugString += "3: " + string(argument2) + "\n";
	if(argument_count > 3)	_debugString += "4: " + string(argument3) + "\n";
	if(argument_count > 4)	_debugString += "5: " + string(argument4) + "\n";
	draw_text(RESOLUTION_W - 5,5, _debugString);
}