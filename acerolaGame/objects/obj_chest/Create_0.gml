/// @description 

// Inherit the parent event
event_inherited();

desc = "Loot!"

looted = false

dropSeqDown = sq_lootDropCommonDown
dropSeqRight = sq_lootDropCommonRight
dropSeq = dropSeqDown
seqDir = 1

seq = noone

groundTiles = layer_tilemap_get_id("Ground")

drops = 1
drop2Seq = sq_lootDrop2Down
drop3Seq = sq_lootDrop3Down
