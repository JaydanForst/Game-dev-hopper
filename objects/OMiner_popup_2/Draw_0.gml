if (visible_menu) {
    draw_self();


    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_font(Mario_Font1);


    draw_text(room_width/1.9, room_height/2.65,
        "Als je hier bent kan ik aannemen dat je het spel hebt uitgespeeld. Klopt dat?");
    draw_text(room_width/1.9, room_height/2.45,
        "Verwacht je hier nog iets nieuws of spannends?! Nou dan heb je jouw verwachtingen ");
	 draw_text(room_width/1.9, room_height/2.28,
        "te hoog gezet. Hier is niets speciaals of bijzonders gaande, behalve dat het hele level");
	draw_text(room_width/1.9, room_height/2.12,
        "ondersteboven is. Als we meer tijd hadden konden we misschien wat meers toevoegen,");
	draw_text(room_width/1.9, room_height/2,
        "maar ja dit is wat we hebben. Probeer niet misselijk te worden tijdens het spelen");
	draw_text(room_width/1.9, room_height/1.88,
        "Veel plezier!!!");	

}