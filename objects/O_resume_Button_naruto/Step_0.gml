if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    var ctrl = instance_find(ONaruto_Overworld_music_en_sound, 0);
    if (ctrl != noone) {
        ctrl.paused = false;
    }
    with (O_Pauze_menu_Naruto) instance_destroy();
}
