// Speed of the player
var n_speed = 10;

// Movement inputs
var h_move = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
var v_move = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));

// Calculate the desired movement vector
var move_x = h_move * n_speed;
var move_y = v_move * n_speed;

// Depth logic when crossing background objects
scr_adjust_depth_for_nun();

// Check if the player is moving
if (h_move != 0 || v_move != 0) {
    // Set running sprite
    sprite_index = spr_nun_run;

    // Check for collision with walls and other objects
    if (!place_meeting(x + move_x, y, obj_wall) && 
        !place_meeting(x + move_x, y, obj_tree) && 
        !place_meeting(x + move_x, y, obj_gravestone_01) && 
        !place_meeting(x + move_x, y, obj_gravestone_02) && 
        !place_meeting(x + move_x, y, obj_wall_mansion)){
        x += move_x; // Move horizontally if there's no collision
    }
    
    if (!place_meeting(x, y + move_y, obj_wall) && 
        !place_meeting(x, y + move_y, obj_tree) && 
        !place_meeting(x, y + move_y, obj_gravestone_01) && 
        !place_meeting(x, y + move_y, obj_gravestone_02) && 
        !place_meeting(x + move_x, y, obj_wall_mansion)) {
        y += move_y; // Move vertically if there's no collision
    }

    // Flip the sprite for horizontal movement
    if (h_move != 0) {
        image_xscale = h_move > 0 ? 1 : -1; // Flip based on direction
    }
} else {
    // If not moving, switch to idle sprite
    sprite_index = spr_nun_idle;
}

// Cooldown logic for Global Left Pressed event (shooting crosses!!)
if (!can_shoot) {
    // Decrease the cooldown timer each step
    cooldown_timer -= 1;

    // Reactivate shooting when cooldown is over
    if (cooldown_timer <= 0) {
        can_shoot = true;       // Allow shooting again
        projectile_count = 0;   // Reset projectile count
    }
}




