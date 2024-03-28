if _bos_atk == 1 && _bos_atk1 > 0
		{
			_bos_atk1 -= 1
			instance_create_depth(x+choose(random_range(15,50),(random_range(-15,-50))),y, 0, obj_boss_attack1)
			alarm[2]=1
		}



if _bos_atk == 2
	{
		if atkloopNo < 3
			{
				if atkloopNo == 0
					{
						atkspawnNo = choose(1,2,3)
						dir = choose(-1,+1)
					}
				
			switch(atkspawnNo)
				{
					case 1:
						{
							atkspawn = y1
							show_debug_message("reached case 1:")
							break;
						}
					case 2:
						{
							atkspawn = y2
							show_debug_message("reached case 2:")
							break;
						}
					case 3:
						{
							atkspawn = y3
							show_debug_message("reached case 3:")
							break;
						}
					
				}
				
				instance_create_depth(x,atkspawn, 0, obj_boss_attack2)
				atkloopNo += 1
				atkspawnNo += (1 * dir)
				if atkspawnNo == 4
					{
						atkspawnNo = 1
					}
				if atkspawnNo == 0
					{
						atkspawnNo = 3
					}
				alarm[2]=45
			}
		else if atkloopNo == 3
			{
				atkspawn = 0
				atkloopNo = 0
				atkspawnNo = 0
				_bos_atk = 0
			}
	}