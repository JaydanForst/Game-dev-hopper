if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
	instance_destroy(O_Pauze_menu_dungeon)
    room_restart()
}