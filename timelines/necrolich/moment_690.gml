
audio_play_sound(necrolichLaugh,1 ,false)
spawnlist = [objSkeletonVanguard,objVampire,objGhost,objWarlock]
sran = 3
audio_play_sound(warlockSummon, 1, false)
val = irandom(sran)
instance_create_layer(270, 540, "Instances", spawnlist[val])

val = irandom(sran)
instance_create_layer(810, 540, "Instances", spawnlist[val])

