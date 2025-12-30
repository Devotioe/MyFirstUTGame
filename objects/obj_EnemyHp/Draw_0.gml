if (MyCurrentHp > MyHpToBe) {
	MyCurrentHp -= ((MyHp - MyHpToBe) / 20);
	if (MyCurrentHp < MyHpToBe)
		MyCurrentHp = MyHpToBe;
}
//Deciding whether to show bar
if ShowBar == true{
	draw_set_color(c_dkgrey);
	draw_rectangle(x - (BarWidth / 2), y - 10, x + (BarWidth / 2), y + 10, false);
	if (MyCurrentHp >= 0) {
		draw_set_color(c_lime);
		draw_rectangle(x - (BarWidth / 2), y - 10, x - (BarWidth / 2) + ((MyCurrentHp / MyMaxHp) * (BarWidth)), y + 10, false);
	}
}

//Draws Damage
if (Damage != 0 && Damage != "MISS"){
	draw_set_color(c_red);
}
else{
	draw_set_color(c_grey);
}
draw_set_font(fnt_Battle_DamageUI);
var ha = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x, y - (50 + DamageOffsetY), string(Damage));
DamageOffsetY *= 0.9;
draw_set_halign(ha);

