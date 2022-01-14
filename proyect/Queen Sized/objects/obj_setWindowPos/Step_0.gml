var xx = display_get_width()/2 -(window_get_width()/2);
var yy = lerp(window_get_y(), display_get_height()/2-(window_get_height()/2), .05)
window_set_position(xx, yy);