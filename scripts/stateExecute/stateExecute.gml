/// @description this script executes current state
function scr_stateExecute()
{
	if (!G.gamePaused)
		script_execute(stateScript);
}
