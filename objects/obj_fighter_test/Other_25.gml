//CHECK FOR DIALOGUES

var handler = instance_create_depth(0, 0, 99, obj_DialogueHandler);
Dialogue = instance_create_depth(x + 50, y , -99, obj_TextElement);

Dialogue.TextToDraw = "Test 1";
Dialogue.TextInQueue[0] = "Test 2";
Dialogue.TextInQueue[1] = "Test 3";



