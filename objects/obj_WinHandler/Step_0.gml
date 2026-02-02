key_advance = keyboard_check_pressed(ord("Z") || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("z")))

EndBattle()

if !checked{
	if key_advance && global.Menu.ActionText.IsWriting == false{
		if allkilled {
			alarm[0] = 1;
			checked = true
		}
		if allspared {
			alarm[0] = 1;
			checked = true
		}
	}
	if flee {
		alarm[0] = 150 //Destroy itself
		checked = true
	}	
}

