# Player join handler - automatically assign random mob

# Initialize player stats
scoreboard players set @s dna_count 0
scoreboard players set @s dna_max 5
scoreboard players set @s ability_cooldown 0

# Assign random mob type
execute store result score @s mob_type run random value 1..10

# Mark player as joined
scoreboard players set @s joined 1

# Give player appropriate item to represent their mob
execute if score @s mob_type matches 1 run give @s gunpowder 1
execute if score @s mob_type matches 2 run give @s ender_pearl 1
execute if score @s mob_type matches 3 run give @s string 1
execute if score @s mob_type matches 4 run give @s blaze_rod 1
execute if score @s mob_type matches 5 run give @s ghast_tear 1
execute if score @s mob_type matches 6 run give @s bone 1
execute if score @s mob_type matches 7 run give @s dragon_breath 1
execute if score @s mob_type matches 8 run give @s phantom_membrane 1
execute if score @s mob_type matches 9 run give @s arrow 1
execute if score @s mob_type matches 10 run give @s rotten_flesh 1

# Tell player their mob type and welcome them
tellraw @s {"text":"========================================","color":"gold"}
tellraw @s {"text":"Welcome to DNA SMP!","color":"light_purple"}
tellraw @s {"text":"========================================","color":"gold"}

execute if score @s mob_type matches 1 run tellraw @s {"text":"🧬 You have been assigned: CREEPER! 🧬","color":"green"}
execute if score @s mob_type matches 1 run tellraw @s {"text":"Ability: Explosion Aura - Applies Weakness in 5 block radius","color":"yellow"}

execute if score @s mob_type matches 2 run tellraw @s {"text":"🧬 You have been assigned: ENDERMAN! 🧬","color":"dark_purple"}
execute if score @s mob_type matches 2 run tellraw @s {"text":"Ability: Teleport Strike - Teleports forward 20 blocks + deals damage","color":"yellow"}

execute if score @s mob_type matches 3 run tellraw @s {"text":"🧬 You have been assigned: SPIDER! 🧬","color":"gray"}
execute if score @s mob_type matches 3 run tellraw @s {"text":"Ability: Wall Climb - Resistance + Speed + Jump Boost for 30s","color":"yellow"}

execute if score @s mob_type matches 4 run tellraw @s {"text":"🧬 You have been assigned: BLAZE! 🧬","color":"gold"}
execute if score @s mob_type matches 4 run tellraw @s {"text":"Ability: Fireball Storm - Launches 5 fireballs + Fire Resistance","color":"yellow"}

execute if score @s mob_type matches 5 run tellraw @s {"text":"🧬 You have been assigned: GHAST! 🧬","color":"light_purple"}
execute if score @s mob_type matches 5 run tellraw @s {"text":"Ability: Fireball - Launches large powerful fireball","color":"yellow"}

execute if score @s mob_type matches 6 run tellraw @s {"text":"🧬 You have been assigned: WITHER SKELETON! 🧬","color":"dark_gray"}
execute if score @s mob_type matches 6 run tellraw @s {"text":"Ability: Wither Strike - Deals damage + 20% chance for Wither effect","color":"yellow"}

execute if score @s mob_type matches 7 run tellraw @s {"text":"🧬 You have been assigned: ENDER DRAGON! 🧬","color":"dark_purple"}
execute if score @s mob_type matches 7 run tellraw @s {"text":"Ability: Dragon's Breath - Shoots dragon breath, 10 hearts damage (12 block radius)","color":"yellow"}

execute if score @s mob_type matches 8 run tellraw @s {"text":"🧬 You have been assigned: PHANTOM! 🧬","color":"purple"}
execute if score @s mob_type matches 8 run tellraw @s {"text":"Ability: Flight Burst - Levitation + Speed for 10 seconds","color":"yellow"}

execute if score @s mob_type matches 9 run tellraw @s {"text":"🧬 You have been assigned: SKELETON! 🧬","color":"white"}
execute if score @s mob_type matches 9 run tellraw @s {"text":"Ability: Arrow Barrage - Shoots 6 arrows in all directions","color":"yellow"}

execute if score @s mob_type matches 10 run tellraw @s {"text":"🧬 You have been assigned: ZOMBIE! 🧬","color":"green"}
execute if score @s mob_type matches 10 run tellraw @s {"text":"Ability: Infection Regen - Regeneration II (45s) + Weakness on enemies","color":"yellow"}

tellraw @s {"text":"========================================","color":"gold"}
tellraw @s {"text":"📊 Goal: Get 5 DNA to unlock your ability!","color":"aqua"}
tellraw @s {"text":"✅ +1 DNA per kill | ❌ -1 DNA per death","color":"aqua"}
tellraw @s {"text":"========================================","color":"gold"}
