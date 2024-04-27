/// @description Insert description here
// You can write your code in this editor
show_debug_message(objSkeleton.totalHealth)
if(objSkeleton.totalHealth + healAmount > objSkeleton.totalHealth.maxHealth)
{
	objSkeleton.totalHealth = objSkeleton.maxHealth
}
else
{
	objSkeleton.totalHealth += healAmount
}
show_debug_message(objSkeleton.totalHealth)