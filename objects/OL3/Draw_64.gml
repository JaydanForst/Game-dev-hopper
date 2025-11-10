draw_self(); 
if (hovering) {
    draw_set_color(c_white);
    draw_set_font(Ruimte_font); 
    draw_text(mouse_x + 10, mouse_y + 10, tooltip_text);
	draw_text(mouse_x + 10, mouse_y + 40, tooltip_text_1)
	draw_text(mouse_x + 10, mouse_y + 70, tooltip_text_2)
	draw_text(mouse_x + 10, mouse_y + 100, tooltip_text_3)
}