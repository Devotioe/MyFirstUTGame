function CreateBubbleDialogue(_x, _y){
	text_x = _x;
	text_y = _y;
	Dialogue = instance_create_depth(text_x, text_y, -99, obj_TextElement);
	Dialogue.IsSpeechBubble = true;
	Dialogue.CanAdvance = true;
}