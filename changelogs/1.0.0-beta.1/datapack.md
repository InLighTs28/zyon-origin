## ZyoN 1.0.0-beta.1 · *Timers*

First public beta.

### Timers in the reticle
Every cooldown and timer now lives **in the reticle**, so the crosshair alone tells you the state of the network:

- **Outer ring**: main timer. Pulse (gold), then its **recharge** (cyan, from tier 5), Oath (violet), core lock (red). A **white flash** and a chime tell you when Pulse is ready again.
- **Arc ↖**: charged hand, seal (cyan) / shatter (orange), then **Essence kept** (yellow).
- **Arc ↗**: incident to answer, spike (amber) / intrusion (red).
- **Arc ↙**: Sync at 0%, countdown before drift (red once drifting).
- **Arc ↘**: weakest seal, during its last 30 s.

Arcs empty clockwise and **blink** just before they run out. The HUD power's diagram and legend show every element (new marks C to F).

### Compatibility & performance
- Seal rings now use their own item model base, so they no longer clash with other packs that retexture `leather_horse_armor` (rings already placed are converted automatically).
- Rings that ride their bearer no longer scan every entity each tick.
- The Siphon "drained" countdown runs once per second instead of every tick.
- About 150 unused legacy files removed (old French versions of functions and powers).

Requires the **ZyoN - Resources** pack of the same version.
