//Inputs do jogador
key_left = keyboard_check(vk_left) ||  keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculador dos movimentos
var move = key_right - key_left;

hv = move * walkv;

vv = vv + grv;

if(place_meeting( x, y + 1, oFloor)) && (key_jump){
	vv = -4;	
}
 
//Colisao horizontal

if(place_meeting(x + hv, y, oFloor)){
	while(!place_meeting(x + sign(hv), y, oFloor)){
		x = x + sign(hv);
	}
	hv=0;	
}

x = x + hv;

//Colisao Vertical

if(place_meeting(x, y+vv, oFloor)){
	while(!place_meeting(x,y+sign(vv),oFloor)){
		y = y+sign(vv);
	}
	vv=0;	
}

y = y + vv;

//Animcao
if(!place_meeting(x, y + 1, oFloor)){
	sprite_index = sPlayerJ;
	image_speed = 0;
	if(sign(vv)>0) image_index = 1; else image_index = 0;
}else{
	image_speed = 1;	
	if(hv == 0){
		sprite_index = sPlayer;	
		}else{
			sprite_index = sPlayerR;	
		}
}

if(hv != 0) image_xscale = sign(hv);

