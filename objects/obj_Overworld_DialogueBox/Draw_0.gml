textbox_x = camera_get_view_x(view_camera[0]) + 30;
textbox_y = camera_get_view_y(view_camera[0]) + y_offset;

var text_x_offset = 30;
var text_y_offset = 20;

//Draw Box
draw_set_color(c_white)
draw_rectangle(textbox_x , textbox_y, textbox_x + 580, textbox_y + 150, false)
draw_set_color(c_black)
draw_rectangle(textbox_x + 5, textbox_y + 5, textbox_x + 575, textbox_y + 145, false)
//////////

//The box destroy itself when text is gone.
//And make player moveable again.
if !instance_exists(obj_TextElement){
	instance_destroy(self)
	obj_Player.frozen = false;
}else{ //make sure the text stay in box
	obj_TextElement.x = textbox_x + text_x_offset;
	obj_TextElement.y = textbox_y + text_y_offset;
}


