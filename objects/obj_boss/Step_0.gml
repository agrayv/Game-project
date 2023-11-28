if _bosStart == 1
	{
		image_alpha += 0.0025
		if image_alpha == 1
			{
				_bosStart = 0
				hspeed = _bosSP // * random
			}
	}
	
