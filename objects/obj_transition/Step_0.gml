// Decrease the fade alpha until it reaches 0
if (fade_alpha > 0) {
    fade_alpha -= fade_speed;
} else {
    // Once fade is complete, destroy the transition object
    instance_destroy();
}
