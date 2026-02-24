// Inherit the parent event
event_inherited();

if (dodge > 0) {
    
    dodger += 0.035; 
   
    
    x = xstart - round((150 * sin(dodger)));

    if (dodger >= pi) {
        dodge = 0;
        dodger = 0; 
        x = xstart; 
    }
}