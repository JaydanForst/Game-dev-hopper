if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
	audio_stop_all()
	 instance_destroy(O_Pauze_menu_Mario)
   room_goto(HomeScreen)
  
}