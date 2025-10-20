if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
  
    var popupX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
    var popupY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);

  
    var popup = instance_create_layer(popupX, popupY, "GUI", Object_NarutoPopup_3);


    popup.x -= popup.sprite_width / 2.1;
    popup.y -= popup.sprite_height / 2.7;


    var buttonX = popup.x + popup.sprite_width / 2.4;
    var buttonY = popup.y + popup.sprite_height - 580;

   
    var dattebayo_button = instance_create_layer(buttonX, buttonY, "GUI", ODattebayo_2);

	
	instance_destroy(Object_NarutoPopup_2);
    instance_destroy(ONaruto_antwoord_a);
    instance_destroy(ONaruto_antwoord_b);
    instance_destroy(ONaruto_antwoord_c);
	instance_destroy(Object_Obito_popup)
	instance_destroy(Obito_Clone)

  
    var enemy = instance_find(OTobi, 0); 
    if enemy != noone {
        enemy.visible = true;
    }
}