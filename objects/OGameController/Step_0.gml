
var pause_btn = instance_find(OPause, 0); 
if pause_btn != noone {
  
    if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pause_btn) {
        paused = !paused; 
    }
}

var pause_btn = instance_find(Object_NarutoPauzeknop, 0); 
if pause_btn != noone {
  
    if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pause_btn) {
        paused = !paused; 
    }
}