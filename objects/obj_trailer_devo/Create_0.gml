// Inherit the parent event
event_inherited();

dodger = 0;

CheckDescription[0] = "* [REDACTED] 1 ATK 1 DEF&* The weakest enemy.&* Can't use any magical item.";
CheckDescription[1] = "* Something about him feels off.&* Don't let your guard down.";

instance_create_depth(0, 0, -999999, obj_flicker);

Act[1] = "Call out";

bounce = 1;
siner = 0

xoff =0
yoff = 0

headx = 0;
heady = 0;

legx = 0;
legy = 0;
sweat = 0;
delay = 0;
movearm = 0;
facetype = 0;
deadtest = 0;

dodge_destination = xstart - 125;
dodge_origin = xstart;

spr_head = spr_trailer_devo_head
spr_torso = spr_trailer_devo_torso
spr_legs = spr_trailer_devo_leg
