// Collision event of obj_cross with obj_broom

var damage_amount = 5; // Damage dealt by obj_cross

// Check if this instance collides with obj_broom
var broom_instance = instance_place(x, y, obj_broom);

if (broom_instance != noone) { // Ensure we found a valid obj_broom instance

    // Deal damage to obj_broom
    broom_instance.health -= damage_amount;

    // Check if obj_broom's health is zero or below
    if (broom_instance.health <= 0) {
        instance_destroy(broom_instance); // Destroy obj_broom if health is zero
    }

    // Destroy obj_cross after dealing damage
    instance_destroy(); // Destroy obj_cross
}

