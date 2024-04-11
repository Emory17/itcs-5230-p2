atkangle = objPointer.direction

//increments each step to keep track of if sword should slash up or down
if(comboCooldown > 0)
	comboCooldown++;
	



if(!attacking || !global.character == pChar.knight)
{
	//Up
	if(keyboard_check(ord("W")) and !instance_place(x, y-mspeed, objOuterWall) and !dashing)
	{
		vchange += -mspeed
		moving = true; 
		lastSpeedY = -5
	}
	
	//Down
	if(keyboard_check(ord("S")) and !instance_place(x, y+mspeed, objOuterWall) and !dashing)
	{
		vchange += mspeed
		moving = true;
		lastSpeedY = 5
	}
	
	//Left
	if(keyboard_check(ord("A")) and !instance_place(x-mspeed, y, objOuterWall) and !dashing)
	{
		hchange += -mspeed 
		moving = true;
		lastSpeedX = -5
	}
	
	//Right
	if(keyboard_check(ord("D")) and !instance_place(x+mspeed, y, objOuterWall) and !dashing)
	{
		hchange += mspeed 
		moving = true;
		lastSpeedX = 5
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
		
if(mouse_check_button(mb_left) and canAttack and !dashing){
	
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
	
	if(global.character == pChar.mage and !dashing)
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

if(shieldUp && !moving)
{
	sprite_index = sprKnightShieldLess;
}


if(global.character == pChar.archer && !dashing)
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

//this is a mess but sprites are annoying
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
if(!moving && !instance_exists(objSlash) && !shieldUp)
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

if(keyboard_check(vk_space) && !attacking && canDash)
{
	canDash = false;
	moving = false //this is necessary trust me
	dashing = true;
	bowCharge = 0;
	alarm[3] = dashCooldown
}


if(dashing && dashDecay > 0)
{
	if(dashDecay = 10)
	{
		lastSpeedX = lastSpeedX * 6
		lastSpeedY = lastSpeedY * 6
	}
	
	if(lastSpeedY != 0){
		if(lastSpeedX != 0){
			lastSpeedY *= sqrt(.9)
		}
		
	}
	
	if(lastSpeedX != 0){
		if(lastSpeedY != 0){
			lastSpeedX *= sqrt(.9)
		}
		
	}

	dashDecay--
	dashDecelerate += .25;
	lastSpeedX += (dashDecelerate * -sign(lastSpeedX))
	lastSpeedY += (dashDecelerate * -sign(lastSpeedY))
	x += lastSpeedX
	y += lastSpeedY
	instance_create_depth(x,y,1,objPlayerAfterImage)
	if(dashDecay = 1)
	instance_create_depth(x-30,y-40, -2, objDashBar)
}

if (dashDecay <= 0  && dashing)
{
	dashing = false;
	dashDecay = 10
	canAttack = true
	dashDecelerate = .25;
}

if(!keyboard_check(ord("A")) &&  !keyboard_check(ord("D")) && !dashing)
	{
		lastSpeedX = 0
	}
	
if(!keyboard_check(ord("W")) &&  !keyboard_check(ord("S")) && !dashing)
	{
		lastSpeedY = 0
	}

if(!keyboard_check(ord("W")) &&  !keyboard_check(ord("S")) &&
!keyboard_check(ord("A")) &&  !keyboard_check(ord("D")) && !dashing)
	{
		lastSpeedX = 0
		lastSpeedY = 0
	}


if(mouse_check_button(mb_right) and !attacking and !dashing and global.character == pChar.knight and canAttack)
{
	
	shieldUp = true;
	canAttack = false
	attacking = true;
	moving = false
}
else if (!mouse_check_button(mb_right) and global.character == pChar.knight && shieldUp = true)
{
	shieldUp = false;
	canAttack = true
	attacking = false;
}