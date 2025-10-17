if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, ORespawnButton)) {
    audio_stop_all()
	room_goto(Narutoroom);
}