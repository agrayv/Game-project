_key_left = keyboard_check(ord("A"));
_key_right = keyboard_check(ord("D"));
_key_jump = keyboard_check(vk_space);

var _move = _key_right - _key_left;

hsp = _move * walksp;

x = x + hsp;


//

if (place_meeting(x+hsp,y,Object2))
	{
		while (!place_meeting(x+sign(hsp),y,Object2))
			{
				x = x + sign(hsp);
			}
		hsp = 0	
	}


