# Skeleton Arrow Barrage
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/skeleton_execute

:skeleton_execute
# Shoot arrows in multiple directions (8 arrows in a circle)
execute as @s at @s anchored eyes run summon arrow ^ ^ ^3 {Motion:[0.0,0.0,1.5]}
execute as @s at @s anchored eyes run summon arrow ^1.5 ^ ^1.5 {Motion:[1.0,0.0,1.0]}
execute as @s at @s anchored eyes run summon arrow ^1.5 ^ ^-1.5 {Motion:[1.0,0.0,-1.0]}
execute as @s at @s anchored eyes run summon arrow ^ ^ ^-3 {Motion:[0.0,0.0,-1.5]}
execute as @s at @s anchored eyes run summon arrow ^-1.5 ^ ^-1.5 {Motion:[-1.0,0.0,-1.0]}
execute as @s at @s anchored eyes run summon arrow ^-1.5 ^ ^1.5 {Motion:[-1.0,0.0,1.0]}

# Add visual effect
execute as @s at @s run particle arrow_particle ~ ~1 ~

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Skeleton Arrow Barrage! 6 arrows fired in all directions! Cooldown: 5 min","color":"white"}
