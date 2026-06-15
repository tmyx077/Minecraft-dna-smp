# Creeper Explosion Aura
# Requires: 5 DNA, 5 min cooldown (6000 ticks)

execute if score @s dna_count matches 5.. run function dna/abilities/creeper_execute

:creeper_execute
# Create explosion effect at player location (power 2, no fire)
execute as @s at @s run effect give @e[r=5,type=!player] weakness 5 2

# Give visual effect
execute as @s at @s run particle explosion_particle ~ ~ ~

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Creeper Aura activated! Weakness applied in 5 block radius. Cooldown: 5 min","color":"yellow"}
