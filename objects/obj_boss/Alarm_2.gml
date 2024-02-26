if _bos_atk == 1 && _bos_atk1 > 0
		{
			_bos_atk1 -= 1
			instance_create_depth(x+choose(random_range(15,50),(random_range(-15,-50))),y, 0, obj_boss_attack1)
			alarm[2]=1
		}
		
if _bos_atk == 2
	{
		
	do {
		if (point1 < closest_distance || closest_distance == -1) 
			{
				closest_distance = point1;
				closest_point = 1;
		    }
	    if (point2 < closest_distance || closest_distance == -1) 
			{
		        closest_distance = point2;
		        closest_point = 2;
			}
	    if (point3 < closest_distance || closest_distance == -1) 
			{
		        closest_distance = point3;
		        closest_point = 3;
		    }
		} 
	until(true);
		
		switch (closest_point) 
		{
		    case 1:
		        instance_create_depth(0, y1, 0, obj_boss_attack2);
		        break;
		    case 2:
		        instance_create_depth(0, y2, 0, obj_boss_attack2);
		        break;
		    case 3:
		        instance_create_depth(0, y3, 0, obj_boss_attack2);
		        break;
		}
	}
				
		
		/*
		// Define the positions where you want to spawn obj_bossattack2
		var positions = ds_list_create();
		ds_list_add(positions, point_direction(obj_player.x, obj_player.y, x1, y1)); // Coordinates for position 1
		ds_list_add(positions, point_direction(obj_player.x, obj_player.y, x2, y2)); // Coordinates for position 2
		ds_list_add(positions, point_direction(obj_player.x, obj_player.y, x3, y3)); // Coordinates for position 3

		// Sort positions based on distance from obj_player
		ds_list_sort(positions, false); // Sorting in ascending order (closest to farthest)

		// Spawn obj_bossattack2 at each of the closest positions
		for (var i = 0; i < 3; i++) {
		    var closestPosition = positions[| i];
		    var spawnX = obj_player.x + lengthdir_x(closestPosition, distance_to_object(obj_player));
		    var spawnY = obj_player.y + lengthdir_y(closestPosition, distance_to_object(obj_player));
    
		    instance_create(spawnX, spawnY, obj_bossattack2);
		}

		// Clean up the list
		ds_list_destroy(positions);
*/