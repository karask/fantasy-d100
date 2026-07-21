# Shaping — Freeform Magic for Fantasy Crux

*A single, spell-less magic system. Shapers do not memorise spells; they shape raw magic in the moment by combining a **Technique** (what you do) with a **Form** (what you do it to), then setting the **dials** (power, range, duration, reach). The Technique × Form grid replaces the spell list entirely.*

> **At a glance:** Effect = one **Technique** + one **Form**. Set dials → **Magnitude M**. Pay **M Power Points**, roll under your **Technique skill** (one Combat Action). Your expertise band caps the Magnitude you can safely reach; go higher only by **overreaching** (penalty + risk of backlash).

Reuses existing Fantasy Crux machinery — Power Points, roll-under casting skill, the resistance mechanic, Bonus/Penalty dice, expertise bands, Improvement Points — so it drops in as a replacement for the old magic Disciplines. Dice-agnostic: only the skill-band percentages restate on a d20 or 3d6 core.

**The core principle:** the **Technique is the mechanical verb** — it decides *what rules-effect happens* (damage, temporary armour, a sense, control, healing). The **Form is the medium** — it decides *what type* that effect is, *what it can target*, whether **armour applies**, and adds a **rider**. Same Technique, different Form = different rules.

---

## 1. The two axes

**Techniques (6)** — the *verbs*, and your INT-based casting skills.

| Technique | Rules verb |
|---|---|
| **Conjure** | create matter/energy (a substance, a barrier, a summoned thing) |
| **Wield** | move or control something that already exists |
| **Unmake** | deal damage, or dispel a standing effect |
| **Shift** | heal, transform, or apply a buff/debuff |
| **Ward** | grant temporary protection (Armour Points / denial) |
| **Scry** | gain a sense or information |

**Forms (8)** — the *media*. Each carries a **rider** that applies through any Technique:

| Form | Rider (through every Technique) | Armour vs its damage? |
|---|---|---|
| **Fire** | may ignite/spread to flammables; sheds light; resisted by Dodge/Resilience | yes |
| **Water/Ice** | douses fire; ice makes terrain slippery; can chill and slow | yes |
| **Air/Storm** | knockback & disperse; carries sound/scent; lightning aspect ignores **metal** armour | yes (except lightning vs metal) |
| **Earth/Stone** | durable & strong (best barriers/armour) but slow; struggles vs airborne targets | yes |
| **Flesh** | living creatures only; works *inside* them → **ignores worn armour**; resisted by Resilience; enables healing | **no** |
| **Mind** | thinking creatures only; **ignores armour**; resisted by Persistence; usually subtle | **no** |
| **Force/Motion** | anything with mass; pure kinetics — no damage type, no elemental resist | yes |
| **Spirit** | incorporeal, undead & souls; double vs undead; vs the living, resisted by Persistence | **no** |

*(Plant, Beast, Metal, Light/Shadow are later expansions. Start with these eight.)*

---

## 2. What each Technique does (mechanics)

Each Technique has a **base effect** at Magnitude 1 that the dials (§4) scale, and a **Form** note. **Magic damage is dice only — never add the physical Damage Modifier.**

### Unmake — damage or dispel
- **Damage:** **1d6** (+1d6 per Power step). Vs a creature → Hit Points; vs an object → its structure.
- **Armour & defence:** elemental/kinetic Unmake (Fire, Water, Air, Earth, Force) → the target **Dodges** (reaction) and **armour reduces** any damage. **Flesh** (wither) → opposed **Resilience**, ignores armour. **Mind** (stun — deals no wounds, instead the target is stunned/loses their next action) → opposed **Persistence**, ignores armour. **Spirit** → only harms incorporeal/undead (double vs undead).
- **Dispel:** end a standing Shaping by casting **Unmake of its Form at Magnitude ≥ the effect's Magnitude** and succeeding on the cast. (Unmake·Spirit may counter any Shaping, at the GM's option.)

