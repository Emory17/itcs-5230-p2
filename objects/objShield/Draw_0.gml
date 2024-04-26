if(global.secondaryUpgrade2)
{
	if(mirrorCharge == 1)
	{
		draw_sprite_ext(sprShield, image_index, objPointer.x + (dcos(atkangle) * 70), objPointer.y - (dsin(atkangle) * 70),
		image_xscale, image_yscale, image_angle, c_aqua, 1)
	}
	else if(mirrorCharge == 2)
	{
		draw_sprite_ext(sprShield, image_index, objPointer.x + (dcos(atkangle) * 70), objPointer.y - (dsin(atkangle) * 70),
		image_xscale, image_yscale, image_angle, c_blue, 1)
	}
	else if(mirrorCharge = 3)
	{
		draw_sprite_ext(sprShield, image_index, objPointer.x + (dcos(atkangle) * 70), objPointer.y - (dsin(atkangle) * 70),
		image_xscale, image_yscale, image_angle, c_purple, 1)
	}
	else
		draw_self()
	
}
else
	draw_self()