# Enderman Teleport Strike
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/enderman_execute

:enderman_execute
# Teleport player to look position (forward 20 blocks)
execute as @s at @s anchored eyes run tp @s ^ ^ ^20

# Damage nearby enemies
execute as @s at @s run damage @e[r=8,type=!player] 5

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Enderman Teleport Strike! Teleported forward and damaged enemies!","color":"dark_purple"}
