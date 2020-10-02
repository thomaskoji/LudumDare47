// Inherit the parent event
event_inherited();	

// Instantiate controll objects
instance_create_depth(0,0,0, obj_inputController);
instance_create_depth(0,0,0, obj_displayController);
instance_create_depth(0,0,0, obj_hudController);
G.iCamera = instance_create_depth(0,0,0, obj_cameraController);


G.gamePaused = false;

layer_set_visible("Collision", false);

room_goto(ROOM_START);