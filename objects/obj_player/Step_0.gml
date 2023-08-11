esquerda = keyboard_check(ord("A"));
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
baixo = keyboard_check(ord("S"));

hspd = (direita - esquerda) * spd;
if place_meeting(x + hspd, y, obj_parede){
	while !place_meeting(x + sign(hspd), y , obj_parede){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

vspd = (baixo - cima) * spd;
if place_meeting(x, y + vspd, obj_parede){
	while !place_meeting(x, y + sign(vspd), obj_parede){
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;
