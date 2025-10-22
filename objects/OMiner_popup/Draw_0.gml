if (visible_menu) {
    draw_self();


    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_font(Mario_Font1);


    draw_text(room_width/2, room_height/2.65,
        "Welkom in de miner dungeon! dit is een originele level voor onze tutorial.");
    draw_text(room_width/2, room_height/2.45,
        "Hier leren we je kort de basics van onze game. Je kan links en recht bewegen");
	 draw_text(room_width/2, room_height/2.28,
        "met de linker en rechter pijltjes en met het pijltje omhoog kan je springen.");
	draw_text(room_width/2, room_height/2.12,
        "In elke level kan je iets verzamelen en hier zijn dat diamanten. Verzamel");
	draw_text(room_width/2, room_height/2,
        "er een paar en maak dan je weg op naar de vraagteken.");

}