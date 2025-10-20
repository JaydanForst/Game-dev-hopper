if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) {

    audio_stop_sound(Obito_Ritual);
    audio_play_sound(Fahh, 1, false);

  
    var ctrl = instance_find(Object_Naruto, 0);
    if ctrl != noone {
        ctrl.alarm[0] = room_speed * 1.5;
    }


    with (Object_NarutoPopup_2) instance_destroy();
    with (ONaruto_antwoord_a) instance_destroy();
    with (ONaruto_antwoord_b) instance_destroy();
    with (ONaruto_antwoord_c) instance_destroy(); 

  
}