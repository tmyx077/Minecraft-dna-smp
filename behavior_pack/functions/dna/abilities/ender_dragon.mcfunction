# Ender Dragon Breath Ability
# Requires: 5 DNA at level 7, 9 min cooldown (10800 ticks)

execute if score @s dna_count matches 5.. if score @s mob_type matches 7 run function dna/abilities/dragon_execute

:dragon_execute
# Shoot dragon breath
execute as @s at @s anchored eyes run summon dragon_fireball ^ ^ ^5

# Area damage
execute as @s at @s run damage @e[r=12,type=!player] 10

# Add visual particle effect
execute as @s at @s run particle dragon_breath ~ ~1 ~

# Add cooldown (9 minutes = 10800 ticks)
scoreboard players set @s ability_cooldown 10800

tellraw @s {"text":"Ender Dragon Breath activated! 10 hearts damage in 12 block radius! Cooldown: 9 min","color":"dark_purple"}
