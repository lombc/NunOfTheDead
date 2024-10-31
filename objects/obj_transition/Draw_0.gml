// Set the draw color to black
draw_set_color(c_black);
draw_set_alpha(fade_alpha);

// Draw a rectangle over the entire room (use the size of your camera/view if it differs from the room size)
draw_rectangle(0, 0, room_width, room_height, false);

// Reset alpha
draw_set_alpha(1);
