#region Variáveis

// =========================
// VARIÁVEIS INICIAIS
// =========================

// Próxima posição lógica do bloco
proximoX = x;
proximoY = y;

// Indica se o bloco já foi atingido
atingido = false;

// Define a cor do bloco
cor = 1;

// Impede que o bloco seja empurrado durante uma animação
global.movendo = false;

#endregion


#region Métodos

// =========================
// MÉTODO DE ATIVAÇÃO
// =========================

metodo_de_ativacao = function()
{
	if ((global.ativado and Ligado_ao_ativador) || atingido)
	{
		tween(id, "image_xscale", 1.5, tween_animation.back_out, 120);
		tween(id, "image_yscale", 1.5, tween_animation.back_out, 120);

		if (image_xscale > 1.1 and image_yscale > 1.1)
		{
			instance_create_layer(x, y, "explosoes", Obj_explosao);
			instance_destroy();
		}
	}
};


// =========================
// MÉTODO DE COICE
// =========================

metodo_de_coice = function()
{
	// Se já está se global.movendo, não permite outro empurrão
	if (global.movendo) return;

	var _forca_do_coice = 16;

	// =========================
	// ESQUERDA
	// =========================
	if (place_meeting(x, y, Obj_interacao_do_player)
	and global.ataque_esquerda
	and !place_meeting(x - _forca_do_coice, y, Obj_solido))
	{
		proximoX -= _forca_do_coice;

		global.movendo = true;

		tween(id, "x", proximoX, tween_animation.linear, 10);
		
		global.picareta_atingiu_algo --;
		
		audio_play_sound(Som_batendo,5,false, 4);
		
	}

	// =========================
	// DIREITA
	// =========================
	else if (place_meeting(x, y, Obj_interacao_do_player)
	and global.ataque_direita
	and !place_meeting(x + _forca_do_coice, y, Obj_solido))
	{
		proximoX += _forca_do_coice;

		global.movendo = true;

		tween(id, "x", proximoX, tween_animation.linear, 10);
		
		global.picareta_atingiu_algo --;
	
		audio_play_sound(Som_batendo,5,false, 4);
	}

	// =========================
	// CIMA
	// =========================
	else if (place_meeting(x, y, Obj_interacao_do_player)
	and global.ataque_cima
	and !place_meeting(x, y - _forca_do_coice, Obj_solido))
	{
		proximoY -= _forca_do_coice;

		global.movendo = true;

		tween(id, "y", proximoY, tween_animation.linear, 10);
		
		global.picareta_atingiu_algo --;
	
		audio_play_sound(Som_batendo,5,false, 4);
	}

	// =========================
	// BAIXO
	// =========================
	else if (place_meeting(x, y, Obj_interacao_do_player)
	and global.ataque_baixo
	and !place_meeting(x, y + _forca_do_coice, Obj_solido))
	{
		proximoY += _forca_do_coice;

		global.movendo = true;

		tween(id, "y", proximoY, tween_animation.linear, 10);
		
		global.picareta_atingiu_algo --;
	
		audio_play_sound(Som_batendo,5,false, 4);
	}
};

#endregion