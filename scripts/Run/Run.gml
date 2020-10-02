function scr_playerStateRun(){
	
	if (state_new)
	{
		scr_setSprite(spr_playerE, spr_playerN, spr_playerS, DEFAULT_IMAGE_SPEED);
	}

	scr_playerAnimateSprite(G.faceDirectionKeyboard);
	scr_applyMovement(G.inputHorizontalTotal, G.inputVerticalTotal, runAccel, runMaxSpeed, runFriction);

	if(velocity[XAXIS] == 0 and velocity[YAXIS] == 0 and G.inputDirectionKeyboard == NO_INPUT)		scr_stateSwitch("wait");
		
	if(G.keyAttack[PRESSED]) scr_stateSwitch("attackBasic1");
}