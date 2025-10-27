var pause_btn = instance_find(Object_NarutoPauzeknop, 0); 
if pause_btn != noone {
  
    if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, pause_btn) {
        paused = !paused; 
		
		if (paused) {
      
        if (!instance_exists(O_Pauze_menu_Naruto_2)) {
            instance_create_layer(
                camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2,
                camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2,
                "GUI",
                O_Pauze_menu_Naruto_2
            );
        }
    } else {

        with (O_Pauze_menu_Naruto_2) instance_destroy();
    }	
  }
}

if (keyboard_check_pressed(vk_escape)) {
    paused = !paused;

    if (paused) {
      
        if (!instance_exists(O_Pauze_menu_Naruto_2)) {
            instance_create_layer(
                camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2,
                camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2,
                "GUI",
                O_Pauze_menu_Naruto_2
            );
        }
    } else {

        with (O_Pauze_menu_Naruto_2) instance_destroy();
    }
}

if paused {
    if bgm_instance != noone {
        audio_pause_sound(Naruto_Overworld_music2);
        bgm_instance = noone;
    }
} else {
    if bgm_instance == noone {
        bgm_instance = audio_resume_sound(Naruto_Overworld_music2);
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