atkangle = point_direction(x,y,mouse_x,mouse_y)

//increments each step to keep track of if sword should slash up or down
if(comboCooldown > 0)
	comboCooldown++;

if(!attacking || !global.character == pChar.knight)
{
	//Up
	if(keyboard_check(ord("W")) and !instance_place(x, y-mspeed, objOuterWall))
	{
		vchange += -mspeed
		moving = true; 
	}
	
	//Down
	if(keyboard_check(ord("S")) and !instance_place(x, y+mspeed, objOuterWall))
	{
		vchange += mspeed
		moving = true;
	}
	
	//Left
	if(keyboard_check(ord("A")) and !instance_place(x-mspeed, y, objOuterWall))
	{
		hchange += -mspeed 
	}
	
	//Right
	if(keyboard_check(ord("D")) and !instance_place(x+mspeed, y, objOuterWall))
	{
		hchange += mspeed 
		moving = true;
	}
	
	if(!keyboard_check(ord("D")) && !keyboard_check(ord("A")) && !keyboard_check(ord("S")) && !keyboard_check(ord("W")))
	{
		moving = false
	}
	
	if(vchange != 0){
		if(hchange != 0){
			vchange *= sqrt(0.5)
		}
		
		y += vchange
	}
	
	if(hchange != 0){
		if(vchange != 0){
			hchange *= sqrt(0.5)
		}
		
		x += hchange
	}
	
	vchange = 0
	hchange = 0
	
}

if(objPlayer.atkangle < 90 || objPlayer.atkangle > 270)
{
	image_xscale = 1
}
else
{
	image_xscale = -1
}
		
if(mouse_check_button(mb_left) and canAttack){
	
	direction = atkangle;
	
	if(global.character == pChar.knight)
	{
		
		//slash object turns speed and attacking back to zero and false respectivly
		speed = 5
		attacking = true
		//audio_play_sound(playerSwordSwing,1,false)
		
		canAttack = false
		alarm[1] = atkcooldown
		instance_create_layer(x + (dcos(atkangle) * 110), y - (dsin(atkangle) * 110), "Instances", atkObj)
	}
	
	if(global.character == pChar.mage)
	{
		if(mana >= 20)
		{
			attacking = true
			canAttack = false
			objWand.image_speed = 1.5
			mana -= 20;
		}
		
	}
	
	
}

if(instance_exists(objSlash) && !moving)
{
	sprite_index = sprKnightSwordless;
}


if(global.character == pChar.archer)
{
	if(mouse_check_button(mb_left))
	{
		//if(objBow.bowCharge == 1)
			//audio_play_sound(playerBowDraw, 1, false)
		objBow.bowCharge++
		attacking = true
		
	}
	else
	{
		audio_stop_sound(playerBowDraw)
		objBow.bowCharge = 0;
		attacking = false;
	}
}

//this is mess but sprites are annoying
if(moving)
{
	if(global.character == pChar.knight)
	{
		sprite_index = sprKnightMove;
	}
	else if(global.character == pChar.archer)
	{
		sprite_index = sprArcherMoving;
	}
	else
	{
		sprite_index = sprMageMove;
	}
}
if(!moving && !instance_exists(objSlash))
{
	if(global.character == pChar.knight)
	{
		sprite_index = sprKnight;
	}
	else if(global.character == pChar.archer)
	{
		sprite_index = sprArcher;
	}
	else
	{
		sprite_index = sprMage;
	}
}