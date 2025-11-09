
for (var i = 0; i < hsp; i++) {

   
    if (place_meeting(x + dir, y, OBlock_3)) {
        dir = -dir; 
        break;      
    }

    x += dir; 
}