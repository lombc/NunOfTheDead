// Variables for mouse position
var mx = mouse_x;
var my = mouse_y;

// Shooting controls (Left Mouse Button or Space Key)
if (can_shoot && (keyboard_check_pressed(ord("SPACE")) || mouse_check_button_pressed(mb_left))) {	
		
    audio_play_sound(sfx_cross, 1, false); // Plays once, no looping
	
	// Create the cross projectile
    var cross = instance_create_layer(x, y, "Projectiles", obj_cross);

    // Set the direction of the cross to point towards the mouse
    cross.direction = point_direction(cross.x, cross.y, mx, my);

    // Increase the projectile count
    projectile_count += 1;

    // Check if 4 projectiles have been fired consecutively
    if (projectile_count >= 4) {
        can_shoot = false;       // Start cooldown by disabling shooting
        cooldown_timer = 60;     // Set cooldown duration (e.g., 60 frames)
    }
}



