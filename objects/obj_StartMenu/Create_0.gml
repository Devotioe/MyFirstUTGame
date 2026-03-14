var _x = 100;


Start = instance_create_depth(_x, 100, -1, obj_TextElement);

Trailer1 = instance_create_depth(_x, 200, -1, obj_TextElement);

Trailer2 = instance_create_depth(_x, 300, -1, obj_TextElement);

Credit = instance_create_depth(_x, 400, -1, obj_TextElement);

Credit_Context = instance_create_depth(20, 480, -1, obj_TextElement);

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

Credit_Context.AddDialogue("A Game based on UNDERTALE by ~YDevo~D ");
Credit_Context.AddLine("Inspired by UNDERTALE }& UTDR Community")
Credit_Context.AddLine(" ")
Credit_Context.AddLine("[Directed By]~Y&Devo~D ")
Credit_Context.AddLine("[Programming]~Y&Devo~D ")
Credit_Context.AddLine("[Art }& Character Design]~Y&Devo~D ")
Credit_Context.AddLine("[Story }& Script]~Y&Devo~D ")
Credit_Context.AddLine(" ");
Credit_Context.AddLine("[Music By]");
Credit_Context.AddLine("\"The Murderer Menu\" by ~YBenyiC03~D ");
Credit_Context.AddLine("\"THANATOS - CYCLES\" by ~YShade~D ")
Credit_Context.AddLine("\"HYPOTHESIS\" by ~YMusicar~D ")
Credit_Context.AddLine("\"Small Shock\" by ~YToby Fox~D ")
Credit_Context.AddLine(" ");
Credit_Context.AddLine("UNDERTALE by ~YToby Fox~D }& ~YTemmie Chang~D ")
Credit_Context.AddLine(" ")
Credit_Context.AddLine("And ~YYOU~D for playing")
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