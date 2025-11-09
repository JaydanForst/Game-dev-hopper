if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
    with (Oruimtepopup_3) {
        instance_destroy();
    }

    instance_destroy();
	
	room_goto(Ruimtewereld_1)
}