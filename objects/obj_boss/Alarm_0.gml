global._player_pos = obj_player.x
_bos_atk = choose(,2)//,3,4,5)
if _bos_atk == 1
	{
		_bos_atk1 = 20
		_bossattacktime = 70
	}

if _bos_atk == 2
	{
		_bossattacktime = 120
	}


alarm[1] = _bossattacktime