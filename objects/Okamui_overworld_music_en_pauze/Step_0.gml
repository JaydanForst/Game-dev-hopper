var pause_btn = instance_find(Object_NarutoPauzeknop, 0); 
if pause_btn != noone {
  
    if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pause_btn) {
        paused = !paused; 
    }
}

if paused {
    if bgm_instance != noone {
        audio_stop_sound(bgm_instance);
        bgm_instance = noone;
    }
} else {
    if bgm_instance == noone {
        bgm_instance = audio_play_sound(Obito_Ritual, 1, true);
    }
}