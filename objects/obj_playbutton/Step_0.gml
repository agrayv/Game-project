if keyboard_check(vk_enter)
	{
		global.startmode = 1
		
	}
if global.startmode == 1
	{
		image_alpha -= 0.01
		if image_alpha == 0
			{
				global.startmode = 0
				instance_create_layer(room_width/2, room_height/1.3, 0,obj_player)
				instance_create_depth(room_width/2, room_height/4, 0, obj_boss)
				instance_destroy()
			}
	}