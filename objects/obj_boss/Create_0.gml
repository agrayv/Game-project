//
_bos_start = 1 
_bos_cd = 240
_bos_hp = 1000
_bos_dmg = 5
_bos_spd = 3
_bos_atk = 0
_bos_atk_can = 1
_bos_dir = 1

y1 = 512
y2 = 580
y3 = 648

closest_point = -1;
closest_distance = -1;
point1 = point_distance(obj_player.x, obj_player.y, 0, y1);
point2 = point_distance(obj_player.x, obj_player.y, 0, y2);
point3 = point_distance(obj_player.x, obj_player.y, 0, y3);
//
_bos_dir = choose(1,-1)
image_alpha = 0

//
_bos_atk1 = 20
_bossattacktime = 60
_bossattacktimeALT = 0

//
