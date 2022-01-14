draw_self();

draw_set_font(global.invertedFont)
draw_set_halign(fa_center)
draw_set_color(c_white);

draw_text_ext(room_width/2, 260, string_upper(arr_text[i]), -1, room_width-8);