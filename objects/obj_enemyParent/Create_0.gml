event_inherited();
// State machine

scr_stateMachineCreate();

// Movement properties

velocity[YAXIS]		= 0;
velocity[XAXIS]		= 0;
xTo = xstart;
yTo = ystart;

// Image properties

faceDirection = EAST;
spriteE = -1;
spriteN = -1;
spriteS = -1;

// etc
waitDuration = 60;
wait = 0;