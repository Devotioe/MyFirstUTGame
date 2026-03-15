if Event == 1 {
	obj_Player_Camera.x += 	1
	
	if abs(obj_Player_Camera.x - 1550) < 1 {
		Event = 2	
		obj_Player_Camera.x = 1550;
	}
}

if Event == 2{ 
	alarm[1] = 60;	//set event = 3
	Event = 2.1;
}

if Event == 3{
	Dialogue_1 = CreateOverworldDialogue();
	Dialogue_1.Talker = "Devo";
	Dialogue_1.AddDialogue("* hey, what's up?");
	Dialogue_1.AddDialogue("* so you're the one i've been&  hearing about.");
	Dialogue_1.AddDialogue("* huh.");
	Dialogue_1.AddDialogue("* not gonna lie, you don't seem&  to worth all the fuss.");
	Dialogue_1.AddDialogue("* but from what i've heard...");
	Dialogue_1.AddDialogue("* you're pretty gross.");
	Dialogue_1.AddDialogue("* what, are you addicted to video&  games or something?");
	Dialogue_1.AddDialogue("* 'cause they said you wandered&  around,");
	Dialogue_1.AddDialogue("* killed who you could reach,");
	Dialogue_1.AddDialogue("* and took what they had.");
	Dialogue_1.AddDialogue("* i know the graduation thingy is&  tough, but...");
	Dialogue_1.AddDialogue("* honestly, that just seems&  overdone, even for me.");
	Dialogue_1.AddDialogue("* ...");
	Dialogue_1.AddDialogue("* oops. forgot to introduce&  myself.");
	Dialogue_1.AddDialogue("* i'm [REDACTED]. nice to meet you.");
	Dialogue_1.AddDialogue("* ain't my real name, though.&  it's a nickname.");
	Dialogue_1.AddDialogue("* my real name is...");
	Dialogue_1.AddDialogue("* well, hey. if you aren't&  introducing yourself, why&  should i?");
	Dialogue_1.AddDialogue("* it's a mutual thing, y'know?");
	Dialogue_1.AddDialogue("* that's a strike one.");
	Dialogue_1.AddDialogue("* ...anyway.");
	Dialogue_1.AddDialogue("* you're basically freaking&  everyone out.");
	Dialogue_1.AddDialogue("* and from what i know...");
	Dialogue_1.AddDialogue("* things are pretty chaotic&  back there now.");
	Dialogue_1.AddDialogue("* if you get past me, the chain's&  gonna start moving.");
	Dialogue_1.AddDialogue("* ...");
	Dialogue_1.AddDialogue("* what is it that you want,&  really?");
	Dialogue_1.AddDialogue("* a straight-A graduation?");
	Dialogue_1.AddDialogue("* or you're just the kind of&  psycho adding to your streak...?");
	Dialogue_1.AddDialogue("* either way...");
	Dialogue_1.AddDialogue("* that little spree of yours&  ain't lasting.");
	Dialogue_1.AddDialogue("* party's over now, freak.");

	Event = 4;
}

if Event == 4 && !instance_exists(Dialogue_1){
	global.encounterID = 1000;
	with obj_Player{
		obj_Player.ShowMark = false;
		event_user(0) //starting battle
		
	}
	Event = 5;
}
