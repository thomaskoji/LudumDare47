function scr_playerStateAttackBasic2(){
	
	if (animationHitFrame(attackAnimationLength))
	{
		scr_setSprite(spr_playerBasicKatanaE, spr_playerBasicKatanaN, spr_playerBasicKatanaS, DEFAULT_IMAGE_SPEED, attackAnimationLength);
		scr_playerAnimateSprite(G.faceDirectionMouse);
		scr_stopMovement();
	}
	
	if (scr_animationHitFrame(attackAnimationLength * 2)) scr_stateSwitch("wait");
}