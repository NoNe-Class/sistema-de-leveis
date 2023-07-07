/// @description Insert description here
// You can write your code in this editor
if (global.pause)
{
	image_speed = 0;
	exit;
}
image_speed = 1;

if (velh != 0)
{
	sprite_index = spr_ciri_anda;
	image_xscale = -velh;
}

if (place_meeting(x + velh, y, obj_block))
{
	velh *= -1;
}

if (!place_meeting(x, y + 1, obj_block))
{
	velv += .4;
}
else
{
	velv = 0;
}

move_and_collide(velh, velv, obj_block);