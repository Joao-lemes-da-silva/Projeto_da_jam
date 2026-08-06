
#region Variaveis

interacao = noone;

global.picareta_atingiu_algo = uso_da_picareta;

#endregion

#region Metodos

metodo_de_movimentacao = function(){

	var _velocidade, _esquerda, _direita, _forca_do_pulo, _cima, _baixo;

	_velocidade		= 2;

	_direita		= keyboard_check(ord("D"));
	_esquerda		= keyboard_check(ord("A"));
	_cima		= keyboard_check(ord("W"));
	_baixo		= keyboard_check(ord("S"));
	
	if (_direita){
	
	sprite_index	= Spr_player_andando;
	
	image_xscale	= 1;
	
	}
	
	if (_esquerda){
	
	sprite_index	= Spr_player_andando;
	
	image_xscale	= -1;
	
	}
	if (_baixo){
	
	sprite_index	= Spr_andando_para_baixo;
	
	image_xscale	= 1;
	
	}
	
	if (_cima){
	
	sprite_index	= Spr_andando_para_cima;
	
	}
	
	if (!_direita and !_esquerda and !_baixo and !_cima){
	
	sprite_index = Spr_player;
	
	image_xscale = 1;
	
	}
	
	var velh = (_direita - _esquerda) * _velocidade;
	x += velh;
	var velv = (_baixo - _cima) * _velocidade;
	y += velv;
	
}

metodo_de_ativacao = function(){
	

	if(keyboard_check_pressed(vk_up)){
		
		global.ataque_cima =  true
	
	}
	
	if(keyboard_check_pressed(vk_down)){
		
		global.ataque_baixo =  true
	
	}
	
		if(keyboard_check_pressed(vk_left)){
		
		global.ataque_esquerda =  true
	
	}
	
	if(keyboard_check_pressed(vk_right)){
		
		global.ataque_direita =  true
	
	}
	
	
	if (global.picareta_atingiu_algo > 0){
	
		if (!instance_exists(Obj_interacao_do_player) and global.ataque_cima){
			
			show_debug_message("Empurrando para cima");
	
			interacao = instance_create_layer(x + 1, y - 4, "interativos_etc", Obj_interacao_do_player);
			
			interacao.image_angle = 0;
			
			interacao.y = y - 5;
			
			interacao.x = x;
			
		}
		if (!instance_exists(Obj_interacao_do_player) and global.ataque_baixo){
			
			show_debug_message("Empurrando para baixo");
	
			interacao = instance_create_layer(x + 1, y + 7, "interativos_etc", Obj_interacao_do_player);

			interacao.image_angle = 180;
			
			interacao.y = y + 10;
			
			interacao.x = x;
			
		}
		if (!instance_exists(Obj_interacao_do_player) and global.ataque_esquerda){
			
			show_debug_message("Empurrando para esquerda");
	
			interacao = instance_create_layer(x - 7, y + 3, "interativos_etc", Obj_interacao_do_player);

			interacao.image_angle = 90;
			
			interacao.y = y;
			
			interacao.x = x - 10;
			
		}
		if (!instance_exists(Obj_interacao_do_player) and global.ataque_direita){
			
			show_debug_message("Empurrando para direita");
	
			interacao = instance_create_layer(x + 7, y + 3, "interativos_etc", Obj_interacao_do_player);
			
			interacao.image_angle = 270;
			
			interacao.y = y;
			
			interacao.x = x + 12;
		}
	
	
	}

}

metodo_usos = function(){
	
	var _altura_da_tela = view_hport;
	
	var _coretor_de_gui = 30;

	repeat(global.picareta_atingiu_algo){
	
		draw_sprite_ext(Spr_usos, 0, _coretor_de_gui, _altura_da_tela - 30, 3,3,0,c_white,1);
	
		_coretor_de_gui += 55;
	
	}
	
}

#endregion