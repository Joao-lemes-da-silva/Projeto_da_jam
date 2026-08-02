
#region Variaveis

interacao = noone;

#endregion

#region Metodos

metodo_de_movimentacao = function(){

	var _velocidade, _esquerda, _direita, _forca_do_pulo, _cima, _baixo;

	_velocidade		= 2;

	_direita		= keyboard_check(ord("D")) or keyboard_check(vk_right);
	_esquerda		= keyboard_check(ord("A")) or keyboard_check(vk_left);
	_cima		= keyboard_check(ord("W")) or keyboard_check(vk_up);
	_baixo		= keyboard_check(ord("S")) or keyboard_check(vk_down);
	
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
	
	var _interagindo;
	
	_interagindo = keyboard_check_pressed(ord("E"));
	
	if (_interagindo and !instance_exists(Obj_interacao_do_player)){
	
		interacao = instance_create_layer(x + 0.5,y + 3,"interativos_etc", Obj_interacao_do_player);
	
	}
	
	if (instance_exists(Obj_interacao_do_player)){
	
	interacao.x = x + 0.5;
	interacao.y = y + 3;
	
	}

}

#endregion