### Conjure — create
- **Barrier/structure:** **Armour Points = Magnitude, Hit Points = Magnitude × 5.** Blocks movement and line of effect until destroyed or the duration ends.
- **Hurled creation:** resolve as Unmake (damage = the Power built; Dodge + armour as its Form dictates).
- **Summon:** a creature/spirit with **HP = M × 4**, one attack/skill at **30% + (M × 10%)** dealing **1d6 per 2 full Magnitude** (min 1d6). Acts on your initiative; lasts the Duration. (GM may swap in a stat block of similar power.)
- **Form** sets what exists: Earth = sturdiest walls; Water = wave/flood/drink; Air = fog/wind; Fire = flame/light; Force = spectral hand/platform; Spirit = a summoned spirit.

### Wield — move & control
- **Move objects:** telekinetically shift **10 kg** (×10 per Power step) at your Movement rate.
- **As an attack** (shove, hurl, disarm, trip at range): **cast vs the target's Dodge**; on success move them, knock prone/back, disarm, or deal the Power as kinetic damage (armour applies) if you hurl them into something.
- **Control a creature** (puppet a body, compel, command a spirit): **opposed vs Resilience** (body) or **Persistence** (will/spirit). Sustaining control is **active** — costs your Action each round (see §5).
- **Form** sets your grip: Force = general telekinesis; Flesh = a living body (opposed); elements = steer existing flame/water/wind/earth; Mind = compel; Spirit = command bound spirits.

### Shift — heal, transform, buff/debuff
- **Heal (Flesh):** restore **1d6 HP** (+1d6/Power step) to a living target. **Mend a Major Wound** (remove its ongoing effects) if the Shaping's **Magnitude ≥ 3**. **Cure poison/disease** if the Shaping's **Magnitude ≥ the affliction's Potency**.
- **Buff/Debuff:** grant a **Boon** or impose a **Bane** on a stat/action/defence, or a condition (hasten/slow, calm/enrage, harden), for the Duration. Unwilling → opposed (Resilience or Persistence). One Shaping = one such effect on a target.
- **Transform matter:** change a substance's state (freeze water → slippery/difficult terrain; soften stone → difficult terrain; charge air → lightning). No roll vs the inert environment.

### Ward — protection
- **Base:** **temporary Armour Points = Magnitude** for the Duration, working exactly like armour but **only within the Form's domain**:
  - **Ward·Earth/Stone** or **Ward·Force** → AP vs **physical** attacks. Does **not** stack with worn armour — use the better.
  - **Ward·Fire** (any element) → reduces only **that element's** damage by M. **Stacks** with worn armour.
  - **Ward·Flesh** → AP vs disease/poison and internal harm.
  - **Ward·Mind** → **Bane** to hostile Mind Shapings + immunity to fear.
  - **Ward·Spirit** → **denial**: spirits/undead can't cross, or attack you at a **Bane** (a hallowing).
- **Denial wards** (Air deflecting arrows → Bane to incoming ranged; Spirit warding a threshold) impose a Bane instead of, or on top of, AP.

### Scry — perceive
- **Base:** gain a **sense** or a **+1 Boon** to a Perception/Knowledge roll, scoped by Form, out to the Range dial, for the Duration.
- **Active scrying** (watching a distant scene live) costs your Action each round (see §5).
- **Form** sets the sense: Fire = through smoke/heat; Earth = tremorsense, find ore; Air = distant sounds; Flesh = diagnose, lifesense; **Mind** = read surface thoughts/detect lies (opposed vs **Persistence** if unwilling); **Spirit** = see the invisible, speak to the dead; Force = sense movement.

---

## 3. Resolution & defence (one table)

Casting is **always** a roll under your Technique skill (you can fizzle). *Then*, if the Shaping strikes an unwilling creature, it is opposed by the defence its Form implies:

