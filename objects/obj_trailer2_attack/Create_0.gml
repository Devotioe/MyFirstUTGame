event_inherited();
	global.bulletboard_border_l = 260 
	global.bulletboard_border_r = 380; //320
	global.bulletboard_border_u = 270;
	global.bulletboard_border_b = 360; //315
	
duration = 450;

Event = 0;

Cooldown = false

diff = obj_trailer2_devo.hittry

bone_cd = 60;



switch diff{
	case 1:
	break;
	case 2:
	bone_cd = 30;
	break;
	case 3:
	bone_cd = 60;
	break;
	default:
	break;
}


