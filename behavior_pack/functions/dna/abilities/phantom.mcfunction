# Phantom Flight Burst
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/phantom_execute

:phantom_execute
# Give levitation and speed for flight burst
effect give @s levitation 10 2
effect give @s speed 10 3

# Add visual particles
execute as @s at @s run particle totem_particle ~ ~ ~

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Phantom Flight Burst activated! Levitation + Speed for 10 seconds! Cooldown: 5 min","color":"purple"}
