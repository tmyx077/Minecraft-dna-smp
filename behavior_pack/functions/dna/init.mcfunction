# DNA SMP Initialization
# Initialize scoreboards and tags

scoreboard objectives add dna_count dummy "DNA Count"
scoreboard objectives add dna_max dummy "DNA Max"
scoreboard objectives add mob_type dummy "Mob Type"
scoreboard objectives add ability_cooldown dummy "Ability Cooldown"
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives add kills playerKillCount "Kills"
scoreboard objectives add joined dummy "Joined"

# Tags for mob types
# 1 = Creeper, 2 = Enderman, 3 = Spider, 4 = Blaze, 5 = Ghast, 6 = Wither Skeleton, 7 = Ender Dragon, 8 = Phantom, 9 = Skeleton, 10 = Zombie

# Initialize all players
execute as @a run function dna/player_init

tellraw @a {"text":"DNA SMP System Initialized!","color":"green"}
