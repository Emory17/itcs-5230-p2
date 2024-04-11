cooldownTime++
image_xscale = cooldownTime/objPlayer.dashCooldown * 2

x = objPlayer.x - 30
y = objPlayer.y - 40

if(objPlayer.canDash)
	instance_destroy()