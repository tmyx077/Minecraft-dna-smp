# DNA Upgrader Recipe
# Crafted from moderately expensive materials
# Recipe: Upgrade your mob ability level
# Cost: 5 Lapis Lazuli Blocks, 2 Amethyst Shard, 1 Nether Star

# This function should be called when player crafts the upgrader
# Can be crafted infinite times

give @s crafting_table
tellraw @s {"text":"DNA Upgrader crafted! Materials used: 5 Lapis Blocks, 2 Amethyst Shards, 1 Nether Star","color":"blue"}
