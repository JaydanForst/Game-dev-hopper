if (visible_menu) {
    draw_self();


    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_set_font(Mario_Font1);


    draw_text(room_width/2, room_height/2.7,
        "Welkom in de wereld van Mario. hier gaan we het hebben over de rol level ");
    draw_text(room_width/2, room_height/2.5,
        "designer. Zie je die karakter rechts boven? Zijn naam is Blicky Bilal. Wellicht");
	 draw_text(room_width/2, room_height/2.3,
        "kan hij helpen om dit level te halen. Maak je weg op naar hem en spreek hem aan!");

}