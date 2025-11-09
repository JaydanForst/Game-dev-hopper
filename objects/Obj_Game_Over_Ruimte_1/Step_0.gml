var btn = instance_find(ORespawnButton, 0);
if btn != noone && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, btn) {
    
	audio_stop_all()
    room_goto(Ruimtewereld);
}