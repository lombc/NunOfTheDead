function scr_adjust_depth_for_nun() {
    // Set default depth based on y position for basic layering
    depth = -y;

    // Define the range within which depth adjustment should apply
    var range_limit = 300; // Adjust this value as needed

    // Arrays to store objects to check and their respective nearest instances
    var objects_to_check = [obj_tree, obj_gravestone_01, obj_gravestone_02];
    var nearest_instance = noone; // Initialize to noone to avoid errors
    var closest_distance = range_limit;

    // Loop through each object type and find the nearest within range
    for (var i = 0; i < array_length(objects_to_check); i++) {
        var instance = instance_nearest(x, y, objects_to_check[i]);
        
        if (instance != noone) {
            var dist = point_distance(x, y, instance.x, instance.y);
            
            // Only adjust depth if within the range and it's the closest
            if (dist < closest_distance) {
                closest_distance = dist;
                nearest_instance = instance;
            }
        }
    }

    // Adjust depth relative to the nearest object if within range
    if (nearest_instance != noone) {
        if (y < nearest_instance.y) {
            depth = nearest_instance.depth + 1; // Place behind the object
        } else {
            depth = nearest_instance.depth - 1; // Place in front of the object
        }
    }
}
