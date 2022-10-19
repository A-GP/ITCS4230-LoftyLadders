if (instance_exists(obPlayer)) {
	if (obPlayer.hp = 3) draw_sprite_stretched(spHealth,0,336,128,220,84);
	if (obPlayer.hp = 2) draw_sprite_stretched(spHealth2,0,336,128,220,84);
	if (obPlayer.hp = 1) draw_sprite_stretched(spHealth3,0,336,128,220,84);
	if (obPlayer.hp = 0) draw_sprite_stretched(spHealth4,0,336,128,220,84);
	
	if (!obPlayer.plslow) draw_sprite_stretched(spSlow,image_index/8,336,32,(21*4),(21*4));
	
	if (!obPlayer.plsize) draw_sprite_stretched(spSmall,0,336,32,(21*4),(21*4));
}