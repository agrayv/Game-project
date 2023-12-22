if _bos_atk == 1 && _bos_atk1 > 0
		{
			_bos_atk1 -= 19
			instance_create_depth(x+choose(random_range(15,50),(random_range(-15,-50))),y, 0, obj_boss_attack1)
			alarm[2]=1
		}