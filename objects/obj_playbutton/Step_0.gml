if keyboard_check(vk_enter)
	{
		global.startmode = 1
	}
while global.startmode == 1
	{
		image_alpha -= .3
	}