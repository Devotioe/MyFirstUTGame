// Inherit the parent event
event_inherited();

if (dodge > 0) {
    
    dodger += 0.037; 
   
    
    x = xstart - round((125 * sin(dodger)));

    if (dodger >= pi) {
        dodge = 0;
        dodger = 0; 
        x = xstart; 
    }
}