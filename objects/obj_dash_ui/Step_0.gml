x = obj_player.x
y = obj_player.y - 40
with (obj_player)
{
	if _dashamnt == 3
		{
			with (obj_dash_ui) 
			{ 
				image_index = 0
			}
		}
	if _dashamnt == 2
		{
			with (obj_dash_ui) 
			{ 
				image_index = 1
			}
		}
	if _dashamnt == 1
		{
			with (obj_dash_ui) 
			{ 
				image_index = 2
			}
		}
	if _dashamnt == 0
		{
			with (obj_dash_ui) 
			{ 
				image_index = 3
			}
		}
}