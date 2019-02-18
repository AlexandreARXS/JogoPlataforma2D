//Update Destino
if(instance_exists(follow)){
		xTo = follow.x;
		yTo = follow.y;
}

x += (xTo - x)/25;
y += (yTo - y)/25;

x = clamp(x , view_w_half, room_width - view_w_half);
y = clamp(y , view_h_half, room_width - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

x = oPlayer.x;
y = oPlayer.y -(oPlayer.sprite_height/2);

//Controle do Zoom
if(keyboard_check_pressed(ord("I"))){
	zoomlevel = 0.5;
} else if(keyboard_check_pressed(ord("O"))){
	zoomlevel = 1;
} else if(keyboard_check_pressed(ord("P"))){
	zoomlevel = 2;
}

//Update Tamanho da View
zoomXTo = cam_default_w *zoomlevel;
zoomXTo = cam_default_h *zoomlevel;

temp_cam_w += (zoomXTo - camera_get_view_width(cam)) /25;
temp_cam_h += (zoomXTo - camera_get_view_height(cam)) /25;

var temp_cam_w_half = temp_cam_w/2;
var temp_cam_h_half = temp_cam_h/2;

camera_set_view_size(cam,temp_cam_w,temp_cam_h);

//Mantendo-se na room
x = clamp(x, temp_cam_w_half+buff, room_width-temp_cam_w_half-buff);
y = clamp(y, temp_cam_h_half+buff, room_height-temp_cam_h_half-buff);

//Movimento camera
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Updatea View 
camera_set_view_pos(cam, x-temp_cam_w_half, y-temp_cam_h_half);

