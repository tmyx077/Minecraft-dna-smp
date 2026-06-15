# DNA Kill System
# Execute as player who killed another player

# Add +1 DNA to killer
scoreboard players add @s dna_count 1

# Cap at max DNA
execute if score @s dna_count > @s dna_max run scoreboard players operation @s dna_count = @s dna_max

# Tell player they gained DNA
tellraw @s {"text":"KILL! +1 DNA | Current DNA: ","color":"gold"}

# Trigger unlock notification if reached 5 DNA
execute if score @s dna_count matches 5 run tellraw @s {"text":"[ABILITY UNLOCKED] You now have 5 DNA! Use /trigger ability_use to activate!","color":"light_purple"}
