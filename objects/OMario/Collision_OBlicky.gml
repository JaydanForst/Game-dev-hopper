
var popupX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
var popupY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);


var popup = instance_create_layer(popupX, popupY, "GUI", OMario_popup_2);


popup.x -= popup.sprite_width / 2.1;
popup.y -= popup.sprite_height / 1.9;


var buttonX = popup.x + popup.sprite_width / 2.4;
var buttonY = popup.y + popup.sprite_height -400;

var button = instance_create_layer(buttonX, buttonY, "GUI", OMario_Oh_No);
