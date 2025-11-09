if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {
 
  
 var popupX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
var popupY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);


var popup = instance_create_layer(popupX, popupY, "GUI", Oruimtepopup_2);


popup.x -= popup.sprite_width / 2.1;
popup.y -= popup.sprite_height / 2.7;

var buttonX1 = popup.x + popup.sprite_width / 6.2;
var buttonY1 = popup.y + popup.sprite_height - 500;
var button1 = instance_create_layer(buttonX1, buttonY1, "GUI", Oruimte_antwoord_a);


var buttonX2 = popup.x + popup.sprite_width / 6.2;
var buttonY2 = popup.y + popup.sprite_height - 400;
var button2 = instance_create_layer(buttonX2, buttonY2, "GUI", Oruimte_antwoord_b);


var buttonX3 = popup.x + popup.sprite_width / 6.2;
var buttonY3 = popup.y + popup.sprite_height - 300;
var button3 = instance_create_layer(buttonX3, buttonY3, "GUI", Oruimte_antwoord_c);


}