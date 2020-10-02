function scr_playerStateInteract(){
	
	activate = instance_position(x, y - 20, obj_entityParent);
		
	if (activate != noone and activate.entityActivateScript != -1)
	{	
		scr_scriptExecuteArray(activate.entityActivateScript,activate.entityActivateArgs);
	} // insert state switch here
}