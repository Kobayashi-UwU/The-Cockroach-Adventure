/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_space = keyboard_check(vk_space);
key_w = keyboard_check(ord("W"));
key_jump = key_space || key_w;

// calculate movement
var move = key_right - key_left;

// Add an idle state
var idle = !key_left && !key_right;

// Set sprite index based on state
if (idle)
{
    sprite_index = sPlayerIdle;
}
else
{
	sprite_index = sPlayer;
}

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -15;
}

// Horizontal collistion
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// Horizontal collistion
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;