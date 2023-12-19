if global.startmode == 0
{
_key_left = keyboard_check(ord("A"));
_key_right = keyboard_check(ord("D"));
_key_jump = keyboard_check(vk_space);

var _move = _key_right - _key_left;

_hsp = (_move * _walksp);

x = x + _hsp + _dashsp;

_vsp = _vsp + _grv;

if _dash == 1
	{
		_dashsp = _hsp * 2
		_vsp = 0
	}
	else _dashsp = 0
	
if (place_meeting(x,y+1,obj_wall)) && (_key_jump)
	{
		_vsp = -7
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
	
with (instance_place(x,y,obj_boss_attack1))
	{
	with (obj_boss_attack1)
		{
		if i = 1	
			{
			with (obj_player) 
				{
				if _invc = 0 ^^ _dash = not 1
					{
						health -= 7
						_invc = 1
						image_speed = .5
						alarm[3] = _invcfr
						show_debug_message("called boss atk from player" + string(ev_collision));
					}
				}
			}
		}
	}
}
