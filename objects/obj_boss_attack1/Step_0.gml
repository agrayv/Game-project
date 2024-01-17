i-=1
if i <= 15
	{
		image_speed = 1/3
	}
if i = 3
	{
		mask_index = spr_boss_attack1
		image_yscale += 2
	}
if i <= 0
	{
		
		instance_destroy()
	}
