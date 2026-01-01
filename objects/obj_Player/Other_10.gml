//This starts the battle


audio_pause_all(); //pause room music
audio_play_sound(Battle_Alert, 20, false); //sound
global.CurrentRoom = room; //memorize current room for re-locating
	
//spawn soul position
SoulX = x - 5;
SoulY = y - 9;

//Memorize player's current location.
Prev_X = x;
Prev_Y = y;

//To be change, this defines where should the soul go
global.SoulX = camera_get_view_x(view_camera[0]) + 50;
global.SoulY = camera_get_view_y(view_camera[0]) + 452;

//Alertmark countdown timer
AlertMark = 60;

//Make player frozen, preventing issues
frozen = true;