| The Shaping… | Defence | Armour? |
|---|---|---|
| affects **self, a willing ally, an object, or an area point** | none — just cast | — |
| throws a **bolt/burst/hurl** (Fire, Water, Air, Earth, Force) | target **Dodges** (reaction) | **yes** |
| seizes the **body** (Flesh: wither, grapple, petrify) | opposed **Resilience** | no |
| touches the **mind/soul** (Mind, Spirit vs the living) | opposed **Persistence** | no |

Area/multi-target Shapings: **each** target defends separately.

---

## 4. Building a Shaping on the fly

**Describe → name Technique + Form → set the dials.** Every Shaping starts at **Magnitude 1**; each step up any dial adds **+1 Magnitude**.

| Dial | Magnitude 1 (base) | +1 per step |
|---|---|---|
| **Power** | 1d6 damage/heal · lift ~10 kg · candle-bright | +1d6, or ×10 mass/force/scale |
| **Range** | touch | **near** (~15 m) → **far** (~50 m) → **sight** |
| **Duration** | instant / 1 round | **minutes** → **hours** → **until dawn** |
| **Reach** | one target or self | +1 target each, or **3 m** → **10 m** radius |

**Total Magnitude M = 1 + all dial steps.**

---

## 5. Casting, timing & Power Points

