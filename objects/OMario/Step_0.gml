

var ctrl = instance_find(OGameController, 0);
var paused_game = (ctrl != noone && ctrl.paused);


if !paused_game {
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


if !paused_game {
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


if !paused_game {
    var enemy = instance_place(x, y, OGoomba);
    if enemy != noone {
        var player_bottom = y + sprite_height/2;
        var player_prev_bottom = y - ysp + sprite_height/2;
        var enemy_top = enemy.y - enemy.sprite_height/2;

        if player_prev_bottom <= enemy_top && player_bottom >= enemy_top {
            with (enemy) {
                sprite_index = spr_goomba_flat;
                solid = false;
                alarm[0] = room_speed / 3;
            }
            ysp = -12;
        } else {
			room_goto(Game_Over);
        }
    }
}

vsp += gravity; 
y += vsp;

var ctrl = instance_find(OGameController, 0);
if ctrl != noone && ctrl.paused {
    exit;
}

