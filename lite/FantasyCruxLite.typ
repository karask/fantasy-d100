// To compile this file: typst compile FantasyCruxLite.typ
// Owlbear-inspired styling (colors from @preview/owlbear:0.0.1)
#let red = rgb(121, 59, 47)
#let red-light = rgb(181, 79, 66)
#let blue-light = rgb(241, 247, 249)
#let blue = rgb(215, 232, 238)

#set page(paper: "a4", margin: 1.7cm)
#set par(justify: true)
#set text(size: 11pt)

#show heading: set text(fill: red, weight: 400)
#show heading.where(level: 1): set text(
  size: 34pt,
  fill: gradient.linear(red, red-light, angle: 90deg),
  weight: 300,
)
#show heading.where(level: 2): set text(size: 18pt)
#show heading.where(level: 3): set text(size: 14pt)

#set table(
  fill: (x, y) => if y == 0 { none } else if calc.rem(y, 2) == 0 { blue } else { blue-light },
  stroke: none,
)
#show table.cell: it => {
  if it.y == 0 { strong(it) } else { it }
}

// Divider helper
#let divider() = {
  v(0.3em)
  align(center, image("img/divider.jpg", width: 80%))
  v(0.3em)
}

#align(center)[
  // #image("img/title.jpg", width: 50%)
  #v(0.3em)
  #text(size: 36pt, weight: 400)[Fantasy Crux Lite]
  #v(0.2em)
  #text(size: 18pt)[Rules Summary]
  #v(0.3em)
  #text(size: 12pt)[Konstantinos Karasavvas]
  #v(0.3em)
  #text(size: 11pt, style: "italic")[A concise summary of the Fantasy Crux rules, covering character creation, skills, combat, and magic.]
]

= Introduction

Fantasy Crux Lite is a D100-based fantasy RPG. Characters are defined by Characteristics, Attributes, and Skills. This summary covers the core rules for a mundane medieval fantasy game, plus Battle and Folk Magic disciplines. For complete rules consult Fantasy Crux.

= Characters

== Characteristics
The seven core characteristics are:
- *STR* (Strength): Brute force.
- *CON* (Constitution): Health and stamina.
- *DEX* (Dexterity): Agility and reaction speed.
- *SIZ* (Size): Mass and height.
- *INT* (Intelligence): Analysis and memory.
- *POW* (Power): Life force and luck.
- *CHA* (Charisma): Leadership and charm.

*Generation*: Start with 8 in each. Distribute 30 points. Max 18.
Alternatively, roll 4D6 drop lowest (3D6+6 for INT/SIZ). Max possible is 21.

== Attributes
Derived from characteristics:

#grid(
  columns: (1fr, auto),
  column-gutter: 1em,
  [
    #v(1.5em)
    - *Damage Modifier (DM)*: Bonus melee damage (see table).
    - *Hit Points (HP)*: (SIZ + CON) / 2 (round up).
    - *Major Wound*: HP / 2 (round up).
    - *Power Points (PP)*: Equal to POW. Regenerate with rest.
    - *Movement*: 15m for humans.
    - *Combat Order*: (DEX + INT) / 2 − Armour ENC.
  ],
  table(
    columns: (auto, auto),
    inset: 5pt,
    align: center,
    [*STR + SIZ*], [*DM*],
    [1-10], [-1d6],
    [11-15], [-1d4],
    [16-25], [+0],
    [26-30], [+1d4],
    [31-45], [+1d6],
    [46-60], [+2d6],
  ),
)

== Luck / Hero Points
Start with 2 Hero Points. Spend to:
- Re-roll any failed die.
- Downgrade Major Wound to normal.
- Survive death (stabilize at 0 HP).
- Edit the plot (GM discretion).

== Skill Points
Calculate each skill's base value from its formula. Then distribute bonus points per group (max +30 to any one skill):

#table(
  columns: (auto, auto),
  inset: 5pt,
  align: horizon,
  [*Skill Group*], [*Points to Distribute*],
  [Resistances], [50],
  [Combat], [50],
  [Knowledge], [50],
  [Practical], [75],
)

*Customization*:
- Trade up to 20 Combat points for Knowledge at 1:2 ratio (10 Combat → 20 Knowledge).
- Trade up to 10 points from Resistances, Combat, or Practical for Improvement Points at 5:1 ratio (max 6 IP this way). These IP can only be used for Disciplines or Characteristics.

