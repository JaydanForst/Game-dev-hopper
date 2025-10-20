
if is_dead {
    can_move = false;
    xsp = 0;
    ysp = 0;
}

var ctrl = instance_find(ONaruto_Overworld_music_en_sound, 0);
var paused_game = (ctrl != noone && ctrl.paused);


if !paused_game && can_move {
    xsp = 0;
    if keyboard_check(vk_left)  xsp = -7;
    if keyboard_check(vk_right) xsp = 7;

 
    if place_meeting(x, y+1, Object_BrownPlatform) || place_meeting(x, y+1, Object_agrond)  || place_meeting(x, y+1, Object_NarutoPlatform)  || place_meeting(x, y+1, Object_KamuiPillar){
        if keyboard_check_pressed(vk_up) {
            ysp = -15;
        }
    }


    if xsp != 0 {
        var hsign = sign(xsp);
        for (var i = 0; i < abs(xsp); i++) {
            if !place_meeting(x + hsign, y, Object_NarutoPlatform) && !place_meeting(x + hsign, y, Object_BrownPlatform) && !place_meeting(x + hsign, y, Object_agrond) && !place_meeting(x + hsign, y, Object_KamuiPillar) {
                x += hsign;
            } else {
                break;
            }
        }
    }
}


if x < 0 { x = 0; xsp = 0; }
if x > room_width - sprite_width { x = room_width - sprite_width; xsp = 0; }
if y < 0 { y = 0; ysp = 0; }
if y > room_height - sprite_height { y = room_height - sprite_height; ysp = 0; }


if !paused_game && can_move {
    ysp += 0.8;
    if ysp > 18 ysp = 18;

    if ysp != 0 {
        var vsign = sign(ysp);
        for (var i = 0; i < abs(ysp); i++) {
            if !place_meeting(x, y + vsign, Object_agrond) && !place_meeting(x, y + vsign, Object_BrownPlatform)  && !place_meeting(x, y + vsign, Object_NarutoPlatform) && !place_meeting(x, y + vsign, Object_KamuiPillar){
                y += vsign;
            } else {
                ysp = 0;
                break;
            }
        }
    }
}


vsp += gravity; 
y += vsp;

var ctrl = instance_find(ONaruto_Overworld_music_en_sound, 0);
if ctrl != noone && ctrl.paused {
    exit;
}

if place_meeting(x, y,ODeidara ) {
	
			if !is_dead {
			 is_dead = true;
			can_move = false;
			audio_stop_sound(Naruto_Overworld_Music)
			 audio_play_sound(Fahh, 1, false);
			 alarm[0] = room_speed * 1.5;
	
			}
}

 if place_meeting(x, y+1, Object_Portal) {
	 
	audio_stop_all()
	room_goto(Marioroom)	 
 }
 
if !paused_game && can_move {
    var enemy = instance_place(x, y, Obito_Clone);
    if enemy != noone {
        with (enemy) {
            if !transformed { 
                sprite_index = Substitution_Jutsu;
                solid = false;
                transformed = true; 
                alarm[1] = room_speed * 0.3;
                audio_play_sound(Substitution_Sound, 1, false);
            }
        }
    }
}

if !paused_game && can_move {
    var enemy = instance_place(x, y, Object_Obito);
    if enemy != noone {
        with (enemy) {
            if !transformed { 
                sprite_index = SKamui;
                solid = false;
                transformed = true; 
				audio_stop_all()
               audio_play_sound(Sharingan_sound, 1, false);
			    alarm[2] = room_speed * 0.5;
            }
        }
    }
}


if place_meeting(x, y, Okamui) {
	
	
			if !is_dead {
			 is_dead = true;
			can_move = false;
			instance_destroy(Object_NarutoPopup_2)
			audio_stop_sound(Obito_Ritual)
			 audio_play_sound(Fahh, 1, false);
			 alarm[0] = room_speed * 1.5;
	
			}
		
	
}

if !paused_game && can_move {
    var enemy = instance_place (x, y, Oitachi);
    if enemy != noone {
        var player_bottom = y + sprite_height/2;
        var player_prev_bottom = y - ysp + sprite_height/2;
        var enemy_top = enemy.y - enemy.sprite_height/2;

        if player_prev_bottom <= enemy_top && player_bottom >= enemy_top {
            with (enemy) {
				instance_destroy()
            }
            ysp = -12;
			
			audio_play_sound(Goomba_Stomp_sound, 1, false);
        } else {
			
			if !is_dead {
			 is_dead = true;
			can_move = false;
			audio_stop_sound(Naruto_Overworld_Music)
			 audio_play_sound(Fahh, 1, false);
			 alarm[0] = room_speed * 1.5;
}		
        }
    }
}

if !paused_game && can_move {
    var enemy = instance_place(x, y, OTobi);
    if enemy != noone {
      
        with (enemy) {
            if !transformed { 
                sprite_index = SKamui;
                solid = false;
                transformed = true;
                audio_stop_all();
                audio_play_sound(Sharingan_sound, 1, false);
                alarm[4] = room_speed * 0.5;
            }
        }

       
        can_move = false;
        xsp = 0;
        ysp = 0;
    }
}

