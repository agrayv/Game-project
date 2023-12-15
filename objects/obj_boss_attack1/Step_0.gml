i-=1
if i <= 15
	{
		image_speed = 1/3
	}
if i = 3
	{
		image_yscale += 2
	}
if i <= 0
	{
		mask_index=1
		instance_destroy()
	}