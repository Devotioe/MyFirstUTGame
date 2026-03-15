// Inherit the parent event
event_inherited();

if (dodge > 0) {
    
    //dodger += 0.05; 
   
    
    //x = xstart - round((125 * sin(dodger)));

    //if (dodger >= pi) {
    //    dodge = 0;
    //    dodger = 0; 
    //    x = xstart; 
    //}
	
	
	
	if (dodge == 1){
		
		if (x > dodge_destination){
			x -= abs(x - dodge_destination) / 8;
		}
		
		if (abs(x - dodge_destination) <= 0.01){
			x = dodge_destination;
			dodge = 2;
		}
	}
	
	if (dodge == 2){

		if (x < dodge_origin){
			x += abs(dodge_origin - x) / 8;
		}
		
		if (abs(x - dodge_origin) <= 0.01){
			x = dodge_origin;
			dodge = 0;
		}
	}
	
	
}