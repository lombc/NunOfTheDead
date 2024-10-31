// Code partially made with ChatGPT

var walk_W = keyboard_check(ord("W"));
var walk_A = keyboard_check(ord("A"));
var walk_S = keyboard_check(ord("S"));
var walk_D = keyboard_check(ord("D"));


// This is called when the player collides with a wall
// Example: Move the player back slightly
if (walk_D == true) or (keyboard_check(vk_right)) {
    x = x - 1; // Move back left
}
if (walk_A == true) or (keyboard_check(vk_left)) {
    x = x + 1; // Move back right
}
if (walk_S == true) or (keyboard_check(vk_down)) {
    y = y - 1; // Move back up
}
if (walk_W == true) or (keyboard_check(vk_up)) {
    y = y + 1; // Move back down
}
