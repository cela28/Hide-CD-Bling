# Hide CD Bling - In-Game Testing Checklist

## Installation

1. Copy `HideCDBling/` folder to:
   - **Windows:** `C:\World of Warcraft\_retail_\Interface\AddOns\`
   - **Mac:** `/Applications/World of Warcraft/_retail_/Interface/AddOns/`

2. Restart WoW or type `/reload` if already in-game

---

## Pre-Flight Checks

- [ ] Addon appears in AddOns list (character select or `/addons`)
- [ ] Addon is enabled
- [ ] No Lua errors on login (check for red error popup or `/console scriptErrors 1`)

---

## Core Functionality Tests

### Test 1: Essential Cooldown Bar

- [ ] Add a spell with a cooldown to the Essential bar (via Edit Mode)
- [ ] Use the spell to trigger cooldown
- [ ] Wait for cooldown to complete
- [ ] **Expected:** No bling/shine animation when cooldown finishes

### Test 2: Utility Cooldown Bar

- [ ] Add a spell with a cooldown to the Utility bar (via Edit Mode)
- [ ] Use the spell to trigger cooldown
- [ ] Wait for cooldown to complete
- [ ] **Expected:** No bling/shine animation when cooldown finishes

### Test 3: Edit Mode Persistence

- [ ] Enter Edit Mode (Esc → Edit Mode)
- [ ] Move or resize a cooldown bar
- [ ] Exit Edit Mode
- [ ] Trigger a cooldown on either bar
- [ ] **Expected:** Bling still suppressed after Edit Mode changes

### Test 4: Multiple Cooldowns

- [ ] Trigger multiple spells on cooldown simultaneously
- [ ] Watch as they come off cooldown at different times
- [ ] **Expected:** No bling on any of them

### Test 5: Session Persistence

- [ ] Log out and back in (or `/reload`)
- [ ] Trigger cooldowns
- [ ] **Expected:** Bling still suppressed after reload

---

## Edge Cases

### Test 6: Addon Load Order

- [ ] Disable addon, reload
- [ ] Re-enable addon, reload
- [ ] **Expected:** Works correctly after re-enable

### Test 7: With Other Addons

- [ ] Test with your normal addon setup enabled
- [ ] **Expected:** No conflicts, bling still suppressed

---

## Results

| Test | Pass/Fail | Notes |
|------|-----------|-------|
| Pre-flight | | |
| Essential bar | | |
| Utility bar | | |
| Edit Mode persistence | | |
| Multiple cooldowns | | |
| Session persistence | | |
| Addon load order | | |
| With other addons | | |

---

## Troubleshooting

**If bling still appears:**
1. Check addon is enabled in AddOns list
2. Try `/reload`
3. Check for Lua errors with `/console scriptErrors 1`

**If Lua errors occur:**
1. Note the error message
2. Check if it mentions "HideCDBling"
3. Report the exact error text

---

*Last updated: 2026-02-02*
