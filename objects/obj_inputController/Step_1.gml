// Mouse update control

G.mouseCordinate[XAXIS] = G.iCamera.x - RESOLUTION_W * .5 + mouse_x;
G.mouseCordinate[YAXIS] = G.iCamera.y - RESOLUTION_H * .5 + mouse_y;
G.inputDirectionMouse = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
G.inputCardinalDirectionMouse = G.inputDirectionMouse - G.inputDirectionMouse mod 45;


// Face direction
switch(G.inputCardinalDirectionMouse)
{
	case EAST:
	case SOUTH_EAST: 
		G.faceDirectionMouse = EAST;
		break;
			
	case NORTH_WEST:
	case WEST:
		G.faceDirectionMouse = WEST;
		break;
			
	case NORTH:
	case NORTH_EAST:
		G.faceDirectionMouse = NORTH;
		break;
			
	case SOUTH:
	case SOUTH_WEST:
		G.faceDirectionMouse = SOUTH;
		break;
}

// Keyboard update control

G.keyUp[PRESSED] = keyboard_check_pressed(wKey);
G.keyUp[RELEASED] = keyboard_check_released(wKey);
G.keyUp[HELD] = keyboard_check(wKey);

G.keyDown[PRESSED] = keyboard_check_pressed(sKey);
G.keyDown[RELEASED] = keyboard_check_released(sKey);
G.keyDown[HELD] = keyboard_check(sKey);

G.keyLeft[PRESSED] = keyboard_check_pressed(aKey);
G.keyLeft[RELEASED] = keyboard_check_released(aKey);
G.keyLeft[HELD] = keyboard_check(aKey);

G.keyRight[PRESSED] = keyboard_check_pressed(dKey);
G.keyRight[RELEASED] = keyboard_check_released(dKey);
G.keyRight[HELD] = keyboard_check(dKey);
	
G.keyPause[PRESSED] = keyboard_check_pressed(escapeKey);
G.keyPause[RELEASED] = keyboard_check_released(escapeKey);
if(keyboard_check(escapeKey))
	G.keyPause[HELD]++;
else
	G.keyPause[HELD]=0;
	
G.keyInteract[PRESSED] = keyboard_check_pressed(eKey);
G.keyInteract[RELEASED] = keyboard_check_released(eKey);
if(keyboard_check(eKey))
	G.keyInteract[HELD]++;
else
	G.keyInteract[HELD]=0;

G.keyAttack[PRESSED] = mouse_check_button_pressed(mouseButton1);
G.keyAttack[RELEASED] = mouse_check_button_released(mouseButton1);
if(mouse_check_button(mouseButton1))	
	G.keyAttack[HELD]++;
else
	G.keyAttack[HELD]=0;

//--------------------- input direction code ------------------------//
G.inputHorizontalTotal = G.keyRight[HELD] - G.keyLeft[HELD];
G.inputVerticalTotal	= G.keyDown[HELD] - G.keyUp[HELD];

if(point_distance(0,0,G.inputHorizontalTotal,G.inputVerticalTotal) > 0)
	G.inputDirectionKeyboard = point_direction(0,0,G.inputHorizontalTotal,G.inputVerticalTotal);
else
	G.inputDirectionKeyboard = NO_INPUT;
// Face direction	
switch(G.inputDirectionKeyboard)
{
	case EAST:
	case NORTH_EAST:
	case SOUTH_EAST: 
		G.faceDirectionKeyboard = EAST;
		break;
			
	case NORTH_WEST:
	case WEST:
	case SOUTH_WEST:
		G.faceDirectionKeyboard = WEST;
		break;
			
	case NORTH:
		G.faceDirectionKeyboard = NORTH;
		break;
			
	case SOUTH:
		G.faceDirectionKeyboard = SOUTH;
		break;
}