// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_wallCheck(){
	onWall = place_meeting(x+1,y,obj_solid) or 
			 place_meeting(x-1,y,obj_solid) or 
			 place_meeting(x, y + 1, obj_solid) or 
			 place_meeting(x, y - 1, obj_solid);
}