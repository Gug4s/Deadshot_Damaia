// Set initial speed
var vel_movimento = 4;

// Initialize variables for movement
var move_x = 0;
var move_y = 0;

// Check for key presses and adjust movement variables accordingly
if (keyboard_check(vk_up)) or keyboard_check(ord("W")) {
    move_y = -1;  // Move up
} 
if (keyboard_check(vk_down)) or keyboard_check(ord("S")) {
    move_y = 1;   // Move down
} 
if (keyboard_check(vk_left)) or keyboard_check(ord("A")) {
    move_x = -1;  // Move left
} 
if (keyboard_check(vk_right)) or keyboard_check(ord("D")) {
    move_x = 1;   // Move right
}

// Normalize the movement direction to prevent faster diagonal movement
if (move_x != 0 || move_y != 0) {
    var move_dir = point_direction(0, 0, move_x, move_y);  // Obter a direção do movimento do personagem
    move_x = lengthdir_x(1, move_dir);  // Normalizar a direção x
    move_y = lengthdir_y(1, move_dir);  // Normalizar a direção y 
}

// Apply the movement to the player's position
x += move_x * vel_movimento;
y += move_y * vel_movimento;
