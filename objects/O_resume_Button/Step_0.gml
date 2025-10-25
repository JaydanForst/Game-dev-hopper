if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    var ctrl = instance_find(Odungeonroom_music_en_pauze, 0);
    if (ctrl != noone) {
        ctrl.paused = false;
    }
    with (O_Pauze_menu) instance_destroy();
}