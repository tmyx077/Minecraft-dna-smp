# Check for new players and auto-assign mob on join
# This function should be run on a repeating timer (tick)

execute as @a[scores={joined=0}] run function dna/on_player_join
