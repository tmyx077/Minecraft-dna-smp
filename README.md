# Minecraft Bedrock DNA SMP

A comprehensive DNA-based ability system for Minecraft Bedrock Edition multiplayer servers.

## Features

### DNA System
- **+1 DNA** when you kill a player
- **-1 DNA** when you die
- **Max DNA: 5**
- When you reach 5 DNA, unlock your mob's special ability

### Mob Types & Abilities

Each player is assigned a random mob on first join:

| Mob | Ability | Effect | Cooldown |
|-----|---------|--------|----------|
| **Creeper** | Explosion Aura | Applies Weakness in 5 block radius | 5 min |
| **Enderman** | Teleport Strike | Teleports forward 20 blocks + deals damage | 5 min |
| **Spider** | Wall Climb | Resistance + Speed + Jump Boost for 30s | 5 min |
| **Blaze** | Fireball Storm | Launches 5 fireballs + Fire Resistance | 5 min |
| **Ghast** | Fireball | Launches large powerful fireball | 5 min |
| **Wither Skeleton** | Wither Strike | Deals damage + 20% chance for Wither effect | 5 min |
| **Ender Dragon** | Dragon's Breath | Shoots dragon breath, 10 hearts damage (12 block radius) | 9 min |
| **Phantom** | Flight Burst | Levitation + Speed for 10 seconds | 5 min |
| **Skeleton** | Arrow Barrage | Shoots 6 arrows in all directions | 5 min |
| **Zombie** | Infection Regen | Regeneration II (45s) + Weakness on enemies | 5 min |

### Crafting Recipes

#### DNA Upgrader (Moderate Cost - Infinite Crafts)
- 5 Lapis Lazuli Blocks
- 2 Amethyst Shards
- 1 Nether Star

#### DNA Trader (Expensive - Infinite Trades)
- 1 Ender Dragon Head
- 10 Nether Stars
- 2 Dragon Eggs
- 5 Emerald Blocks
- 3 Beacons
- **Reward:** DNA Enhancement + Special Ability Boost

### Installation

1. Download both the Behavior Pack and Resource Pack
2. Extract them to your Bedrock worlds folder
3. Enable both packs in your world settings
4. Run: `/function dna/init`
5. Give players the start command, or restart world to initialize

### Commands

**Initialize System:**
```
/function dna/init
```

**Initialize New Player:**
```
/function dna/player_init
```

**Activate Ability (when you have 5 DNA):**
- Creeper: `/function dna/abilities/creeper`
- Enderman: `/function dna/abilities/enderman`
- Spider: `/function dna/abilities/spider`
- Blaze: `/function dna/abilities/blaze`
- Ghast: `/function dna/abilities/ghast`
- Wither Skeleton: `/function dna/abilities/wither_skeleton`
- Ender Dragon: `/function dna/abilities/ender_dragon`
- Phantom: `/function dna/abilities/phantom`
- Skeleton: `/function dna/abilities/skeleton`
- Zombie: `/function dna/abilities/zombie`

### DNA Icons

All items feature DNA-themed icons in the resource pack showing DNA strands and molecular structures.

### Scoreboards

- `dna_count` - Player's current DNA count (0-5)
- `dna_max` - Maximum DNA (5)
- `mob_type` - Player's assigned mob type (1-10)
- `ability_cooldown` - Current ability cooldown in ticks
- `deaths` - Death counter
- `kills` - Kill counter

### Configuration

Edit function files to adjust:
- Cooldown times (in ticks, 1200 = 1 minute)
- Damage values
- Effect durations
- Ability radius

### Support

For issues or suggestions, please create an issue in the repository.

---

**Version:** 1.1.0  
**Minecraft:** Bedrock 1.19+  
**Made for:** SMP Servers
