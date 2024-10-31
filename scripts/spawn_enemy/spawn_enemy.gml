/// @function spawn_enemy()
/// @description Spawns an enemy (obj_broom) from a random edge of the room and creates a white smoke explosion effect upon spawn.

function spawn_enemy() {
    // Randomly choose an edge (0 = top, 1 = right, 2 = bottom, 3 = left)
    var edge = irandom(3); 
    
    var spawn_x, spawn_y;
    
    // Determine spawn position based on the chosen edge
    switch (edge) {
        case 0: // Top edge
            spawn_x = irandom(room_width);
            spawn_y = 0;
            break;
        case 1: // Right edge
            spawn_x = room_width;
            spawn_y = irandom(room_height);
            break;
        case 2: // Bottom edge
            spawn_x = irandom(room_width);
            spawn_y = room_height;
            break;
        case 3: // Left edge
            spawn_x = 0;
            spawn_y = irandom(room_height);
            break;
    }

    // Create the enemy at the calculated position
    var broom_instance = instance_create_layer(spawn_x, spawn_y, "Enemies", obj_broom);

    // Initialize health, speed, and damage for the new instance based on the current wave
    broom_instance.health = 20;                  // Default health; adjust if needed
    broom_instance.speed = global.broom_speed;   // Speed based on wave
    broom_instance.damage = global.broom_damage; // Damage based on wave

    // Create a white explosion effect at the spawn location
    effect_create_above(ef_explosion, spawn_x, spawn_y, 1, c_white);
}
