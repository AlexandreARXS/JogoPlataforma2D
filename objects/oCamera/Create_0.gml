	//Criação da camera
tempo = 0;
alarm[0] = 10;

cam = view_camera[0];
follow = oPlayer;

cam_default_w = camera_get_view_width(cam);
cam_default_h = camera_get_view_height(cam);

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

//Zoom
zoomlevel = 1;
temp_cam_w = cam_default_w;
temp_cam_h = cam_default_h;

//Tremer
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;



















