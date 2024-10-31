// Check if any instance of obj_nun exists
var nun_instance = instance_nearest(0, 0, obj_nun); // Get the nearest obj_nun instance

if (nun_instance != noone && nun_instance.health <= 0) {
    // Destroy the obj_nun instance
    instance_destroy(nun_instance);

    // Destroy associated instances
    with(obj_cross) instance_destroy();
    with(obj_spawner) instance_destroy();
    with(obj_broom) instance_destroy();

    // Create obj_game_over to display the game over screen
    instance_create_layer(0, 0, "UI", obj_game_over);

    // Set an alarm for the game over duration (15000 milliseconds = 15 seconds)
    alarm[0] = room_speed * 15; // Assuming room_speed is in frames per second
}
