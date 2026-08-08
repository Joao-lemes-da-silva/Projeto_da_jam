
if (fim_de_jogo){

	layer_sequence_create("sequence", 0, 0,Sq_vitoria);

}

else{

	layer_sequence_create("sequence", 0, 0,Sq_indo_ao_proximo);

}
global.ativado = false;