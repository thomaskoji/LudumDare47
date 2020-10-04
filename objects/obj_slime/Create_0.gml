event_inherited();

scr_stateAdd("wait", scr_slimeStateWait);
scr_stateAdd("run", scr_slimeStateRun);
scr_stateAdd("die", scr_slimeStateDie);

scr_stateBeginIn("wait");

spriteE = spr_slimeIdleE;
spriteN = spr_slimeIdleN;
spriteS = spr_slimeIdleS;

runCheck = 0;
runCheckDuration = 5;
runCheckRadius = 200;

hp = 1;