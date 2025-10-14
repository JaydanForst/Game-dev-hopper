


var ctrl = instance_find(OGameController, 0);
if ctrl != noone && ctrl.paused {
    exit; 
}


var foot_x = x + hsp;
var foot_y = y + sprite_height / 2 + 1;


if ((!place_meeting(foot_x, foot_y, OBlock) && !place_meeting(foot_x, foot_y, OGround)) ||
    place_meeting(x + hsp, y, OBlock) || place_meeting(x + hsp, y, OGround)) {
    hsp = -hsp;
}


x += hsp;


vsp += grav;
if vsp > 18 vsp = 18;

if vsp != 0 {
    var vsign = sign(vsp);
    for (var i = 0; i < abs(vsp); i++) {
        if !place_meeting(x, y + vsign, OBlock) && !place_meeting(x, y + vsign, OGround) {
            y += vsign;
        } else {
            vsp = 0;
            break;
        }
    }
}


if x < sprite_width/2 { x = sprite_width/2; hsp = -hsp; }
if x > room_width - sprite_width/2 { x = room_width - sprite_width/2; hsp = -hsp; }


var player = instance_place(x, y, OMario);
if player != noone {
    var player_bottom = player.y + player.sprite_height/2;
    var player_prev_bottom = player.y - player.vsp + player.sprite_height/2;
    var enemy_top = y - sprite_height/2;

   
    if player_prev_bottom <= enemy_top && player_bottom >= enemy_top && player.vsp > 0 {
      
        sprite_index = spr_goomba_flat;
        solid = false;
        alarm[0] = room_speed / 3;
        player.vsp = -12; 
    } else {
 
        room_goto(Game_Over);
    }
}

var ctrl = instance_find(OGameController, 0);
if ctrl != noone && ctrl.paused {
    exit; 
}
