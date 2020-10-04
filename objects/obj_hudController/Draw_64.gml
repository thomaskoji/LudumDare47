draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour($e4924f);
draw_set_font(fnt_debug);

#region debug string

if(room = rm_demo)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	var _debugString = "";
	if(instance_exists(obj_player))
	{
		//_debugString += "FPS: " + string(fps) + "\n";
		//_debugString += "State: " + string(obj_player.state) + "\n";
		//_debugString += "X: " + string(obj_player.x) + "\n";
		//_debugString += "Y: " + string(obj_player.y) + "\n";
		//_debugString += "faceDir " + string(obj_player.faceDirection) + "\n";
		//_debugString += "imgIndex " + string(obj_player.image_index) + "\n";
		//_debugString += "mouseX " + string(G.mouseCordinate[XAXIS]) + "\n";
		//_debugString += "mouseY " + string(G.mouseCordinate[YAXIS]) + "\n";
		//_debugString += "mouseDir " + string(G.inputDirectionMouse) + "\n";
		//_debugString += "mouseCardinalDir " + string(G.inputCardinalDirectionMouse) + "\n";
		//_debugString += "keyInputDir: " + string(G.inputDirectionKeyboard) + "\n";
		//_debugString += "keyFaceDir: " + string(G.faceDirectionKeyboard) + "\n";
		//_debugString += "mouseFaceDir: " + string(G.faceDirectionMouse) + "\n";
		//_debugString += "FaceDir: " + string(obj_player.faceDirection) + "\n"; 

	}
	draw_set_alpha(1);
	draw_text(5,5, _debugString);
}

#endregion

scr_nineSliceBox(spr_gaugeBG, gaugeX, gaugeY, gaugeX + gaugeW, gaugeY + gaugeH);
scr_nineSliceBox(spr_gauge, gaugeX, gaugeY, gaugeX + gaugeMinimumW + G.currentGauge, gaugeY + gaugeH);