event = 0;
dialogue = noone;


function CreateBubbleDialogue(_x, _y){
	text_x = _x;
	text_y = _y;
	dialogue = instance_create_depth(text_x, text_y, -99, obj_TextElement);
	dialogue.IsSpeechBubble = true;
}