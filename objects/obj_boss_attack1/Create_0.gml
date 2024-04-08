object_set_mask(obj_boss_attack1, -1)
image_speed = 0
image_xscale = distance_to_object(obj_player)

i = 80

image_angle = point_direction(x,y,global._player_pos+random_range(100,-100),obj_player.y)