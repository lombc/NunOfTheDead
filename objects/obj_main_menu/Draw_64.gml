// Draw Event of obj_main_menu

// Set the font
draw_set_font(fnt_menu_button); // Replace with your actual font asset name

// Define button area for "Start Game"
var start_button_hover = (mouse_x >= 1216 - 100 && mouse_x <= 1216 + 100 &&
                          mouse_y >= 896 - 20 && mouse_y <= 896 + 20);

// Define button area for "Exit"
var exit_button_hover = (mouse_x >= 1632 - 100 && mouse_x <= 1632 + 100 &&
                         mouse_y >= 896 - 20 && mouse_y <= 896 + 20);

// Draw "Start Game" button
if (start_button_hover) {
    draw_set_color(c_red); // Change text color to red on hover
} else {
    draw_set_color(c_white); // Default color
}
draw_text(1216, 896, "Start Game"); // Draw Start Game text

// Draw "Exit" button
if (exit_button_hover) {
    draw_set_color(c_red); // Change text color to red on hover
} else {
    draw_set_color(c_white); // Default color
}
draw_text(1632, 896, "Exit"); // Draw Exit text
