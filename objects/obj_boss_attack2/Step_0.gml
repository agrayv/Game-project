i-=1
if i == 5
	{
		image_speed = 0
		image_index = 15
	}
if i <= 0
	{
		instance_destroy()
	}

if image_index == 10
	{
		object_set_mask(obj_boss_attack2, 0)
	}