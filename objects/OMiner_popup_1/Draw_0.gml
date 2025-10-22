if (visible_menu) {
    draw_self();


    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_font(Mario_Font1);


    draw_text(room_width/1.9, room_height/2.65,
        "Meestal als je een andere karakter op het scherm ziet (zoals de dungeon piraat");
    draw_text(room_width/1.9, room_height/2.45,
        "links van je) zijn het vijanden die je weg naar het eind van de level hinderen.");
	 draw_text(room_width/1.9, room_height/2.28,
        "Gelukkig hebben we daar een oplossing voor, anders zou je hier vast blijven zitten.");
	draw_text(room_width/1.9, room_height/2.12,
        "Spring simpel weg op hun hoofden en ze verdwijnen meteen. geweldig he!");
	draw_text(room_width/1.9, room_height/2,
        "Probeer het eens uit bij deze gekke piraat. Wellicht spawnt er dan iets...");

}