if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
    instance_destroy(Object_NarutoPopup_2);
    instance_destroy(ONaruto_antwoord_a);
    instance_destroy(ONaruto_antwoord_b);
    instance_destroy(ONaruto_antwoord_c);
	instance_destroy(Object_Obito_popup)
	instance_destroy(Obito_Clone)

  
    var enemy = instance_find(OTobi, 0); // zoekt de eerste instantie van OEnemy
    if enemy != noone {
        enemy.visible = true;
    }
}