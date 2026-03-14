var select_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")); 

if (global.BarCount > 1){ // only multibar do this
	if ( x > 270 && hspeed > 0 ) || ( x < 390 && hspeed < 0){ // Bar missed center
		//hspeed > 0 means bar spawned at left side
		//hspeed < 0 means bar spawned at right side
		if (image_alpha == 1){
			global.PriorityBar += 1; //goes to next bar 
		}
		image_alpha -= 0.1; //fade away
		dead = true; // this set the bar to be unhittable
		if (image_alpha <= 0){
			instance_destroy(self)//kill itself
		}
	}
}

if ( x > 605 && hspeed > 0) || ( x < 30 && hspeed < 0 ){  //Bar missed Target
	global.PriorityBar += 1; //goes to next bar 
	
	dead = true;
	
	image_alpha -= 0.1;
	
	if (image_alpha <= 0){
		instance_destroy(self)//kill itself
	}
}

//We always adds to the Priority Bar because it always decide whether the attack is finished by
//detecting if Priority Bar is bigger than BarCounts

if (global.PriorityBar > priority && ! dead){
	
	image_speed = 1; //hit animation
	
	if (hspeed != 0){ //if hasn't stop
		BarDistance = distance_to_point(320, y);
		
		//Base Damage
		global.Damage += (global.PlayerAtk + global.WeaponATK - global.Enemy[global.EnemyRN].MyDef) + random(2);
		
		
		//Target hit Decide Damage
		if BarDistance < 12 { //perfect hit
			global.Damage *= 1.4;
			if global.BarCount > 1{ // multibar
				//play sound
			}
		}else{
			global.Damage *= 1 - (BarDistance / FieldWidth) ;
			if global.BarCount > 1{ // multibar
				//play not perfect sond
			}
		}
		
		//Calculating Damage
		global.Damage -= global.Enemy[global.EnemyRN].MyDef/2;
		
		//Rounding up Damage
		global.Damage = round(global.Damage);
		
		//special situation
		if (global.Damage < 1){
			global.Damage = 1;
		}
		
		if global.PlayerAtk - global.Enemy[global.EnemyRN].MyDef/2 <= 0 {
			global.Damage = 0;
		}
	}
	
	hspeed = 0; //stop the bar 
	
	//for animation
	if (global.BarCount > 1){
		if BarDistance < 12 {
			image_speed = 0;
			image_index = 0;
		}
		image_xscale += 0.4
		image_yscale += 0.4
		image_alpha -= 0.4;
		
		if (image_alpha <= 0){
			instance_destroy(self)
		}
	}	
}

