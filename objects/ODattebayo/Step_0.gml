// Check of er met de linkermuisknop op de knop wordt geklikt
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
    // Verwijder menu
    with (Object_NarutoPopup) {
        instance_destroy();
    }
    // Verwijder knop zelf
    instance_destroy();
}