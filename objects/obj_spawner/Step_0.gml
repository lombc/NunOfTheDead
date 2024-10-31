// Step Event of obj_spawner

// Update spawn timer
spawn_timer -= 1; // Decrease the timer

// Set the limit of active brooms based on the current wave
var active_broom_limit = (global.current_wave == 1) ? global.brooms_to_spawn : 10;

// Check the number of active brooms
var active_brooms = instance_number(obj_broom);

// Manage the spawn timer and spawn new brooms if within the active limit
if (spawn_timer <= 0 && active_brooms < active_broom_limit && global.brooms_spawned < global.brooms_to_spawn) {
    spawn_enemy();                 // Calls the separate script to spawn an enemy
    global.brooms_spawned += 1;    // Increase the count of brooms spawned for this wave
    spawn_timer = spawn_interval;  // Reset the spawn timer
}

// Check if all brooms in the current wave have been spawned and eliminated
if (global.brooms_spawned >= global.brooms_to_spawn && active_brooms == 0) {
    // All brooms in the current wave are eliminated; proceed to the next wave
    global.current_wave += 1;

    // Update wave parameters based on the current wave
    if (global.current_wave == 2) {
        global.brooms_to_spawn = 20;     // Total brooms for the second wave
        global.broom_speed = 4;          // Increase speed for the second wave
        global.broom_damage = 10;        // Increase damage for the second wave
    } else if (global.current_wave == 3) {
        global.brooms_to_spawn = 20;     // Total brooms for the third wave
        global.broom_speed = 6;          // Increase speed for the third wave
        global.broom_damage = 15;        // Increase damage for the third wave
    } else if (global.current_wave > 3) {
        // Spawn the door at the end of all waves
        if (!instance_exists(obj_door_mansion)) {
            instance_create_layer(1824, 0, "Door", obj_door_mansion);
        }
    }

    // Reset the broom spawn count for the new wave
    global.brooms_spawned = 0;
}
