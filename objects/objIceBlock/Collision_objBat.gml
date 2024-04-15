if(other.frozen)
{
other.x = startingX
other.y = startingY
}

if(freezeTime = currentFreezeTime)
{
	other.frozen = false;
	instance_destroy()
}

if(unfreeze = true)
	other.frozen = false;
