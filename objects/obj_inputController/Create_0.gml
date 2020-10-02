event_inherited();

// Mouse input
G.mouseCordinate[XAXIS] = mouse_x;
G.mouseCordinate[YAXIS] = mouse_y;
G.inputDirectionMouse = NO_INPUT;
G.inputCardinalDirectionMouse = NO_INPUT;
G.faceDirectionMouse = EAST;

// Keyboard input
G.inputDirectionKeyboard = NO_INPUT;
G.inputHorizontalTotal = 0;
G.inputVerticalTotal = 0;
G.faceDirectionKeyboard = EAST;

#region Control variables

G.keyUp = [0,0,0];
G.keyDown = [0,0,0];
G.keyLeft = [0,0,0];
G.keyRight = [0,0,0];

G.keyPause = [0,0,0];
G.keyInteract = [0,0,0];

G.keyAttack = [0,0,0];

#endregion

#region Key properties

aKey		= ord("A");
bKey		= ord("B");
cKey		= ord("C");
dKey		= ord("D");
eKey		= ord("E");
fKey		= ord("F");
gKey		= ord("G");
hKey		= ord("H");
iKey		= ord("I");
jKey		= ord("J");
kKey		= ord("K");
lKey		= ord("L");
mKey		= ord("M");
nKey		= ord("N");
oKey		= ord("O");
pKey		= ord("P");
qKey		= ord("Q");
rKey		= ord("R");
sKey		= ord("S");
tKey		= ord("T");
uKey		= ord("U");
vKey		= ord("V");
wKey		= ord("W");
xKey		= ord("X");
yKey		= ord("Y");
zKey		= ord("Z");

escapeKey	= vk_escape;

mouseButton1 = mb_left;
mouseButton2 = mb_right;

#endregion

