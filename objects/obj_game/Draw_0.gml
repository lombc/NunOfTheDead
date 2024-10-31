// Draw event of obj_game

// Get camera position
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);


// Define heart size and spacing
var heart_size = 75; // Width and height of the heart sprite
var heart_spacing = 20; // Space between hearts

// Draw hearts in the top left corner of the camera
if (instance_exists(global.player_instance)) {
    var hearts_to_draw = clamp(global.player_instance.health / 20, 0, global.player_instance.max_health / 20);
    for (var i = 0; i < hearts_to_draw; i++) {
		draw_sprite_ext(spr_nun_heart, 0, cam_x + 75 + i * (heart_size + heart_spacing), cam_y + 75, heart_size / sprite_get_width(spr_nun_heart), heart_size / sprite_get_height(spr_nun_heart), 0, c_white, 1);        
    }
}

