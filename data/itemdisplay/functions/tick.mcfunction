execute as @e[type=item] at @s if block ~ ~ ~ smooth_stone_slab run data merge entity @s {PickupDelay:2s,Age:1s}
execute as @e[type=item,tag=!aligned] at @s if block ~ ~ ~ smooth_stone_slab run tag @s add align
execute as @e[type=item,tag=align] at @s run summon item_frame ~ ~257 ~ {Tags:["aligner"]}
execute as @e[type=item,tag=align] at @s run tp @s @e[tag=aligner,limit=1]
execute as @e[type=item,tag=align] at @s run tp @s ~ ~-257 ~
execute as @e[type=item,tag=align] at @s run data merge entity @s {Motion:[0.0,-0.5,0.0]}
execute as @e[type=item,tag=align] at @s run kill @e[tag=aligner]
execute as @e[type=item,tag=align] at @s run tag @s add aligned
execute as @e[type=item,tag=align] at @s run tag @s remove align
