# Blaze Fireball Storm + Fire Resistance
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/blaze_execute

:blaze_execute
# Give fire resistance to player
effect give @s fire_resistance 120 1

# Shoot fireballs in multiple directions
execute as @s at @s run summon fireball ^ ^1 ^5 {Motion:[0.0,0.0,1.0],ExplosionPower:2}
execute as @s at @s run summon fireball ^3 ^1 ^3 {Motion:[0.6,0.0,0.6],ExplosionPower:2}
execute as @s at @s run summon fireball ^-3 ^1 ^3 {Motion:[-0.6,0.0,0.6],ExplosionPower:2}
execute as @s at @s run summon fireball ^3 ^1 ^-3 {Motion:[0.6,0.0,-0.6],ExplosionPower:2}
execute as @s at @s run summon fireball ^-3 ^1 ^-3 {Motion:[-0.6,0.0,-0.6],ExplosionPower:2}

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Blaze Fireball Storm! Fireballs launched in all directions + Fire Resistance 2min!","color":"gold"}
