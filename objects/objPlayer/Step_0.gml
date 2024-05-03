atkangle = objPointer.direction
dashFrame++
if(totalHealth > maxHP)
{
	totalHealth = maxHP
}

//increments each step to keep track of if sword should slash up or down
if(comboCooldown > 0)
	comboCooldown++;
	


if(!attacking || !global.character == pChar.knight)
{
	//Up
	if(keyboard_check(ord("W")) and !instance_place(x, y-mspeed, objOuterWall) and !instance_place(x, y-mspeed, objInnerWall)
	and !instance_place(x, y-mspeed, objHole) and !instance_place(x, y-mspeed, objBox) and !dashing)
	{
		vchange += -mspeed
		moving = true; 
		lastSpeedY = -5
	}
	
	//Down
	if(keyboard_check(ord("S")) and !instance_place(x, y+mspeed, objOuterWall) and !instance_place(x, y+mspeed, objInnerWall)
	and !instance_place(x, y+mspeed, objHole) and !instance_place(x, y+mspeed, objBox) and !dashing)
	{
		vchange += mspeed
		moving = true;
		lastSpeedY = 5
	}
	
	//Left
	if(keyboard_check(ord("A")) and !instance_place(x-mspeed, y, objOuterWall) and !instance_place(x-mspeed, y, objInnerWall)
	and !instance_place(x-mspeed, y, objHole) and !instance_place(x-mspeed, y, objBox) and !dashing)
	{
		hchange += -mspeed 
		moving = true;
		lastSpeedX = -5
	}
	
	//Right
	if(keyboard_check(ord("D")) and !instance_place(x+mspeed, y, objOuterWall) and !instance_place(x+mspeed, y, objInnerWall)
	and !instance_place(x+mspeed, y, objHole) and !instance_place(x+mspeed, y, objBox) and !dashing)
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
		audio_play_sound(playerSwordSwing,1,false)
		
		canAttack = false
		alarm[1] = atkcooldown
		instance_create_layer(x + (dcos(atkangle) * 110), y - (dsin(atkangle) * 110), "Instances", atkObj)
		if(global.primaryUpgrade1)
			{
				audio_play_sound(playerSwordBeam, 1, false)
				instance_create_layer(x + (dcos(atkangle) * 80), y - (dsin(atkangle) * 80), "Instances", objSwordBeam)
			}
	}
	
	if(global.character == pChar.mage)
	{
		if(mana >= 20)
		{
			audio_play_sound(playerCast,1,false);
			attacking = true
			canAttack = false
			objWand.image_speed = 2
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
		if(objBow.bowCharge == 1)
			audio_play_sound(playerBowDraw, 1, false)
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
	dashFrame = 0
	canDash = false;
	moving = false //this is necessary trust me
	dashing = true;
	bowCharge = 0;
	alarm[3] = dashCooldown
	if(lastSpeedX != 0 || lastSpeedY != 0)
		audio_play_sound(playerDash,1,false);
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
	instance_create_depth(x,y,2,objPlayerAfterImage)
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
	audio_play_sound(playerShieldEquip, 1, false)
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
 
if(mouse_check_button(mb_right) and !dashing && !attacking){
	if(canGust)
		superWindCharge++
	if(canGust and global.secondaryUpgrade1 and superWindCharge == 1 and global.character == pChar.archer)
		audio_play_sound(bigWindCharge, 1, false)
	
	if(global.character == pChar.mage and !attacking)
	{
		if(mana >= (global.secondaryUpgrade2 ? 65 : 80))
		{
			audio_play_sound(playerCast,1,false);
			attacking = true
			canAttack = false
			objWand.image_speed = 2
			mana -= (global.secondaryUpgrade2 ? 65 : 80);
			objWand.iceSpell = true;
			objWand.sprite_index = sprWandIce
		}
		
	}
	
	
}

if(!canGust)
	windCharge++


if(rage < 0)
	rage = 0

if(dashFrame > dashIframesStart && dashFrame < dashIframesEnd && global.dashIframes)
{
	invincible = true;
	image_alpha = .4
	
}
if(dashFrame == dashIframesEnd && global.dashIframes)
{
	invincible = false
	image_alpha = 1
	
}

if(shieldUp && keyboard_check(vk_space) && canDash && global.secondaryUpgrade1 && !bashing)
{
	attacking = true
	bashing = true
	canDash = false;
	moving = false 
	direction = atkangle;
	speed = 15
	bashTime = 1
	alarm[3] = dashCooldown
	instance_create_depth(x,y,0,objShieldBash)
	audio_play_sound(playerShieldBash, 1, false)
}

if(bashing)
{
	shieldUp = true;
	instance_create_depth(x,y,2,objPlayerAfterImage)
	bashTime++
}

if(bashTime >= 15)
{
	attacking = true
	bashing = false
	canDash = false;
	direction = atkangle;
	speed = 0
	bashTime = 0
	instance_create_depth(x-30,y-40, -2, objDashBar)
}

if(shieldUp and mouse_check_button(mb_left) and mouse_check_button(mb_right))
{
	if(objShield.mirrorCharge >= 1 && global.secondaryUpgrade2)
	{
		audio_play_sound(playerShieldBeam, 1, false)
		instance_create_depth(objShield.x, objShield.y, -1, objShieldBeam,
		{direction: objShield.direction,
		chargePower : objShield.mirrorCharge})
		objShield.mirrorCharge = 0
	}

}

if(!mouse_check_button(mb_right) and !dashing and !attacking)
{
	if(global.character == pChar.archer && canGust && superWindCharge > 0)
	{
		canGust = false
		windCharge = 0
		objBow.bowCharge = 0;
		alarm[1] = gustCooldown;
		
		
		if(superWindCharge < 90 || !global.secondaryUpgrade1)
		{
			audio_play_sound(playerWindGust, 1, false)
			audio_stop_sound(bigWindCharge)
			instance_create_layer(x + (dcos(atkangle) * 50), y - (dsin(atkangle) * 50), "Instances", objWindGust,
			{direction: atkangle})
			
			if(global.secondaryUpgrade2)
			{
				instance_create_layer(x + (dcos(atkangle) * 50), y - (dsin(atkangle) * 50), "Instances", objWindGust, 
				{direction: atkangle + 20})
				instance_create_layer(x + (dcos(atkangle) * 50), y - (dsin(atkangle) * 50), "Instances", objWindGust, 
				{direction: atkangle - 20})
			}
		}
		else if (superWindCharge >= 90 && global.secondaryUpgrade1)
		{
			instance_create_layer(x + (dcos(atkangle) * 50), y - (dsin(atkangle) * 50), "Instances", objWindGust,
			{direction: atkangle,
			bigWind : true})
			audio_play_sound(playerBigWindGust,1,false)
		}
		superWindCharge = 0
	}
}

if(startProtection)
{
	invincible = true
}