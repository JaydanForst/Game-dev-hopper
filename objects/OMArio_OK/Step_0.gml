
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
    with (Object_NarutoPopup) {
        instance_destroy();
    }

    instance_destroy();
}