1. **Time:** casting any Shaping is **one Combat Action**, whatever the Magnitude. Requires **line of sight** to the target/point (or a Scry sense to substitute).
2. **Cost:** **M Power Points** (the existing POW-based pool; regains ¼ POW per 2 hours' rest; at 0 PP you fall unconscious).
3. **Roll:** under your **Technique skill** (Bonus/Penalty dice apply). **INT shapes, POW fuels.**
4. **Outcome:** **Success** → it works (defender may still resist per §3). **Failure** → fizzle, lose half the PP (round up). **Fumble** → backlash.

**Maintaining effects:** instant Shapings (bolt, heal) are fire-and-forget. Set-duration Shapings (wards, buffs, barriers, summons) **run for their built Duration with no further attention**. **Active control** — steering a Wielded creature/object turn-by-turn, or actively Scrying a live scene — costs your **Action each round**, and you can sustain **only one** active-control effect at a time.

### Safe Magnitude by skill band

| Band | Technique skill | Safe Magnitude |
|---|---|---|
| Novice | ≤ 25% | 1 |
| Apprentice | 26–50% | 2 |
| Veteran | 51–75% | 3 |
| Expert | 76–99% | 4 |
| Master | 100%+ | 5 |

### Overreach & backlash (what replaces spell slots)

Build above your safe Magnitude if you dare: **−1 Penalty die per step over**, and while overreaching a **fumble triggers backlash**. The penalty dice and PP cost self-limit how far anyone can push (the GM may veto the absurd).

**Backlash** (fumble, or failed overreach) — GM picks or rolls one: take **M** damage · lose **double** Power Points · **wild surge** (warps/misfires/wrong target) · gain a level of **Fatigue**.

---

## 6. Acquisition — the Specialist Axis

A Shaper is **narrow on one axis and broad on the other**, chosen at creation.

- **Form-Specialist ("Elementalist").** One **Form**; may learn all six Techniques on it. Tracks **a casting skill per Technique**. Signature = the Form.
- **Technique-Specialist ("Verb-mage").** One **Technique**; may learn all eight Forms with it. Tracks **one casting skill** — lightest bookkeeping. Signature = the Technique.

**Skills attach to Techniques; Forms are known/unknown.** Your **signature axis grants +1 Boon die** to every casting on it (the Form for a Form-Specialist; the Technique for a Technique-Specialist).

**Starting loadout:** signature + **2 picks on the broad axis** at Apprentice band → **two effects** at creation.

| Archetype | Starts knowing | Effects |
|---|---|---|
| Pyromancer (Form = Fire) | Fire + Conjure, Unmake | Conjure·Fire, Unmake·Fire |
| Unmaker (Technique = Unmake) | Unmake + Fire, Flesh | Unmake·Fire, Unmake·Flesh |

**Learning more** (teacher/grimoire in fiction, then IP):

| Action | Cost |
|---|---|
| Form-Specialist learns a new **Technique** (on their Form) | **3 IP** |
| Technique-Specialist learns a new **Form** | **2 IP** |
| Raise a Technique skill | normal IP skill advancement |
| **Cross your specialty** (2nd Form / 2nd Technique) | **8 IP + a defining ordeal or master** — rare, not routine |

The narrow axis is self-balancing: an all-Techniques Fire archmage is terrifying *with fire* and helpless without it.

---

## 7. Worked examples (every Technique)

| Want to… | Technique · Form + dials | M / PP | Resolution |
|---|---|---|---|
| **Firebolt**, 2d6, across the room | Unmake·Fire · Power +1 · Range near +1 | 3 | Dodge; 2d6 fire − armour; may ignite |
| **Raise a stone wall** for cover | Conjure·Earth · Power +1 · Reach 3 m +1 | 3 | barrier AP 3, HP 15 |
| **Fling a foe** off the ledge | Wield·Force · Power +1 | 2 | vs Dodge; hurl + knockback (armour applies) |
| **Wither** a guard from within | Unmake·Flesh · Power +1 | 2 | opposed **Resilience**; 2d6, **ignores armour** |
| **Heal a wound**, 1d6, by touch | Shift·Flesh (base) | 1 | willing; restore 1d6 HP (M≥3 to mend a Major Wound) |
| **Stoneskin** yourself, minutes | Ward·Earth · Power +1 · Duration minutes +1 | 3 | **+3 AP vs physical** (use better of this or armour) |
| **Ward against dragonfire**, minutes | Ward·Fire · Power +2 · Duration minutes +1 | 4 | reduce **fire** damage by 4 (stacks with armour; nil vs blades) |
| **Read a suspect's thoughts**, a minute | Scry·Mind · Range near +1 · Duration minutes +1 | 3 | opposed **Persistence** |
| **Overreach: 3d6 firebolt** | Unmake·Fire · Power +2 · Range near +1 | 4 | Veteran (safe 3) → −1P; fumble = backlash |

The two wards contrast on purpose: **Ward·Earth** is general physical armour that won't stack with worn armour; **Ward·Fire** stops only fire but is cheaper per point against *that* threat and stacks — the exact trade the Form axis creates.

---

## 8. Porting from the old Disciplines

The four Disciplines become *builds* of one engine:
- **Hedge-witch / Folk** → low-Magnitude generalist, or a Technique-Specialist in Wield/Scry.
- **Temple healer / Divine** → Form-Specialist in **Flesh** (Shift to heal, Ward to protect), flavoured as prayer.
- **Arcane blaster** → **Elementalist** in Fire or Force (Conjure/Unmake).
- **Spirit-talker / Shaman** → Form-Specialist in **Spirit** (Scry to commune, Wield to bind, Unmake to banish).

Convert an NPC caster: pick an archetype + a few cells at a skill matching their old casting %.

---

## 9. Design notes (v0 — tune in play)
- **Technique = mechanical verb; Form = medium + rider (+ whether armour applies).**
- **Magic damage = dice only** (no Damage Modifier); **casting stat = INT**, **POW** fuels/resists.
- **Ward = temporary AP scoped by Form** (physical wards don't stack with armour; elemental/denial wards do).
- First-pass numbers to pressure-test: Power = +1d6 per Magnitude, conjured barrier HP (M×5), summon block (HP M×4 / skill 30%+M×10% / 1d6 per 2 M), Mind-Unmake as a stun, and whether elemental wards stacking with armour is too generous.
- Keep the **core 8 Forms / 6 Techniques**. Working name **Shaping / Shaper** — rename freely.
