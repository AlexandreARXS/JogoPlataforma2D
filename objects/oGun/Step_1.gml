x = oPlayer .x;
y = oPlayer.y;

//Mira
image_angle = point_direction(x,y,mouse_x,mouse_y);

tirodelay = tirodelay - 1;
recuo = max(0, recuo- 1);

if(mouse_check_button_pressed(mb_left)) && (tirodelay < 0){
	tirodelay = 5;
	with(instance_create_layer(x,y,"Bullet", oBullet)){
		speed = 25;
		direction = other.image_angle +  random_range(-3, 3);
		image_angle = direction;
	}
}

x = x -lengthdir_x(recuo,image_angle);
y = y -lengthdir_x(recuo,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1;	
}else{
	image_yscale = 1;
}