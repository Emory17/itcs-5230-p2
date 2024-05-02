if(room == TestRoom or room == CastleLevel1 or room == CastleLevel2 or 
   room == CastleLevel3 or room == CastleLevel4 or room == CastleLevel5 or 
   room == ForestLevel1 or room == ForestLevel2 or room == ForestLevel3 or 
   room == ForestLevel4 or room == ForestLevel5)
{
	if(!cleared && !instance_exists(objBat)){
		cleared = true
		instance_create_layer(1750, 600, "Instances", objDoor)	
	}
}