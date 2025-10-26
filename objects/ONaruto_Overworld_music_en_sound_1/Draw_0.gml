if paused {
     draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);
	
	draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);


    draw_set_font(Pauze_Font);

    draw_text(room_width/2, room_height/7, "PAUZE");
}