var btn = instance_find(ORespawnButton, 0);
if btn != noone && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, btn) {
    
    global.request_respawn = true;
    room_goto(Ruimtewereld);
}