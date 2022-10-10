//Follow the player as they move up but clamp to be 176px below their lowest y value
if (instance_exists(obPlayer)) y = clamp(y,-infinity,obPlayer.y + 176);