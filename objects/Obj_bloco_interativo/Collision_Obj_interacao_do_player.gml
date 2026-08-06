
global.ativado = true;

if (global.cont <= 0){

	global.cont ++;
	
	global.picareta_atingiu_algo --;
	
	audio_play_sound(Som_batendo,5,false, 4);
	
}

