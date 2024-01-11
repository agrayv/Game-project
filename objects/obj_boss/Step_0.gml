// moving cmd's
var _move = _bos_spd * _bos_dir

//
if _bos_start == 1
	{
		image_alpha += 0.0025
		if image_alpha == 1
			{
				_bos_start = 0
				hspeed = _move
				
			}
	else hspeed = 0	
	}
if (position_meeting(61,y,obj_boss))
	{
		hspeed = _bos_spd * 1
		_bos_dir = 1
	}
if (position_meeting(1471,y,obj_boss))
	{
		hspeed = _bos_spd * -1
		_bos_dir = -1
	}
	
//attack cooldown calculations
var _bossattack = _bos_cd * random_range(1, 1.5)

if _bos_atk_can == 1 && _bos_start == 0
	{
		_bos_atk_can = 0
		alarm[0]= _bossattack
		alarm[2]= _bossattack
		hspeed = _move
		global._player_pos = obj_player.x
	}
//boss attack
if _bos_atk > 0
	{
		hspeed = 0
	}
