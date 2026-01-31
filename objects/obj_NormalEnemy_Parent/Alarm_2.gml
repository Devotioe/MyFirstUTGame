//Here defines the behaviour of dialogue

_x = global.Enemy[0].x + 100 
_y = global.Enemy[0].y - 20
	
if event == 0 {
	
	CreateBubbleDialogue(_x, _y);
	event = 0.5
	
	var dia = choose(
	"random 1",
	"random 2",
	"random 3",
	)
	
	Dialogue.AddDialogue(dia)
}


if event = 0.5 {
	
	if !instance_exists(Dialogue){
		finished = true
	}
}

if finished {
	instance_create_depth(0, 0, 99, obj_atk_Parent)
}