var pause_btn = instance_find(OPauze_space, 0); 
if pause_btn != noone {
  
    if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pause_btn) {
        paused = !paused; 
    }
}

if paused {
    if bgm_instance != noone {
        audio_pause_sound(Space_song);
        bgm_instance = noone;
    }
} else {
    if bgm_instance == noone {
        bgm_instance = audio_resume_sound(Space_song);
    }
}