keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check_pressed(vk_up);

horizontalSpeed = (keyRight - keyLeft) * moveSpeed;

//horizontal collision
if (place_meeting(x+horizontalSpeed,y,obj_Wall))
{
	while (!place_meeting(x+sign(horizontalSpeed),y,obj_Wall))
	{
	 x = x + sign(horizontalSpeed);	
	}
	horizontalSpeed = 0;
}

x = x + horizontalSpeed;

//vertical movement

verticalSpeed = verticalSpeed + grv;

//jump
if (place_meeting(x,y+verticalSpeed,obj_Wall)) && (keyUp)
{
	verticalSpeed = -10;
}

//vertical collsion
if (place_meeting(x,y+verticalSpeed,obj_Wall))
{
	while (!place_meeting(x,y+sign(verticalSpeed),obj_Wall))
	{
	 y = y + sign(verticalSpeed);	
	}
	verticalSpeed = 0;
}

y = y + verticalSpeed;