if (mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height) {
    hovering = true;
} else {
    hovering = false;
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
	audio_stop_all()
   room_goto(Loadingscreen_naruto)
}