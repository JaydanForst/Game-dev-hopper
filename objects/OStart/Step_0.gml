if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
    audio_stop_all()
	room_goto(Loadingscreen_jurassic)
}