// Code partially made with ChatGPT

game_over_timer = 0;

// Spawn the player at the center of the room
global.player_instance = instance_create_layer(room_width / 2, room_height - 300, "Nun_Layer", obj_nun);

// Initialize obj_nun health
global.player_instance.health = 100; // Set health for the spawned instance
global.player_instance.max_health = 100; // Maximum health for scaling hearts
global.player_instance.heart_count = global.player_instance.max_health / 20; // Each heart represents 20 health