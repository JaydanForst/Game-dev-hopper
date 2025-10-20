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
        bgm_instance = audio_play_sound(Naruto_Overworld_music2, 1, true);
    }
}

if global.coins == 12 {
    with (Object_Portal_1) {
        visible = true;
    }
}

if global.coins == 12 && !platform_spawned {
  
    var platformX = 920; 
    var platformY = 320;

    instance_create_layer(platformX, platformY, "Instances", Object_NarutoPlatform_1);

    platform_spawned = true; 
}