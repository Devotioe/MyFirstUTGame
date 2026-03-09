
Start = instance_create_depth(300, 100, -1, obj_TextElement);

Trailer1 = instance_create_depth(300, 200, -1, obj_TextElement);

Trailer2 = instance_create_depth(300, 300, -1, obj_TextElement);

Credit = instance_create_depth(300, 400, -1, obj_TextElement);

Credit_Context = instance_create_depth(20, 100, -1, obj_TextElement);

Start.AddDialogue("Start");
Start.TextLength = string_length(Start.TextToDraw);
Start.IsWriting = false;
Start.CanAdvance = false;

Trailer1.AddDialogue("Trailer1");
Trailer1.TextLength = string_length(Trailer1.TextToDraw);
Trailer1.IsWriting = false;
Trailer1.CanAdvance = false;

Trailer2.AddDialogue("Trailer2");
Trailer2.TextLength = string_length(Trailer2.TextToDraw);
Trailer2.IsWriting = false;
Trailer2.CanAdvance = false;

Credit.AddDialogue("Credits");
Credit.TextLength = string_length(Credit.TextToDraw);
Credit.IsWriting = false;
Credit.CanAdvance = false;

Credit_Context.AddDialogue("Project Owner - Devo&Coder - Devo&Art - Devo&Writer - Devo&Music -&The Murderer Menu by BenyiC03& & &UNDERTALE by Toby Fox }& Temmie Chang");
Credit_Context.TextLength = string_length(Credit_Context.TextToDraw);
Credit_Context.IsWriting = false;
Credit_Context.CanAdvance = false;
Credit_Context.Silence = true;
Credit_Context.visible = false;

setup = false;

prevSel = 0;

Selections = [Start, Trailer1, Trailer2, Credit];

temps = "";

Values = [Start.TextToDraw, Trailer1.TextToDraw, Trailer2.TextToDraw, Credit.TextToDraw];

obj_TextElement.Alpha = 0;

global.UISelection = 0;

global.Music = instance_create_depth(0, 0, 999, obJ_Music);
global.debug = instance_create_depth(0, 0, 999, obj_DEBUG);
global.constantfunction = instance_create_depth(0, 0, 999, obj_constantfunction);

state = 0;