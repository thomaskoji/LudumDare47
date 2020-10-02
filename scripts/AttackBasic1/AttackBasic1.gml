function scr_playerStateAttackBasic1(){
	
	if (state_new)
	{
		scr_setSprite(spr_playerBasicKatanaE, spr_playerBasicKatanaN, spr_playerBasicKatanaS, DEFAULT_IMAGE_SPEED);
		scr_playerAnimateSprite(G.faceDirectionMouse);
		scr_stopMovement();
	}

	if (scr_animationHitFrameRange(attackAnimationLength * attackAnimationTransitionRange, attackAnimationLength))
	{
		if (G.keyAttack[PRESSED]) scr_stateSwitch("attackBasic2");
	}
	
	if (scr_animationHitFrame(attackAnimationLength)) scr_stateSwitch("wait");
}