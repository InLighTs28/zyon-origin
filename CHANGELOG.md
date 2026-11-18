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

### Sounds
- **RP** Every sound effect re-made from scratch (original synthesis, mono for positional audio). Kenney samples no longer used.

### Compatibility
- **RP** Removed the copies of Origins' selection-screen textures.
- **DP RP** Seal rings moved from `leather_horse_armor` to `tipped_arrow` (no clash with packs that use leather horse armor). Existing rings are converted.

### Performance & cleanup
- **DP** Rings riding their bearer skip the entity scan; Siphon drain countdown once per second.
- **DP** ~150 unused legacy files removed.
