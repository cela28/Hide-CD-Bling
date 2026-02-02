# Hide CD Bling

## What This Is

A minimal World of Warcraft addon that suppresses the "bling" animation (shine/sweep effect) that plays on the Essential and Utility cooldown bars when abilities come off cooldown.

## The Problem

Blizzard's Edit Mode cooldown bars (Essential and Utility) play a distracting shine animation whenever a spell comes off cooldown. For players who want a cleaner UI, there's no built-in option to disable this effect.

## The Solution

A single-purpose addon that hooks into the cooldown manager frames and suppresses the bling animation. No settings, no UI, no configuration — just install and the bling is gone.

## Target

- **Essential cooldown bar** (Edit Mode)
- **Utility cooldown bar** (Edit Mode)
- NOT the main action bars

## Reference Implementations

Two existing addons achieve this among other features:
- [BetterCooldownManager](https://github.com/DaleHuntGB/BetterCooldownManager)
- [Will's CDM](https://www.curseforge.com/wow/addons/wills-cdm)

Goal is to extract just the bling-suppression feature as a standalone addon.

## Constraints

- Standalone addon (no dependencies)
- Minimal footprint
- No settings UI required
- No SavedVariables needed

## Distribution

GitHub repository only — manual install by copying to AddOns folder.

## Requirements

### Validated

(None yet — ship to validate)

### Active

- [ ] Suppress bling animation on Essential cooldown bar
- [ ] Suppress bling animation on Utility cooldown bar
- [ ] Works without any configuration

### Out of Scope

- Action bar bling suppression — not targeting main action bars
- Settings UI — no configuration needed
- Per-spell control — affects all spells uniformly
- CurseForge/Wago distribution — GitHub only

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| Target CD bars only | User specifically wants Essential/Utility bars, not action bars | — Pending |
| No settings | Single-purpose addon, just install and forget | — Pending |
| Extract from existing | Reference BetterCDM and Will's CDM implementations | — Pending |

---
*Last updated: 2026-02-02 after initialization*