== Special Training
Each character starts with *10 Improvement Points* to further improve skills or acquire Disciplines.

== Starting Equipment
Starting cash: 4D6 × 10 SP. Plus one equipment package:
- Leather armour, ranged weapon, close combat 2H weapon, dagger.
- Leather armour, shield, ranged weapon, close combat 1H weapon, dagger.

All characters also start with: backpack, rope, two weeks provisions, flint & tinder, waterskin.

== Improvement Points
Characters earn Improvement Points (IP) through play, awarded by the GM.
- *Improve Skills*: 1 IP → increase 1-2 skills by 5% total (skills below 51%), by 3% (51-99%), or by 1% (100%+). Max +5% per skill per advance.
- *Improve Characteristics*: 5 IP → +1 to one Characteristic (not SIZ). Max 21 for humans.
- *Acquire Disciplines*: Spend IP per the Discipline's section.
- *Practice / Research*: 1 IP per 3 months of downtime.

= Skills

Skills are percentage-based. Roll *D100* equal to or under Skill to succeed.

== Bonus & Penalty Dice
Special circumstances may provide Bonus (B) or Penalty (P) dice.
- *+1B (Bonus)*: Roll an extra D10 for the tens digit; keep the *lowest* (best) result.
- *−1P (Penalty)*: Roll an extra D10 for the tens digit; keep the *highest* (worst) result.
- *Stacking*: +2B = roll 3D10 for tens, keep lowest. −2P = roll 3D10 for tens, keep highest.
- *Cancellation*: If a roll has both Bonus and Penalty dice, they cancel out 1-for-1 before rolling.

- *Critical*: Roll ≤ tens value of Skill. Best possible outcome.
- *Fumble*: Roll 99-00. Worst possible outcome.
- *Assistance*: +1B if helper has relevant skill.

== Opposed Tests
Both characters roll. Compare results:
- *One succeeds, one fails*: The successful character wins.
- *Both succeed*: Highest roll wins. A Critical beats an ordinary success.
- *Both fail*: Lowest roll wins. Ties go to the Player character.

== Skill List
*(Base formulas included for reference)*

*Resistances*
- *Dodge* (DEX+10): Avoid physical threats.
- *Persistence* (POW+10): Resist magic and influence.
- *Resilience* (CON+POW): Resist poison, disease, pain.

*Combat*
- *Close Combat* (DEX+STR): Melee weapons and parrying.
- *Ranged Combat* (DEX+INT): Missile and thrown weapons.
- *Unarmed Combat* (DEX+STR): Natural weapons and grappling.

*Knowledge*
- *Culture* (INT+10): History, politics, customs.
- *Language* (INT+50/INT): Speak/Read/Write.
- *Natural Lore* (INT+10): Animals, plants, survival.
- *Lore* (INT): Specific knowledge (Alchemy, History, etc.).

*Practical*
- *Athletics* (DEX+STR): Run, jump, climb, swim.
- *Craft* (INT+10): Make/repair items.
- *Deception* (DEX+INT): Stealth, disguise, sleight.
- *Driving* (DEX+INT): Vehicles.
- *Engineering* (INT+10): Construction, siege engines.
- *Healing* (INT+10): First aid, surgery.
- *Influence* (CHA+10): Persuasion, intimidation.
- *Mechanisms* (DEX+INT): Locks, traps.
- *Perception* (INT+POW): Spot hidden, sensory awareness.
- *Performance* (CHA+10): Arts, entertainment.
- *Riding* (DEX+POW): Mounts.
- *Sailing* (DEX+INT): Boats/ships.
- *Streetwise* (CHA+POW): Urban survival, fencing goods.
- *Trade* (INT+10): Bartering, appraising.

= Equipment

*Currency*: 1 Gold Piece (GP) = 10 Silver Pieces (SP). 1 SP = 10 Copper Pieces (CP).

// #align(center, image("img/equipment.jpg", width: 40%))

== Weapons & Armour
*Encumbrance (ENC)*: Armour ENC directly reduces Combat Order (already factored into formula). Carry up to STR+SIZ in total ENC without penalty (20 tiny items ≈ 1 ENC). *Overloaded* (ENC > STR+SIZ): −1P on all physical tests (weapons, DEX/STR skills), Movement halved, −1P on Fatigue tests. Max carry: 2 × (STR+SIZ).

