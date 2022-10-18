draw_self();

if (hpcount > hp) {
	shader_set(shHit);
	draw_self();
	shader_reset();
}