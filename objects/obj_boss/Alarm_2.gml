if _bos_atk == 1 && _bos_atk1 > 0
		{
			_bos_atk1 -= 1
			instance_create_depth(x+choose(random_range(15,50),(random_range(-15,-50))),y, 0, obj_boss_attack1)
			alarm[2]=1
		}
if _bos_atk == 2
	{
		_pos1 = y = 384
		_pos2 = y = 256
		_pos3 = y = 128
		instance_create_depth(0,choose(_pos1,_pos2,_pos3),0,obj_boss_attack2)
	}
				
		
		