=== Close Combat Weapons
Types: *1H* (one-hand), *2H* (two-hand), *Flex* (1H or 2H; +2 dmg in 2H, −2 STR req), *Set* (set vs charge), *Range* (throwable).
Sizes: #strong[L]ight, #strong[M]edium, #strong[H]eavy, #strong[Hu]ge. Parry blocks all dmg if same size+; half if 1 smaller; none if 2+ smaller.
If STR or DEX below minimum: −1P to attack/parry.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  inset: 4pt,
  align: horizon,
  [*Weapon*], [*Type*], [*Dmg*], [*STR/DEX*], [*ENC*], [*Size*], [*Cost*],
  [Unarmed], [-], [1d3], [-/-], [-], [-], [-],
  [Dagger], [1H/Range], [1d4+1], [-/-], [-], [L], [20 SP],
  [Hatchet], [1H/Range], [1d6], [5/9], [1], [L], [20 SP],
  [Club], [Flex], [1d6], [5/9], [1], [L], [20 SP],
  [Shortsword], [1H], [1d6], [5/5], [1], [M], [100 SP],
  [Shortspear], [Flex/Set/Rng], [1d6], [5/5], [2], [M], [20 SP],
  [Quarterstaff], [2H], [1d8], [5/9], [2], [M], [20 SP],
  [Arming Sword], [1H], [1d8], [9/9], [2], [M], [150 SP],
  [Scimitar], [1H], [1d8], [9/9], [2], [M], [150 SP],
  [Battleaxe], [1H], [1d8], [9/9], [2], [M], [120 SP],
  [Ball \& Chain], [1H], [1d8], [9/9], [2], [M], [120 SP],
  [War Hammer], [1H], [1d8], [9/9], [2], [M], [120 SP],
  [Mace], [Flex], [1d8], [9/9], [2], [M], [120 SP],
  [Longsword], [Flex], [1d8], [13/11], [2], [M], [250 SP],
  [Longspear], [2H/Set], [1d8+1], [9/5], [2], [M], [30 SP],
  [Polearm], [2H/Set], [1d8], [9/9], [3], [H], [200 SP],
  [Lance], [Flex/Set], [1d10], [11/9], [3], [H], [150 SP],
  [Great Axe], [2H], [2d8], [13/5], [4], [H], [200 SP],
  [Great Hammer], [2H], [2d8], [13/5], [4], [H], [200 SP],
  [Greatsword], [2H], [2d8], [13/9], [4], [H], [300 SP],
  [Military Flail], [2H], [2d8], [13/5], [4], [H], [200 SP],
  [Shield (S)], [-], [1d4], [-/-], [1], [M], [50 SP],
  [Shield (M)], [-], [1d6], [9/-], [2], [H], [150 SP],
  [Shield (L)], [-], [1d6], [13/-], [3], [Hu], [300 SP],
)

=== Ranged Weapons
Types: *Thrown* (add DM), *Close* (no penalty in melee), *2H* (two-hand). Beyond range: skill halved. Beyond 2× range: auto-fail.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  inset: 4pt,
  align: horizon,
  [*Weapon*], [*Type*], [*Dmg*], [*Range*], [*STR/DEX*], [*ENC*], [*Cost*],
  [Dart], [-], [1d3], [STR×m], [-/9], [-], [15 SP],
  [Dagger], [Close], [1d4+1], [STR×m], [-/9], [-], [30 SP],
  [Hatchet], [Close], [1d6], [STR×m], [-/9], [1], [25 SP],
  [Rock], [-], [1d4], [STR×m], [5/5], [1], [-],
  [Shortspear], [Close], [1d6], [STR×2m], [5/9], [2], [20 SP],
  [Javelin], [-], [1d6], [STR×2m], [5/9], [1], [20 SP],
  [Sling], [1H], [1d6], [50m], [-/9], [-], [5 SP],
  [Whip], [Close], [1d3], [5m], [-/9], [-], [50 SP],
  [Shortbow], [2H], [1d8], [75m], [9/9], [1], [75 SP],
  [Longbow], [2H], [1d10], [150m], [13/9], [1], [150 SP],
  [Crossbow (L)], [2H], [1d8], [125m], [5/9], [1], [150 SP],
  [Crossbow (H)], [2H], [2d6], [150m], [9/9], [2], [350 SP],
)
Crossbow reload: Heavy = 1 full round; Light = move + reaction.

