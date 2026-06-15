# DNA Death System
# Execute as player who died

# Subtract -1 DNA
scoreboard players remove @s dna_count 1

# Don't go below 0
execute if score @s dna_count matches ..-1 run scoreboard players set @s dna_count 0

# Tell player they lost DNA
tellraw @s {"text":"DEATH! -1 DNA | Current DNA: ","color":"red"}
