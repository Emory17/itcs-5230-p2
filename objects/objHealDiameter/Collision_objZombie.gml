/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objZombie))
{
	show_debug_message(objZombie.totalHealth)
	if(objZombie.totalHealth + healAmount > objZombie.totalHealth.maxHealth)
	{
		objZombie.totalHealth = objZombie.maxHealth
	}
	else
	{
		objZombie.totalHealth += healAmount
	}
	show_debug_message(objZombie.totalHealth)
}
