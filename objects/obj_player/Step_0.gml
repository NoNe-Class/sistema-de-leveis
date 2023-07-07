/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape))
{
	room_goto(rm_mundos);
}


if (global.pause)
{
	image_speed = 0;
	exit;
}
image_speed = 1;
chao = place_meeting(x, y + 1, obj_block);




if (place_meeting(x, y - 1, obj_block))
{
	velv = 0;
}

if (!chao)
{
	velv = velv + grav;
	
	var _inimigo = instance_place(x, y + velv, obj_inimigo);
	
	if (_inimigo)
	{
		velv = -velv_max;
		instance_destroy(_inimigo);
	}
	
	if (velv < 0)
	{
		sprite_index = spr_player_sobe;		
	}
	else
	{
		sprite_index = spr_player_cai;
	}
	
}
else
{
	velv = 0;
	
	if (velh == 0)
	{
		sprite_index = spr_player;
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		velv = -velv_max;
	}
	
}


move_and_collide(velh, velv, obj_block, 12, 0, 0, velh_max, velv_max);