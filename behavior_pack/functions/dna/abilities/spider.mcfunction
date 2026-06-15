# Spider Wall Climb
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/spider_execute

:spider_execute
# Give resistance and speed to player
effect give @s resistance 30 1
effect give @s speed 30 2
effect give @s jump_boost 30 2

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Spider Wall Climb activated! Resistance + Speed + Jump Boost for 30 seconds!","color":"gray"}
