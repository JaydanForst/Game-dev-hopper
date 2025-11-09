if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
    with (Oruimtepopup_1) {
        instance_destroy();
    }
	
	 with (OTobi_1) {
        instance_destroy();
    }

    instance_destroy();
}