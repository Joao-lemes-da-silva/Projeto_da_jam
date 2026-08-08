
var _mouse_prerssionado = mouse_check_button_pressed(mb_left);

var _posicao_do_mouse = position_meeting(mouse_x, mouse_y, id);


if (_posicao_do_mouse){
	
	tween(id, "intencidade", 1, animacao_do_tween, velocidade_do_tween);
	
	tween(id, "image_xscale", imagemX * mudanca, animacao_do_tween, velocidade_do_tween);

	tween(id, "image_yscale", imagemY * mudanca, animacao_do_tween, velocidade_do_tween);

	tween(id, "escala_texto", escala_texto2 * 1.8, animacao_do_tween, velocidade_do_tween);

	if (_mouse_prerssionado){
	
		tween(id, "image_xscale", imagemX + 4, animacao_do_tween, 10);

		tween(id, "image_yscale", imagemY + 2, animacao_do_tween,10);

		tween(id, "escala_texto", escala_texto2 + 6, animacao_do_tween, 10);
	
	}

}

else{
	
	tween(id, "intencidade", 0, animacao_do_tween, velocidade_do_tween);
	
	tween(id, "image_xscale", imagemX, animacao_do_tween, velocidade_do_tween);

	tween(id, "image_yscale", imagemY, animacao_do_tween, velocidade_do_tween);

	tween(id, "escala_texto", escala_texto2, animacao_do_tween, velocidade_do_tween);
	
}

image_blend = merge_colour(c_blue, c_aqua, intencidade)