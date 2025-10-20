var ctrl = instance_find(ONaruto_Overworld_music_en_sound, 0);
if ctrl != noone && ctrl.paused {
    exit; 
}


var foot_x = x + hsp;
var foot_y = y + sprite_height / 2 + 1;


if ((!place_meeting(foot_x, foot_y, Object_NarutoPlatform) && !place_meeting(foot_x, foot_y, Object_BrownPlatform)) ||
    place_meeting(x + hsp, y, Object_NarutoPlatform) || place_meeting(x + hsp, y, Object_BrownPlatform)) {
    hsp = -hsp;
}


x += hsp;


vsp += grav;
if vsp > 18 vsp = 18;

if vsp != 0 {
    var vsign = sign(vsp);
    for (var i = 0; i < abs(vsp); i++) {
        if !place_meeting(x, y + vsign, Object_NarutoPlatform) && !place_meeting(x, y + vsign, Object_BrownPlatform) {
            y += vsign;
        } else {
            vsp = 0;
            break;
        }
    }
}


if x < sprite_width/2 { x = sprite_width/2; hsp = -hsp; }
if x > room_width - sprite_width/2 { x = room_width - sprite_width/2; hsp = -hsp; }


var ctrl = instance_find(ONaruto_Overworld_music_en_sound, 0);
if ctrl != noone && ctrl.paused {
    exit; 
}


if instance_exists(Object_Naruto) {
    if Object_Naruto.is_dead {
       
        hsp = 0;
        vsp = 0;
        exit; 
    }
}
