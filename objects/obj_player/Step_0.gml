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
			//else _vsp = _vsp + _grv
		
	}
}