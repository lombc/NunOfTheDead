// Set spawn interval (in steps)
spawn_interval = 120; // Adjust as needed (e.g., 120 steps = 2 seconds at 60 FPS)
spawn_timer = spawn_interval; // Timer for the next spawn

// Initialize wave variables (only once, if they don't exist)
if (!variable_global_exists("current_wave")) {
    global.current_wave = 1;          // Start at wave 1
    global.brooms_spawned = 0;        // Track brooms spawned in the current wave
    global.broom_speed = 2;           // Initial speed for the first wave
    global.broom_damage = 5;          // Initial damage for the first wave
    global.brooms_to_spawn = 20;      // Total brooms for the first wave
}

global.brooms_destroyed = 0; // Initialize destroyed brooms counter
