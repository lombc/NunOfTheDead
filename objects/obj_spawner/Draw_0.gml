// Set font and color (customize as needed)
draw_set_font(fnt_wave_display); // Use a custom font if you have one
draw_set_color(c_white);

// Get the current camera
var cam = view_camera[0]; // Use the first camera (adjust if you're using multiple cameras)

// Get the camera's position and size
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_width = camera_get_view_width(cam);
var cam_height = camera_get_view_height(cam);

// Calculate the position for the wave text in the top right of the camera view
var wave_text = "Wave: " + string(global.current_wave);
var destroyed_text = "Brooms Destroyed: " + string(global.brooms_destroyed);

draw_text(cam_x + cam_width - 225, cam_y + 50, wave_text);        // Display wave text
draw_text(cam_x + cam_width - 532, cam_y + 120, destroyed_text);   // Display destroyed count just below wave text
