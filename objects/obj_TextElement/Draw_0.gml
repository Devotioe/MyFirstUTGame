// Colour and font
var colour = c_white;
var font = fnt_Normal

var advance = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var skip = keyboard_check_pressed(ord("X"));

// Default positioning
var sentence_x = 0;
var sentence_y = 0;

// Set the parameters for the space between letters and lines, mess with it all you want
var line_spacing = 35;
var letter_spacing = 15;

//For Bubbles
var x_offset = 40;
var y_offset = 8;

if IsSpeechBubble {
	colour = c_black
	line_spacing = 18;
	letter_spacing = 9;
	font = fnt_Battle_Normal_Bubble
	draw_sprite(spr_Bubble, 0, x - x_offset, y - y_offset)
}

// Draws every letter that it has so far
for (var i = 0; i < TextLength; i++) {
	
	if string_char_at(TextToDraw, i + 1) == "~" {
		if string_char_at(TextToDraw, i + 2) == "R"
			colour = c_red;
		if string_char_at(TextToDraw, i + 2) == "O"
			colour = c_orange;
		if string_char_at(TextToDraw, i + 2) == "Y"
			colour = c_yellow;
		if string_char_at(TextToDraw, i + 2) == "G"
			colour = c_lime;
		if string_char_at(TextToDraw, i + 2) == "A"
			colour = c_aqua;
		if string_char_at(TextToDraw, i + 2) == "B"
			colour = c_blue;
		if string_char_at(TextToDraw, i + 2) == "P"
			colour = c_fuchsia;
		if string_char_at(TextToDraw, i + 2) == "D"
			colour = DefaultColour;
		i += 2;
}

draw_set_color(colour);
draw_set_font(font);
	
// New line, use "}&" to include the & symbol otherwise it gets cancelled out
// USAGE: "89 Snowdin Lane&Underground }& Co"

	if (string_char_at(TextToDraw, i + 1) == "&" && string_char_at(TextToDraw, i) != "}") {
		sentence_x = 0;
		sentence_y += line_spacing;
		i += 1;
	}
	
	// Used for text delays. Only use this for some long or creepy sentences.
	// USAGE: "@4You'd be dead where you stand."
	if (string_char_at(TextToDraw, i + 1) == "@") {
		TextDelay = 2 * real(string_char_at(TextToDraw, i + 2));
		if (TextDelay < 2) {
			TextDelay = 2;
		}
		i += 2;
	}
	
	// Draw the letters with the correct spacing, as defined above
	draw_text(x + sentence_x, y + sentence_y, string_char_at(TextToDraw, i + 1));
	sentence_x += letter_spacing; //each letter space after original X every frame
}

if IsWriting{ //quit writing before entering the next block
	if (skip || keyboard_check(ord("C"))){
		if (CanSkip){
			TextLength = string_length(TextToDraw);
			IsWriting = false;
		}
	}
	if (TextLength == string_length(TextToDraw)){
		IsWriting = false;
	}
}

// Sets the number of letters to draw, it ignores everything that we cancelled out above
if IsWriting {
	CurrentDelay += 1; 
	//currentdelay itself is like a speed control, when it is equal or bigger than Textdelay
	//, which is 2, it get reset, and textlength + 1.
	//every 2 frames draw a letter 
	if (CurrentDelay >= TextDelay) {
		CurrentDelay = 0;
		TextLength += 1;
		if (string_char_at(TextToDraw, TextLength) != " " && string_char_at(TextToDraw, TextLength) != "." && string_char_at(TextToDraw, TextLength) != "*" && CurrentDelay = 0){
			switch (Talker){	//speak sound
			case "Sans" :
			audio_play_sound(snd_txtsans, 20, false);
			break;
				
			case "Normal" :
			if (instance_exists(obj_Menu)){
				audio_play_sound(SND_TXT2, 20, false);
			}else{
				audio_play_sound(SND_TXT1, 20, false)
			}
			break;
			default : //NO SOUND
			break;
			}
		}
		// Puts half a second of delay inbetween sentences.
		if (string_char_at(TextToDraw, TextLength) == "." || string_char_at(TextToDraw, TextLength) == "?" || string_char_at(TextToDraw, TextLength) == "!") {
				CurrentDelay = -30;
		}
		// Slight pause in the middle of a sentence.
		if (string_char_at(TextToDraw, TextLength) == ",")|| string_char_at(TextToDraw, TextLength) == "，" {
				CurrentDelay = -15;
		}
	}
}

else { // can only advance when not writing
	if CanAdvance == true{
		if (advance || keyboard_check(ord("C"))) { //if advanceable and press z 
			TextLength = 0; //set for loop back to 0
			CurrentDelay = 0; 
			TextDelay = 2;
			if variable_instance_exists(id, "TextInQueue") { // If there are TextInQueue
				if NumInQueue >= array_length(TextInQueue) { //Check if the Queue is done
					instance_destroy(self); //destroy self
					exit; //because the instance will not be removed instantly, as it will end its current event, then it will be removed.
				}
				TextToDraw = TextInQueue[NumInQueue]; //Text = next Queue
			}
			else { // No Text In Queue 
				TextToDraw = "{end}"; // Send end singal			
			}
			if TextToDraw == "{end}" || TextToDraw == "" { // destroy itself
				instance_destroy(self);
				exit;
			}
			IsWriting = true; 
			NumInQueue += 1;
		}
	}
}