if !variable_global_exists("respawn_x") { global.respawn_x = x; global.respawn_y = y; }

if variable_global_exists("request_respawn") && global.request_respawn {
    x = global.respawn_x;
    y = global.respawn_y;
    ysp = 0; 
    global.request_respawn = false;
}

xsp=0
ysp=0
paused = false;
vsp = 0;
can_move = true
is_dead = false