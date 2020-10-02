/// @description scr_setOptionVariableStrings, points to variables for option menu.
function scr_setOptionVariableStrings() {

	optionVariableNameArray[1] = ": " + string(round(G.MusicVolume*10)); // MUSIC VOLUME 
	optionVariableNameArray[0] = ": " + string(round(G.SEVolume*10)); // SE VOLUME 


}
