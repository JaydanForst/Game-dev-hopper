if !dragging {
    // Begin slepen
    dragging = true;
    offset_x = mouse_x - x;
    offset_y = mouse_y - y;
} else {
    // Stop slepen
    dragging = false;
}


x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);