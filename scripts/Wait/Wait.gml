function scr_playerStateWait(){
	
	if (state_new)
	{
		scr_setSprite(spr_playerE, spr_playerN, spr_playerS, DEFAULT_IMAGE_SPEED);
	}
	
	scr_playerAnimateSprite(NO_INPUT);
	scr_applyFriction(waitFriction);

	if (G.inputDirectionKeyboard != NO_INPUT)	scr_stateSwitch("run");
	
	if (G.keyInteract[PRESSED])
	{
		var _activateX = x + lengthdir_x(10, faceDirection)
		var _activateY = y + lengthdir_y(10, faceDirection)
		var _activateSize = 4;
		var _activateList = ds_list_create();
		activate = noone;
		var _entitiesFoundNumber = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,
			_activateX + _activateSize,
			_activateY + _activateSize,
			obj_entityParent,
			false,
			true,
			_activateList,
			true
		);
		
		while (_entitiesFoundNumber > 0)
		{
			var _check = _activateList[| --_entitiesFoundNumber];
			if (_check.entityActivateScript != noone)
			{
				activate = _check;
				break;
			}
		}
		
		ds_list_destroy(_activateList);
		
		if (activate != noone)
		{
			scr_scriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		}
	}
		
	if (G.keyAttack[PRESSED]) scr_stateSwitch("attackBasic1");
}