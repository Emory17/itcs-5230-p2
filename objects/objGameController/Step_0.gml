if(room == TestRoom){
	if(!cleared && !instance_exists(objBat)){
		cleared = true
		instance_create_layer(1792, 540, "Instances", objDoor)	
	}
}