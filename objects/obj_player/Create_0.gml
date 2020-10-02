// State machine

scr_stateMachineCreate();

scr_stateAdd("wait", scr_playerStateWait);
scr_stateAdd("run", scr_playerStateRun);
scr_stateAdd("interact", scr_playerStateInteract);
scr_stateAdd("attackBasic1", scr_playerStateAttackBasic1);
scr_stateAdd("attackBasic2", scr_playerStateAttackBasic2);

scr_stateBeginIn("wait");

// Movement properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;

waitFriction		= .5;

runMaxSpeed			= 4;
runFriction			= .5;
runAccel			= .5;

// Image properties

faceDirection = EAST;
spriteE = spr_playerE;
spriteN = spr_playerN;
spriteS = spr_playerS;
attackAnimationLength = 10;
attackAnimationTransitionRange = .3; // This value is used to times the attackAnimationLength

// ETC

onWall = 0; //1 right, -1 left
hitByAttack = -1;