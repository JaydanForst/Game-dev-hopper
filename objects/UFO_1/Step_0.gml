// Beweeg pixel per pixel
for (var i = 0; i < hsp; i++) {

    // Collision check links of rechts
    if (place_meeting(x + dir, y, OBlock_3)) {
        dir = -dir; // keert om
        break;      // stop movement deze stap
    }

    x += dir; // beweeg
}