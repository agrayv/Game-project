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
		// Define the three coordinates
point1 = point_distance(x, y, x1, y1);
point2 = point_distance(x, y, x2, y2);
point3 = point_distance(x, y, x3, y3);

// Initialize variables to store the closest point and its distance
closest_point = -1; // Indicates no closest point found yet
closest_distance = -1;

// Perform the loop to find the closest point
do {
    // Check which point is closest
    if (point1 < closest_distance || closest_distance == -1) {
        closest_distance = point1;
        closest_point = 1;
    }
    if (point2 < closest_distance || closest_distance == -1) {
        closest_distance = point2;
        closest_point = 2;
    }
    if (point3 < closest_distance || closest_distance == -1) {
        closest_distance = point3;
        closest_point = 3;
    }
} until(true); // This loop will run indefinitely until the closest point is found

// Now spawn an object at the closest point
switch (closest_point) {
    case 1:
        instance_create(x1, y1, obj_to_spawn);
        break;
    case 2:
        instance_create(x2, y2, obj_to_spawn);
        break;
    case 3:
        instance_create(x3, y3, obj_to_spawn);
        break;
}
*/