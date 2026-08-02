
cor = 1;

metodo_de_ativacao = function(){

	if (global.ativado){
		
		tween(id, "image_xscale", 1.5, tween_animation.back_out, 120);
		tween(id, "image_yscale", 1.5, tween_animation.back_out, 120);
		
		if (image_xscale  > 1.1 and image_yscale > 1.1){
			
			instance_create_layer(x,y,"explosoes",Obj_explosao)
		
			instance_destroy();
		
		}
	}

}