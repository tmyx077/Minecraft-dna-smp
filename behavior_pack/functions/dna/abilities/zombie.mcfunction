# Zombie Infection Regen
# Requires: 5 DNA, 5 min cooldown
# Give yourself regeneration and apply weakness to nearby enemies

execute if score @s dna_count matches 5.. run function dna/abilities/zombie_execute

:zombie_execute
# Give player regeneration effect (45 seconds)
effect give @s regeneration 45 2

# Apply weakness to nearby enemies
execute as @s at @s run effect give @e[r=8,type=!player] weakness 20 1

# Deal some damage to enemies
execute as @s at @s run damage @e[r=8,type=!player] 3

# Add visual effect
execute as @s at @s run particle effect ~ ~ ~

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Zombie Infection activated! You gain Regeneration II for 45s + Weakness on enemies! Cooldown: 5 min","color":"green"}
