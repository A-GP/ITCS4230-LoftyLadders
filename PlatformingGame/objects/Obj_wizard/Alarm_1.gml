spellnum = irandom(2);
sprite_index = spWizardCasting

//slowing
if(spellnum = 0){
	instance_create_layer(x, y, "Spells", Obj_spellslow)
}
//shock
if(spellnum = 1){
	instance_create_layer(x, y, "Spells", Obj_spellshock)
}
//shrinking
if(spellnum = 2){
	instance_create_layer(x, y, "Spells", Obj_spellshrink)
}

sprite_index = spWizard
path_start(Path_reverse, 1, path_action_stop, false)
alarm[0] = room_speed * (castTimer*2)

//bug where wizard would appear during the falling animation
if (instance_exists(obPlayerFalling)){
	instance_destroy()
}



































