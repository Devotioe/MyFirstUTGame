TextToDraw = "";

function AddDialogue (_text) {
	var text = _text;
	if TextToDraw == "" {
		TextToDraw = text;
	}else{
		if !is_array(TextInQueue){
			TextInQueue = []
		}
		array_push(TextInQueue, text)
	}
}

function AddLine(_text) {
	var text = _text
	TextToDraw += "&" + text;
}

Alpha = 1;

TextInQueue = -1

TextDelay = 2; 

CurrentDelay = 0;

CanAdvance = true;

CanSkip = true;

NumInQueue = 0;

IsWriting = true;

TextLength = 0;

DefaultColour = c_white;

IsSpeechBubble = false;

Talker = "Normal";

AdvanceCoolDown = 0;

spr_Bubble = spr_blconwdshrt_0;

Silence = false;

SoundCD = 0;
