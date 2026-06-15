# Assign random mob type to player
# Mob types: 1=Creeper, 2=Enderman, 3=Spider, 4=Blaze, 5=Ghast, 6=Wither Skeleton, 7=Ender Dragon

# Use random number (0-6) and add 1
scoreboard players set @s mob_type 0
execute store result score @s mob_type run random value 1..7

# Give player appropriate item to represent their mob
execute if score @s mob_type matches 1 run give @s gunpowder 1
execute if score @s mob_type matches 2 run give @s ender_pearl 1
execute if score @s mob_type matches 3 run give @s string 1
execute if score @s mob_type matches 4 run give @s blaze_rod 1
execute if score @s mob_type matches 5 run give @s ghast_tear 1
execute if score @s mob_type matches 6 run give @s bone 1
execute if score @s mob_type matches 7 run give @s dragon_breath 1

# Tell player their mob type
execute if score @s mob_type matches 1 run tellraw @s {"text":"You have been assigned: Creeper! Ability: Explosion Aura (5 block radius)","color":"green"}
execute if score @s mob_type matches 2 run tellraw @s {"text":"You have been assigned: Enderman! Ability: Teleport Strike","color":"green"}
execute if score @s mob_type matches 3 run tellraw @s {"text":"You have been assigned: Spider! Ability: Wall Climb","color":"green"}
execute if score @s mob_type matches 4 run tellraw @s {"text":"You have been assigned: Blaze! Ability: Fireball Storm + Fire Resistance","color":"green"}
execute if score @s mob_type matches 5 run tellraw @s {"text":"You have been assigned: Ghast! Ability: Fireball","color":"green"}
execute if score @s mob_type matches 6 run tellraw @s {"text":"You have been assigned: Wither Skeleton! Ability: Wither Strike (20% chance)","color":"green"}
execute if score @s mob_type matches 7 run tellraw @s {"text":"You have been assigned: Ender Dragon! Ability: Dragon's Breath","color":"green"}
