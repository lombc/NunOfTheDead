// Step Event of obj_main_menu

// Check for mouse click on the buttons
if (mouse_check_button_pressed(mb_left)) {
    var mouse_x_pos = mouse_x;
    var mouse_y_pos = mouse_y;

    // Define button area for "Start Game"
    if (mouse_x_pos >= 1216 - 100 && mouse_x_pos <= 1216 + 100 &&
        mouse_y_pos >= 896 - 20 && mouse_y_pos <= 896 + 20) {
        
        // Stop the music
        audio_stop_sound(snd_main_menu); // Replace with your actual sound asset name
        
        // Transition to the graveyard room
        room_goto(rm_graveyard);
    }

    // Define button area for "Exit"
    if (mouse_x_pos >= 1632 - 100 && mouse_x_pos <= 1632 + 100 &&
        mouse_y_pos >= 896 - 20 && mouse_y_pos <= 896 + 20) {
        
        // Exit the game
        game_end(); // This will close the game
    }
}
