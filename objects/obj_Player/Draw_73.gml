//For battle transiting animation and stuff
if SoulX != 0{
	
	depth = 99999;

	if (AlertMark > 0){
		draw_sprite(spr_exc, 0, x - 3  , y - 70)
		AlertMark --;
	}
	
	BattlePrepCounter += 1; //This is for counting the frames for animation and stuff

	if FlashTimer > 0{
		FlashTimer --;
		draw_set_color(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_sprite(spr_ourheart, 0, SoulX, SoulY);
	}
	if BattlePrepCounter == 60{
		FlashTimer = 2;
		audio_play_sound(CutNoise, 20, false);
	}
	if BattlePrepCounter == 64{
		FlashTimer = 2;
		audio_play_sound(CutNoise, 20, false);
	}		
	if BattlePrepCounter >= 68  {
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_sprite(spr_ourheart, 0, SoulX, SoulY);
	}
	if BattlePrepCounter == 85{
		audio_play_sound(Battle_Soul, 20, false);
	}
	
	if BattlePrepCounter > 85{
		if SoulX > global.SoulX{
			SoulX -= abs(SoulX - global.SoulX)/3;
		}else{
			SoulX += abs(SoulX - global.SoulX)/3;
		}
		if SoulY > global.SoulY{
			SoulY -= abs(SoulY - global.SoulY)/3;
		}else{
			SoulY += abs(SoulY - global.SoulY)/3;
		}	
	}
	
	if global.SoulX == SoulX && global.SoulY == SoulY{
		BattlePrepCounter = 0;
		SoulX = 0;
		SoulY = 0;
		soul_alpha = 1;
		obj_Player.visible = false;
		room_goto(room_battle);
	}
}




