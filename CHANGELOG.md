# Changelog

All notable changes to **ZyoN** (datapack) and **ZyoN - Resources** (resource pack).
Both packs share the same version number and must be used together.

Format: one section per version, newest first. `DP` = datapack, `RP` = resource pack.

---

## [1.0.0-beta.1] - 2026-11-18 · *Timers*

First public beta.

### Reticle timers
- **DP** Outer ring = main timer: Pulse, Pulse recharge (tier 5+, white flash + chime when ready), Oath, core lock.
- **DP** Diagonal arcs: ↖ charged hand / Essence kept · ↗ incident · ↙ drift countdown · ↘ weakest seal (last 30 s). Blink before the end.
- **RP** Ring, arcs and ready-flash textures; new HUD diagram and legend marks C-F (EN/FR).

### Sigilite, Link Emitter, Short Signal
- **DP** Sigilite Shards from deepslate ores / amethyst clusters (8 %) and ancient debris (ZyoN only).
- **DP** Link Emitter Mk I-IV (crafting + smithing): off-hand focus that throws the armed seal a few blocks away, no damage. Packets shown left of the crosshair.
- **DP** Short Signal: ranged and spell damage dealt by ZyoN -40 %.
- **RP** Shard and Emitter models/textures (animated), packet, 4 new sounds.

### Fixes
- **DP** Alteration: effects carried by a bearer (potions, beacons, mobs...) are shared again. Since 1.21 they were never detected.

### Sounds
- **RP** Every sound effect re-made from scratch (original synthesis, mono for positional audio). Kenney samples no longer used.

### Compatibility
- **RP** Removed the copies of Origins' selection-screen textures.
- **DP RP** Seal rings moved from `leather_horse_armor` to `tipped_arrow` (no clash with packs that use leather horse armor). Existing rings are converted.

### Performance & cleanup
- **DP** Rings riding their bearer skip the entity scan; Siphon drain countdown once per second.
- **DP** ~150 unused legacy files removed.
