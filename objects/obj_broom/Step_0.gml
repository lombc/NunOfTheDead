// Step Event of obj_broom

// Find the nearest player instance (obj_nun)
var target = instance_nearest(x, y, obj_nun);

// Check if the target is valid
if (target != noone) {
    // Calculate the move direction towards the player
    var move_direction = point_direction(x, y, target.x, target.y);
    
    // Check for right edge and adjust direction
    if (x >= room_width - sprite_width / 2) {
        move_direction = 180; // Set direction to left if stuck at right edge
    }

    // Calculate new position based on direction and speed
    var new_x = x + lengthdir_x(speed, move_direction);
    var new_y = y + lengthdir_y(speed, move_direction);

    // Check for collision with obj_wall
    if (!instance_position(new_x, new_y, obj_wall)) {
        // Move only if there’s no collision
        x = new_x;
        y = new_y;
    } else {
        // If there is a collision, reverse direction or handle it appropriately
        if (x >= room_width - sprite_width / 2) {
            x = room_width - sprite_width / 2 - 1; // Adjust to avoid getting stuck
        } else {
            // Handle other collisions if necessary
        }
    }

    // Optional: Handle damage to obj_nun
    if (instance_exists(target) && instance_position(new_x, new_y, obj_nun)) {
        target.health -= damage_amount;
        instance_destroy(); // Destroy obj_broom after damaging
    }
}

// Set depth and direction
depth = -y;
direction = move_direction;

// Set xscale based on horizontal speed
if (hspeed != 0) {
    image_xscale = -sign(hspeed);
}
