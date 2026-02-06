


if(ShakeEffect != 0) {
	if ShakeDelay > 0 {
		ShakeDelay --;
	}else{
		ShakeDelay = 3;
			
	    if(ShakeEffect < 0) {
	        x = xstart + ShakeEffect;
	    }
	    if(ShakeEffect > 0){
	        x = xstart + ShakeEffect;
		}
		
		ShakeEffect *= 0.75;
	    ShakeEffect= -ShakeEffect;
	}
	
	if abs(ShakeEffect) < 2 {
		ShakeEffect = 0;
		x = xstart;
	}
}

if killed {
	image_alpha -= 0.05;
}





