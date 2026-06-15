# Ghast Fireball
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/ghast_execute

:ghast_execute
# Shoot large fireball
execute as @s at @s anchored eyes run summon fireball ^ ^ ^3 {Motion:[0.0,0.0,2.0],ExplosionPower:3}

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Ghast Fireball launched! High damage projectile!","color":"light_purple"}
