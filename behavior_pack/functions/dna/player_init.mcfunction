# Initialize player with DNA system
scoreboard players set @s dna_count 0
scoreboard players set @s dna_max 5
scoreboard players set @s mob_type 0
scoreboard players set @s ability_cooldown 0

# Assign random mob type on first join (if mob_type is 0)
execute if score @s mob_type matches 0 run function dna/assign_random_mob
