if(other.frozen)
{
other.x = startingX
other.y = startingY
other.image_index = 0
}

if(freezeTime = currentFreezeTime)
{
	other.frozen = false;
	instance_destroy()
}

if(unfreeze = true)
	other.frozen = false;
