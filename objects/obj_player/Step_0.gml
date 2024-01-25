if global.startmode == 0
{
_key_left = keyboard_check(ord("A"));
_key_right = keyboard_check(ord("D"));
_key_jump = keyboard_check(vk_space);
_key_control = keyboard_check(vk_control);

var _move = _key_right - _key_left;
if _slam == 0
	{
		_hsp = (_move * _walksp)
	}
	
x = x + _hsp + _dashsp;

_vsp = _vsp + _grv + _slamsp
 
if _dash == 1
	{
		_dashsp = _hsp * 2
		_vsp = 0
	}
	else _dashsp = 0

if _slamtimr > 0
	{
		_slamtimr -= 1
	}
	
if (place_meeting(x,y+1,obj_wall)) && (_key_jump)
	{
		if _slamtimr > 0
			{
				_vsp = -10
			}
		else _vsp = -7
	}

while (distance_to_object(obj_wall) >= 50)
	{
		if (place_meeting(x,y+1,obj_wall))
			{
				break;
			}
		if _key_control
			{
				_slam = 1
			}
			
		break;
	}
		
		//if (!place_meeting(x,y+_vsp,obj_wall)) && (_key_control) 
		//	{
		//		_slam = 1
		//	}
	
if _slam == 1
	{
		while (place_meeting(x,y+_vsp,obj_wall))
			{
				_slam = 0
				_slamsp = 0
				_slamtimr = 45
				break;
			}
		while (!place_meeting(x,y+_vsp,obj_wall))
			{
				_hsp = 0
				_slamsp = 5
				break;
			}
	}
				
				
	
//

if (place_meeting(x+_hsp,y,obj_wall))
	{
		while (!place_meeting(x+sign(_hsp),y,obj_wall))
			{
				x = x + sign(_hsp);
			}
		_hsp = 0
	}
//
if (place_meeting(x,y+_vsp,obj_wall))
	{
		while (!place_meeting(x,y+sign(_vsp),obj_wall))
			{
				y = y + sign(_vsp);
			}
		_vsp = 0
			if _dash == 3
				{
					_dash = 0
				}
			
	}
y = y + _vsp;

if _dash == 0 && _dashamnt > 0
	{
		if keyboard_check(vk_lshift) 
			{
				alarm[0]=15
				_dash = 1
				_vsp = 0
				_dashamnt -= 1
				
			}

		
	}
if _dashamnt < 3 && _dashcd = 0
	{
		alarm[2]=240
		_dashcd = 1
	}


with obj_player
	{
		while (place_meeting(obj_player.x,obj_player.y,obj_boss_attack1))
			{
				if (!place_meeting(obj_player.x,obj_player.y,obj_boss_attack1)) || _dash == 1 || _invc == 1 
					{
						break;
					}
				
				//if (object_get_mask(obj_boss_attack1) == -1)
				//	{
				//		break;
				//	}
		
					if (object_get_mask(obj_boss_attack1) != spr_boss_attack1)
						{
							break;
						}
			
			
					health -= 7
					_invc = 1
					image_speed = .5
					alarm[3] = _invcfr
					show_debug_message("player collide with atk ");		
					break;
					}
			}	
	}



/*
with obj_player
	{
		while (place_meeting(x,y,obj_wall))
			{
				if (!place_meeting(x,y,obj_wall))
					{
						continue;
					}
				show_debug_message("in contact with wall")
				break;
			}
	}
	
while object_exists(obj_wall)
	{
		if object_get_mask(obj_wall) == 0 || _cd == 1
			{
				break;
			}
			
		show_debug_message("mask off")
		break
	}



		*/
		
		
