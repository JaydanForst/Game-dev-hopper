

if is_dead {
    can_move = false;
    xsp = 0;
    ysp = 0;
}


var ctrl = instance_find(OMario_Overworld_Music_en_pauze, 0);
var paused_game = (ctrl != noone && ctrl.paused);


if !paused_game && can_move {
    xsp = 0;
    if keyboard_check(vk_left)  xsp = -7;
    if keyboard_check(vk_right) xsp = 7;

 
    if place_meeting(x, y+1, OGround) || place_meeting(x, y+1, OBlock) {
        if keyboard_check_pressed(vk_up) {
            ysp = -15;
        }
    }


    if xsp != 0 {
        var hsign = sign(xsp);
        for (var i = 0; i < abs(xsp); i++) {
            if !place_meeting(x + hsign, y, OGround) && !place_meeting(x + hsign, y, OBlock) {
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
            if !place_meeting(x, y + vsign, OGround) && !place_meeting(x, y + vsign, OBlock) {
                y += vsign;
            } else {
                ysp = 0;
                break;
            }
        }
    }
}


if !paused_game && can_move {
    var enemy = instance_place (x, y, OGoomba);
    if enemy != noone {
        var player_bottom = y + sprite_height/2;
        var player_prev_bottom = y - ysp + sprite_height/2;
        var enemy_top = enemy.y - enemy.sprite_height/2;

        if player_prev_bottom <= enemy_top && player_bottom >= enemy_top {
            with (enemy) {
                sprite_index = spr_goomba_flat;
                solid = false;
                alarm[0] = room_speed * 0.3;
            }
            ysp = -12;
        } else {
			
			if !is_dead {
			 is_dead = true;
			can_move = false;
			audio_stop_sound(Mario_Overworld_Music)
			 audio_play_sound(Fahh, 1, false);
			 alarm[1] = room_speed * 1.5;
}		
        }
    }
}

vsp += gravity; 
y += vsp;

var ctrl = instance_find(OMario_Overworld_Music_en_pauze, 0);
if ctrl != noone && ctrl.paused {
    exit;
}


 if place_meeting(x, y+1, OPortals){
	
	audio_stop_all()
	room_goto(Ruimtewereld)
	 
 }
 
if place_meeting(x, y, OBlicky) {
    var popup = instance_find(OMario_popup_1, 0);
	var button = instance_find(OMario_Oh_No, 0);

	if popup != noone {
    popup.visible = true;
	}

	if button != noone {
    button.visible = true;
	}
}
