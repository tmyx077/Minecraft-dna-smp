# Reduce ability cooldown each tick
execute as @a if score @s ability_cooldown matches 1.. run scoreboard players remove @s ability_cooldown 1