=== Armour
AP reduces incoming damage. ENC directly reduces Combat Order.

#table(
  columns: (auto, auto, auto, auto),
  inset: 5pt,
  align: center,
  [*Armour*], [*AP*], [*ENC*], [*Cost*],
  [Leather], [2], [3], [500 SP],
  [Ringmail], [3], [4], [1000 SP],
  [Scalemail], [4], [6], [1500 SP],
  [Chainmail], [5], [7], [3000 SP],
  [Platemail], [6], [9], [9000 SP],
)

// #divider()

// #align(center, image("img/combat.jpg", width: 45%))

= Combat

*Round*: 5 seconds.
*Sequence*:
1. *Determine Order*: Roll 1D10 + Combat Order. Highest acts first.
2. *Actions*: Each character gets 1 Combat Action, 1 Move Action, 1 Reaction.

== Actions
- *Attack*: Attack nearest enemy.
- *Charge*: Move 2× and attack (+1d6 dmg). No reaction allowed.
- *All Out Attack*: 2 attacks at −1P. No reaction.
- *Great Attack*: 1 attack at +1B, Max damage bonus. No reaction.
- *Move*: Move up to Movement Rate (15m).
- *Sprint*: Move 2× Speed. Only Dodge reaction allowed.
- *Ready Weapon*: Draw/switch weapon (half move).

== Reactions
- *Parry*: Use weapon skill. Reduces damage (depends on weapon size).
- *Dodge*: Use Dodge skill. Negates all damage.

== Damage
Damage = Weapon Die + Damage Modifier − Armour Points

- *Major Wound*: Damage ≥ 1/2 HP in one hit. Must pass Resilience (−2P) or unconscious. Halved DEX.
- *Death*: HP ≤ 0 means death (unless Hero Point used).

== Special Effects
- *Critical Hit (Close)*: Choose *2* of: max damage, ignore armour, free attack, trip, disarm, knock-back, knockout.
- *Critical Hit (Ranged)*: Max damage + ignore armour (fixed).
- *Critical Parry*: Blocks all damage regardless of size.
- *Fumble*: Lose turn, drop weapon, or hurt self.

= Disciplines

Disciplines provide supernatural or extraordinary abilities.
- *Power Points (PP)*: Fuel disciplines. Regen 1/4 POW per 2 hours rest.
- *Zero PP*: Unconscious until 1 PP regained (or 1 hour).

= Battle

Advanced combat techniques.
- *Learning*: Needs Combat Skill 51\%+. Cost 2 IP to unlock.
- *Techniques*: Cost 1 IP per Magnitude. Max techniques = INT/2.
- *Using*: 1 technique per round. Cost PP = Magnitude. Traits: Instant, Non-Variable.

#table(
  columns: (auto, auto, auto),
  inset: 5pt,
  align: horizon,
  [*Technique*], [*Mag*], [*Effect*],
  [Awareness], [3], [No flanking bonus against you (3 rnds).],
  [Combat Focus], [2], [+1B close combat attack.],
  [Combat Mastery], [3], [+1B close combat attack, +2 dmg.],
  [Confuse], [2], [Opponent's parry/dodge at −1P.],
  [Deadly Aim], [3], [+1B ranged attack, +2 dmg.],
  [Defensive Stance], [4], [+2 AP with shield (4 rnds).],
  [Extra Reaction], [3], [Gain 1 extra reaction at −1P.],
  [Impr. Cmbt Order], [2], [+4 Combat Order.],
  [Impr. Aim], [2], [Aim as immediate action.],
  [Impr. All Out], [4], [All Out Attack without losing reaction.],
  [Impr. Disarm], [2], [Disarm without penalty.],
  [Impr. Trip], [2], [Trip without penalty.],
  [Impr. Great Atk], [4], [Great Attack without losing reaction.],
  [Impr. Intimidate], [2], [+1B Intimidate.],
  [Impr. Knock-Back], [2], [Knock-back without penalty.],
  [Protect], [3], [Force enemy to attack you instead of ally.],
  [Twin Attack], [2], [Dual wield attack without penalty on first.],
  [Twin Missile], [4], [Extra ranged attack at −1P.],
  [Unarmed Fast Atk], [2], [Extra unarmed attack at −1P.],
  [Unarmed Focus], [2], [+1B unarmed attack.],
  [Unarmed Mastery], [3], [+1B unarmed attack, +2 dmg.],
)

