if _bos_atk == 1 && _bos_atk1 > 0
		{
			instance_create_depth(x+choose(random_range(25,40),(random_range(-25,-40))),y, 0, obj_boss_attack1)
			alarm[2]=2
		}