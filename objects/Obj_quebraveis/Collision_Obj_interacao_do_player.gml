
if (global.cont <= 0){
	
	image_index = 1;

	vida --;
	
	global.cont ++;
	
	global.picareta_atingiu_algo --;
	
	audio_play_sound(Som_batendo,5,false, 4);
	
}

