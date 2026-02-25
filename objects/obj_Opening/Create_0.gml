_inst = instance_create_depth(15, 240, -9, obj_TextElement);
_inst2 = -1;

played = false

_inst.Talker = "Sans"
_inst.AddDialogue("* if anything is gonna happen to change&  that.");
_inst.AddDialogue("* it's about to.");
_inst.AddDialogue("* and trust me, it's not really my style&  to solve things this way.");
_inst.AddDialogue("* i ain't much of a fighter, not anymore.");
_inst.AddDialogue("* if you land a hit on me,&  it's game over.");
_inst.AddDialogue("* but if this is the only way...");
_inst.AddDialogue("* well, then it's not really up to me&  anymore.");
_inst.AddDialogue("* maybe it's too late to realize.");
_inst.AddDialogue("* broken, as the world is.");
_inst.AddDialogue("* but light still shines. people live on.");
_inst.AddDialogue("* there's much i didn't do.");
_inst.AddDialogue("* and there's much more i can still do.");
_inst.AddDialogue("* [REDACTED], [REDACTED], and the others.");
_inst.AddDialogue("* they deserve much more, don't they?");
_inst.AddDialogue("* heh. it might not even pay off, but...");
_inst.AddDialogue("* too late or not...");

music = audio_play_sound(mus_trailer_fight, 1, true);

event = 0;
alp = 99;