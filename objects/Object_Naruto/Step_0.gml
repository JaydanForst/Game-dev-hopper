var ctrl = instance_find(OGameController, 0);
var paused_game = (ctrl != noone && ctrl.paused);


if !paused_game {
    xsp = 0;
    if keyboard_check(vk_left)  xsp = -7;
    if keyboard_check(vk_right) xsp = 7;

 
    if place_meeting(x, y+1, Object_BrownPlatform) || place_meeting(x, y+1, Object_agrond)  || place_meeting(x, y+1, Object_NarutoPlatform) {
        if keyboard_check_pressed(vk_up) {
            ysp = -15;
        }
    }


    if xsp != 0 {
        var hsign = sign(xsp);
        for (var i = 0; i < abs(xsp); i++) {
            if !place_meeting(x + hsign, y, Object_NarutoPlatform) && !place_meeting(x + hsign, y, Object_BrownPlatform) && !place_meeting(x + hsign, y, Object_agrond) {
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
            if !place_meeting(x, y + vsign, Object_agrond) && !place_meeting(x, y + vsign, Object_BrownPlatform)  && !place_meeting(x, y + vsign, Object_NarutoPlatform){
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

var ctrl = instance_find(OGameController, 0);
if ctrl != noone && ctrl.paused {
    exit;
}

if place_meeting(x, y,ODeidara ) {
	
	room_goto(Game_Over_Mario)
	
}