// #divider()

// #align(center, image("img/magic.jpg", width: 40%))

= Folk Magic

Common magic for healing, protection, and utility.
- *Learning*: `Folk Magic Casting` skill (POW × 3). 4 IP to unlock.
- *Spells*: Cost 1 IP per Magnitude. Max total Mag = INT × 2.
- *Casting*: Test `Folk Magic Casting` (if under duress). Cost PP = Magnitude.
- *Failure*: Spell fails, lose 1 PP. *Fumble*: Lose Mag PP.
- *Traits*: Range (POW × 3 m), Duration (10 mins), Variable Mag (can cast higher if known).

#table(
  columns: (auto, auto, auto),
  inset: 5pt,
  align: horizon,
  [*Spell*], [*Mag*], [*Effect*],
  [Animal Whisper], [2], [Calm animal / remove Fear.],
  [Awareness], [2], [360-degree vision.],
  [Babel], [2], [Target speaks gibberish (Resist: Pers).],
  [Beast Call], [2], [Attract animal (Resist: Resil).],
  [Befuddle], [2], [Confuse target, no offensive action (Resist: Pers).],
  [Block Sense], [3], [Blind/Deafen/Numb target (Resist: Pers).],
  [Call Spirit], [3], [Summon spirit to perform one action (Resist: Pers).],
  [Care], [2], [Share protection spells with touched ally.],
  [Clear Path], [1 (Var)], [Move through difficult terrain. +1 target/Mag.],
  [Coordination], [2 (Var)], [+4 Combat Order, +1B Dodge/Athletics per 2 Mag.],
  [Counter-Attack], [1], [Trigger: Attack after defending.],
  [Counter-Defense], [1], [Trigger: Extra reaction after defending.],
  [Countermagic], [1 (Var)], [Negate spell of equal/lower Magnitude.],
  [Create Charm], [1 (Var)], [Store spell in item (Permanent).],
  [Create PP Store], [1 (Var)], [Store PP in item (Permanent).],
  [Curshion Fall], [2], [Eliminate falling damage.],
  [Darkwall], [2], [Block light and sight (Area 5).],
  [Demoralise], [2], [-2P on weapon skills (Resist: Pers).],
  [Detect (X)], [1], [Locate Enemy/Magic/Species/Substance.],
  [Dispel Magic], [1 (Var)], [Eliminate effects of other spells.],
  [Disruption], [1 (Var)], [1d4 damage per Mag (ignores armour).],
  [Dragon Fire], [2], [1d10 fire damage (Resist: Dodge).],
  [Drive Out Spirit], [1 (Var)], [Exorcise possessing spirit.],
  [Dull Weapon], [1 (Var)], [-1 damage per Mag.],
  [Enhance Skill], [2 (Var)], [+1B to specific skill per 2 Mag.],
  [Extinguish], [1 (Var)], [Put out fire (Flame/Small/Large/Inferno).],
  [Extra Defense], [2 (Var)], [+1 Reaction per 2 Mag.],
  [Fanaticism], [2], [+1B combat, +2B morale, no parry/dodge.],
  [Farsight], [1 (Var)], [Extend vision +20m per Mag.],
  [Fire Missile], [4], [Ranged weapon deals fire damage (+1 die step).],
  [Fire Weapon], [4], [Melee weapon deals fire damage (+1 die step).],
  [Fist of Gold], [1 (Var)], [Illusion of wealth.],
  [Fist of Wind], [1 (Var)], [Extra unarmed attack per Mag.],
  [Flying Kick], [2], [Leap and kick attack.],
  [Frostbite], [2], [1d8 cold damage (ignores armour).],
  [Glue], [1 (Var)], [Stick target/item (Resist: Athletics).],
  [Hand of Death], [4], [Touch: 1/2 HP + Major Wound (Resist: Resil).],
  [Harden], [1], [Item becomes unbreakable.],
  [Heal], [1 (Var)], [Heal 1 HP/Mag. Cure Poison/Disease (4), Major Wound (6).],
  [Hinder Skill], [2 (Var)], [−1P to specific skill per 2 Mag.],
  [Ignite], [1], [Set fire to object.],
  [Invisibility], [4], [Target invisible until attack (−1P to detect).],
  [Ironmind], [2 (Var)], [+1B vs mind magic/influence per 2 Mag.],
  [Knock Back], [1 (Var)], [Knock target back Mag meters.],
  [Knockdown], [2], [Knock target prone.],
  [Leap], [1 (Var)], [Jump 2m up per Mag.],
  [Levitating Disc], [1 (Var)], [Carry items/people on disc.],
  [Light], [1], [Object sheds light (10m).],
  [Lock], [2 (Var)], [Lock item (adds +1B Resistance per 2 Mag).],
  [Mindspeech], [1 (Var)], [Telepathy with 1 target/Mag.],
  [Mobility], [1 (Var)], [+2m Move per Mag.],
  [Multi Attack], [1 (Var)], [Extra close combat attack per Mag.],
  [Multi Missile], [1 (Var)], [+1 missile clone per Mag (same damage).],
  [Noxious Vapours], [2], [Cloud causes 1d4 dmg + incapacitation.],
  [Personal Insight], [2], [Get intuition on personal question.],
  [Pierce], [1 (Var)], [Ignore 1 AP per Mag.],
  [Protection], [1 (Var)], [+1 AP per Mag.],
  [Push/Pull], [1 (Var)], [Move item 3 SIZ/ENC per Mag.],
  [Read Emotion], [1], [Know target's emotion.],
  [Resist (Element)], [2 (Var)], [+1B resist, -4 dmg from element per 2 Mag.],
  [Restore Energy], [1 (Var)], [Restore 1 fatigue level per Mag.],
  [Sap Energy], [1 (Var)], [Add 1 fatigue level per Mag.],
  [Scare], [2], [Target flees for 1d6 rounds (Resist: Pers).],
  [Second Sight], [3], [See POW auras, invisible items (+1B Percep).],
  [Skybolt], [3], [Lightning deals 2d6 damage (Resist: Dodge).],
  [Slip], [1], [Target falls prone (Resist: Athletics).],
  [Slow], [1 (Var)], [-2m Move per Mag.],
  [Speedart], [2], [+1B hit, +3 dmg on next missile shot.],
  [Spirit Bane], [2 (Var)], [Increase spirit combat dmg step per 2 Mag.],
  [Spirit Shield], [2 (Var)], [-1 Spirit Dmg taken per 2 Mag.],
  [Strength], [2 (Var)], [+1 Dmg, +1B Athletics per 2 Mag.],
  [Talk to Animal], [3], [Speak with animals (10m).],
  [Thunder's Voice], [2 (Var)], [+1B Influence, loud voice x100 range per Mag.],
  [Tongues], [3], [Speak language.],
  [Truth Seeker], [2 (Var)], [+1B to detect lies/secrets per 2 Mag.],
  [Unlock], [1 (Var)], [Open lock (+1B per Mag).],
  [Vigour], [1 (Var)], [+2 max HP per Mag.],
  [Vomit], [1 (Var)], [Target vomits (incapacitated) 1 rnd/Mag.],
  [Walk on Element], [3], [Walk on Air/Fire/Water/etc.],
  [Water Breath], [1 (Var)], [Breathe water (1 target/Mag).],
  [Weapon Enhance], [2 (Var)], [+1B hit, +2 magical dmg per two Mag.],
)

== Spirits

*Spirit Combat*: Occurs in Spirit World (instant in physical time).
- *Process*: Opposed Test (Persistence vs Persistence/Spirit Combat).
- *Damage*: Loser loses 1d6 Power Points (reduced by Spirit Shield).
- *Outcome*:
  - If PP ≤ 0: Spirit is banished (if attacker) or Character is Possessed (if victim).
  - *Covert Possession*: Spirit hides, subtle influence.
  - *Dominant Possession*: Spirit takes full control.
- *Exorcism*: Use `Drive Out Spirit` or similar magic.



