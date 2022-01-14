x = mouse_x;
y = mouse_y;

x = clamp(x, 0, room_width-sprite_width);
y = clamp(y, 0, room_height-sprite_height);

image_index = place_meeting(x, y, obj_stats) ? 1 : 0;