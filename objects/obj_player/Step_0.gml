_key_left = keyboard_check(ord("TEST"));
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

/*
if place_free(x,y)
	{
		onground=0
	}
	else onground=1

if keyboard_check(ord("D"))
	{
	hspeed += .15
	if hspeed >= 7
	 {
		hspeed = 7
	 }
	}
if keyboard_check(ord("A"))
	{
	hspeed -= .15
	if hspeed <= -7
	 {
		hspeed = -7
	 }
	}
if keyboard_check(vk_space) && onground == 1
	{
		vspeed=5
	}
