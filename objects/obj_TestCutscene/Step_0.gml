var text_x_offset = 30;
var text_y_offset = 20;
obj_Player.frozen = true;

	if Event = 1 { //camera movement
		if obj_Player_Camera.y > 150 {
			obj_Player_Camera.y -= abs(obj_Player_Camera.y - 150)/20
		}
		if obj_Player_Camera.y - 150 < 0.1 {
			Event = 2;
		}
	}
	if Event = 2 {
		var Box = instance_create_depth(0,0,-100000, obj_Overworld_DialogueBox);
		Dialogue_1 = instance_create_depth(Box.textbox_x + text_x_offset, Box.textbox_y + text_y_offset, -999999, obj_TextElement);
		Dialogue_1.TextToDraw = "* TEST MESSAGE 1.";
		Dialogue_1.TextInQueue[0] = "* TEST MESSAGE 2.";
		Dialogue_1.TextInQueue[1] = "* TEST MESSAGE 3.";
		Event = 3
	}
	if Event = 3 && !instance_exists(Dialogue_1){
			Event = 4
		}
	if Event = 4{
		obj_Player_Camera.y += abs(obj_Player_Camera.y - obj_Player.y)/20
	
		if abs(obj_Player_Camera.y - obj_Player.y) < 0.1 {
			show_debug_message("destroyed");
			instance_destroy(self)
			obj_Player.frozen = false;
		}
	}



