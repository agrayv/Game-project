if collision_circle(obj_dash_ui.x,obj_dash_ui.y+50,1000,obj_player,false,true)
	{
		move_towards_point(obj_player.x,obj_player.y,spd)
	}
if spd == 5
	{
		spd = 5
	}
	spd += 0.2
if collision_circle(obj_dash_ui.x,obj_dash_ui.y+50,50,obj_player,false,true)
	{
		spd -= 0.01
	}

//x = obj_player.x
//y = obj_player.y - 70
