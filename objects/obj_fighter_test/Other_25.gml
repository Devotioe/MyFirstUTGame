

//CHECK FOR DIALOGUES
show_debug_message("checked")
Dialogue = instance_create_depth(x + 50, y , -99, obj_DialogueElement);

Dialogue.TextToDraw = "TEST 1";
Dialogue.TextInQueue[0] = "Test 2";

