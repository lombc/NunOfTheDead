global.brooms_destroyed += 1; // Increment the destroyed count each time a broom is destroyed

// Create a white explosion effect at the broom's position when it's destroyed
effect_create_above(ef_explosion, x, y, 1, c_white);