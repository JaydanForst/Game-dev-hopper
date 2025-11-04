if (visible_menu) {
    draw_self();


    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_set_font(Ruimte_font);


    draw_text(room_width/2, room_height/3.3,
        "Welkom in de wereld van Moonman. hier gaan we het hebben");
    draw_text(room_width/2, room_height/3,
        " over de rol QA tester. Zo te zien heeft de maker van het");
	 draw_text(room_width/2, room_height/2.75,
        " level (Tiago) zijn level afgemaakt. Toch is niet alles");
	 draw_text(room_width/2, room_height/2.5,
        " perfect, vandaar dat we jou hulp nodig hebben. Probeer ");
	draw_text(room_width/2, room_height/2.3,
        "het level te halen om te zien of er iets mis is. Ga je gang!");

}

