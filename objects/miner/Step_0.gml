
if is_dead {
    can_move = false;
    xsp = 0;
    ysp = 0;
}


var ctrl = instance_find(Odungeonroom_music_en_pauze, 0);
var paused_game = (ctrl != noone && ctrl.paused);


if !paused_game && can_move {
    xsp = 0;
    if keyboard_check(vk_left)  xsp = -7;
    if keyboard_check(vk_right) xsp = 7;

 
    if place_meeting(x, y+1, dungeonplatform) || place_meeting(x, y+1, Odungeonfloow) || place_meeting(x, y+1, ODungeonfloor2)|| place_meeting(x, y+1, Odungeonfloor3){
        if keyboard_check_pressed(vk_up) {
            ysp = -17;
        }
    }


    if xsp != 0 {
        var hsign = sign(xsp);
        for (var i = 0; i < abs(xsp); i++) {
            if !place_meeting(x + hsign, y, Odungeonfloow) && !place_meeting(x + hsign, y, Odungeonfloor3) && !place_meeting(x + hsign, y, ODungeonfloor2) && !place_meeting(x + hsign, y, dungeonplatform) {
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
            if !place_meeting(x, y + vsign, dungeonplatform) && !place_meeting(x, y + vsign, Odungeonfloow) && !place_meeting(x, y + vsign, ODungeonfloor2) && !place_meeting(x, y + vsign, Odungeonfloor3) {
                y += vsign;
            } else {
                ysp = 0;
                break;
            }
        }
    }
}


if !paused_game && can_move {

    var enemy = instance_place(x, y + ysp, dungeonpiraat);
    if enemy != noone {
        var enemy_top = enemy.bbox_top;
        var player_bottom = bbox_bottom;

      
        if (player_bottom <= enemy_top + 6 && ysp >= 0) {
           
            with (enemy) instance_destroy();
            ysp = -12;
            audio_play_sound(Goomba_Stomp_sound, 1, false);
			
			 var portal = instance_find(dungeonportal, 0);
            if (portal != noone) {
                portal.visible = true;
			}
			
        } else {
            
            if !is_dead {
                is_dead = true;
                can_move = false;
                audio_stop_sound(dire_dire_docks);
                audio_play_sound(Fahh, 1, false);
                alarm[0] = room_speed * 1.5;
            }
        }
    }

}

vsp += gravity; 
y += vsp;

var ctrl = instance_find(Odungeonroom_music_en_pauze, 0);
if ctrl != noone && ctrl.paused {
    exit;
}


 if place_meeting(x, y+1, dungeonportal){
	
	audio_stop_all()
	room_goto(HomeScreen)
	 
 }