# Wither Skeleton Wither Strike (20% chance to apply wither)
# Requires: 5 DNA, 5 min cooldown

execute if score @s dna_count matches 5.. run function dna/abilities/wither_execute

:wither_execute
# Deal damage to nearby enemies
execute as @s at @s run damage @e[r=8,type=!player] 6

# 20% chance to apply wither (1 in 5 chance)
execute as @s at @s if predicate {"condition":"random_chance","chance":0.2} run effect give @e[r=8,type=!player] wither 15 1

# Add cooldown
scoreboard players set @s ability_cooldown 6000

tellraw @s {"text":"Wither Skeleton Strike! 20% chance to apply Wither effect!","color":"dark_gray"}
