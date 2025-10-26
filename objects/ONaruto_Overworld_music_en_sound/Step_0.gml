var pause_btn = instance_find(Object_NarutoPauzeknop, 0); 
if pause_btn != noone {
  
    if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pause_btn) {
        paused = !paused; 
		
		 if (paused) {
      
        if (!instance_exists(O_Pauze_menu_Naruto)) {
            instance_create_layer(
                camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2,
                camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2,
                "GUI",
                O_Pauze_menu_Naruto
            );
        }
    } else {

        with (O_Pauze_menu_Naruto) instance_destroy();
    }
  }
}

if (keyboard_check_pressed(vk_escape)) {
    paused = !paused;

    if (paused) {
      
        if (!instance_exists(O_Pauze_menu_Naruto)) {
            instance_create_layer(
                camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2,
                camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2,
                "GUI",
                O_Pauze_menu_Naruto
            );
        }
    } else {

        with (O_Pauze_menu_Naruto) instance_destroy();
    }
}

if paused {
    if bgm_instance != noone {
        audio_stop_sound(bgm_instance);
        bgm_instance = noone;
    }
} else {
    if bgm_instance == noone {
        bgm_instance = audio_play_sound(Naruto_Overworld_Music, 1, true);
    }
}