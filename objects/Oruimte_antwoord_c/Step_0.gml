if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {

    audio_stop_sound(Space_song);
    audio_play_sound(Game_Over_Voice, 1, false);

  
    var ctrl = instance_find(Moonman, 0);
    if ctrl != noone {
        ctrl.alarm[1] = room_speed * 2;
    }


    with (Oruimtepopup_2) instance_destroy();
    with (Oruimte_antwoord_a) instance_destroy();
    with (Oruimte_antwoord_b) instance_destroy();
    with (Oruimte_antwoord_c) instance_destroy(); 

  
}