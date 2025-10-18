
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
	audio_stop_all()
	
	instance_destroy(OMario_Oh_No)
	instance_destroy(OMario_popup_2)
	
	room_goto(Ruimtewereld)
}