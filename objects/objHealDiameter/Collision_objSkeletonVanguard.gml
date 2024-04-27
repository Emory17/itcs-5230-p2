/// @description Insert description here
// You can write your code in this editor
show_debug_message(objSkeletonVanguard.totalHealth)
if(objSkeletonVanguard.totalHealth + healAmount > objSkeletonVanguard.totalHealth.maxHealth)
{
	objSkeletonVanguard.totalHealth = objSkeletonVanguard.maxHealth
}
else
{
	objSkeletonVanguard.totalHealth += healAmount
}
show_debug_message(objSkeletonVanguard.totalHealth)