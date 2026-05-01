# Fantasy D100 Simple

Fantasy D100 Simple is a compact D100 fantasy roleplaying engine for use by a human group or by an LLM AI GM that needs clear procedures for uncertain actions. It keeps the percentile core, characteristics, skills, deadly wounds, armour, and mundane equipment. It removes arcane, divine, battle, and folk magic. Extraordinary abilities can later be added as talents.

## AI GM Resolution Contract

Use these rules whenever the fiction has uncertainty and meaningful consequences.

1. State the character's intent and stakes.
2. Choose the most relevant skill.
3. Set difficulty as bonus or penalty dice.
4. Roll D100, applying bonus or penalty dice if present.
5. Compare the roll to the skill and identify failure, success, critical, or fumble.
6. For opposed actions, roll for both sides and use the opposed test rules.
7. Apply consequences in the fiction first, then update numbers such as HP, Hero Points, equipment, time, position, or conditions.

Do not roll for trivial actions, tasks with no pressure, or outcomes that are already certain from the fiction.

## Dice

D100 means two D10s: one tens die and one units die. A result of 00 counts as 100.

Bonus dice and penalty dice change only the tens digit.

| Modifier | Procedure |
| --- | --- |
| +1B | Roll one extra tens die and keep the lowest tens digit. |
| +2B | Roll two extra tens dice and keep the lowest tens digit. |
| -1P | Roll one extra tens die and keep the highest tens digit. |
| -2P | Roll two extra tens dice and keep the highest tens digit. |

Bonus and penalty dice cancel one for one before rolling.

## Basic Skill Test

Roll D100. If the result is equal to or lower than the skill, the character succeeds. If it is higher than the skill, the character fails.

A critical success occurs when the roll is equal to or lower than the tens value of the skill. For example, a 67% skill has a critical range of 01-06. A 100% skill has a critical range of 01-10.

A fumble occurs on 99 or 00. If the skill is 100% or higher, a fumble occurs only on 00.

Use criticals for the best plausible version of the intent: faster, cleaner, safer, more informative, more impressive, or more damaging. Use fumbles for the worst plausible complication: lost time, damaged tools, exposure, harm, bad information, or a new threat.

## Difficulty

Use the smallest modifier that clearly matters.

| Situation | Modifier |
| --- | --- |
| Strong advantage, easy task, excellent tools, ideal position | +1B |
| Overwhelming advantage, very easy task, perfect preparation | +2B |
| Mild disadvantage, hard task, poor tools, bad position | -1P |
| Serious disadvantage, very hard task, severe pressure | -2P |
| Nearly impossible but still plausible | -3P |
| Impossible from the fiction | No roll |

Assistance gives +1B if the helper can make a meaningful contribution and has at least 26% in a relevant skill. Exceptional assistance may give +2B.

## Opposed Tests

When two sides directly contest each other, both roll.

| Result | Winner |
| --- | --- |
| One succeeds and one fails | The successful side wins. |
| Both succeed | A critical beats a normal success. Otherwise the higher successful roll wins. |
| Both fail | The lower roll wins. |
| Exact tie | The player character wins, or the active side wins if no PC is involved. |

If a participant has a skill over 100%, subtract the amount above 100 from every participant's skill before rolling. For example, if one side has 120%, reduce all opposed skills by 20.

## Characters

Characters have seven characteristics.

| Characteristic | Meaning |
| --- | --- |
| STR | Strength, force, lifting, melee impact. |
| CON | Health, stamina, disease and poison resistance. |
| DEX | Agility, coordination, reflexes. |
| SIZ | Body mass and reach. |
| INT | Memory, analysis, education. |
| POW | Willpower, presence, luck, inner force. |
| CHA | Charm, leadership, social force. |

### Character Generation

Start each characteristic at 8. Distribute 30 additional points. During creation, no characteristic can exceed 18. INT and SIZ cannot be lower than 7. Other characteristics cannot be lower than 3.

Optional random generation: roll 4D6 and drop the lowest die for STR, CON, DEX, POW, and CHA. Roll 3D6+6 for INT and SIZ. The player may swap one pair of characteristics.

Human characteristics can later rise to a maximum of 21, except SIZ, which does not improve through advancement.

### Attributes

| Attribute | Formula |
| --- | --- |
| Damage Modifier | Based on STR + SIZ. |
| Hit Points | (SIZ + CON) / 2, round up. |
| Major Wound Level | HP / 2, round up. |
| Movement | 15 metres for humans. |
| Combat Order | (DEX + INT) / 2, round up, minus armour ENC. |
| Hero Points | 2 at character creation. |

Power Points are not used in the simple engine.

| STR + SIZ | Damage Modifier |
| --- | --- |
| 1-10 | -1D6 |
| 11-15 | -1D4 |
| 16-25 | +0 |
| 26-30 | +1D4 |
| 31-45 | +1D6 |
| 46-60 | +2D6 |
| 61-75 | +3D6 |
| Each additional +15 | +1D6 |

Round to the nearest whole number. Round .5 up.

## Skills

Skills are percentages. Calculate each base value from the listed formula, then add creation points.

| Group | Creation Points |
| --- | --- |
| Resistances | 50 points among the three skills. |
| Combat | 50 points among the three skills. |
| Knowledge | 50 points among the skills. |
| Practical | 75 points among the skills. |

No skill can receive more than +30 from its creation point group.

Optional customization: reduce up to 20 Combat points to gain twice as many Knowledge points. Reduce up to 10 points from Resistances, Combat, or Practical to gain Improvement Points at 5 skill points per 1 IP.

### Skill List

| Skill | Base | Use |
| --- | --- | --- |
| Dodge | DEX+10 | Avoid physical threats, attacks, traps, falling debris. |
| Persistence | POW+10 | Resist fear, coercion, mental pressure, supernatural effects if later added. |
| Resilience | CON+POW | Resist injury shock, poison, disease, exposure, hunger, fatigue. |
| Close Combat | DEX+STR | Attack and parry with melee weapons and shields. |
| Ranged Combat | DEX+INT | Attack with bows, crossbows, slings, thrown weapons. |
| Unarmed Combat | DEX+STR | Punch, kick, grapple, bite, claw, natural weapons. |
| Culture | INT+10 or INT | Customs, history, politics, geography. Own culture uses INT+10; other cultures use INT. |
| Language | INT+50 or INT | Native language uses INT+50; other languages use INT. At 50%, the character is fluent. |
| Natural Lore | INT+10 | Animals, plants, minerals, survival, tracking, weather. |
| Lore | INT | A specialist knowledge field such as law, heraldry, poisons, astronomy, tactics. |
| Athletics | DEX+STR | Climb, jump, swim, balance, run, lift, force objects. |
| Craft | INT+10 | Make and repair items in one craft field. |
| Deception | DEX+INT | Stealth, disguise, sleight of hand. |
| Driving | DEX+INT | Carts, wagons, chariots, similar vehicles. |
| Engineering | INT+10 | Siege engines, buildings, large mechanisms, mines, ships. |
| Healing | INT+10 | First aid, stabilize wounds, treat poison and disease. |
| Influence | CHA+10 | Persuade, intimidate, bargain, command, deceive socially. |
| Mechanisms | DEX+INT | Locks, traps, devices, delicate mechanisms. |
| Perception | INT+POW | Notice details, hidden things, ambushes, tracks in a scene. |
| Performance | CHA+10 | Acting, music, dance, poetry, public entertainment. |
| Riding | DEX+POW | Ride and control mounts. |
| Sailing | DEX+INT | Boats, ships, currents, sails, rowing. |
| Streetwise | CHA+POW | Urban information, fences, gangs, black markets, tailing people. |
| Trade | INT+10 | Appraise, barter, negotiate prices, understand markets. |

## Hero Points

A character starts with 2 Hero Points. Spend 1 Hero Point to do one of the following:

- Reroll a failed roll.
- Downgrade a Major Wound to a normal wound. The HP loss still applies.
- Avoid death at 0 HP or below; the character is unconscious and awakens after the danger with 1 HP.
- Add a plausible story advantage at GM discretion.

The GM awards Hero Points for major achievements, costly heroism, or excellent play.

## Improvement

The GM awards Improvement Points after adventures or during downtime.

| Cost | Improvement |
| --- | --- |
| 1 IP | Increase one or two skills below 51% by a total of 5 percentage points. |
| 1 IP | Increase one or two skills from 51% to 99% by a total of 3 percentage points. |
| 1 IP | Increase one skill of 100% or higher by 1 percentage point. |
| 5 IP | Increase one characteristic by 1, except SIZ. Human maximum is 21. |
| 1 IP | Gain from three months of practice or research, if the fiction allows. |

Future talents should also cost IP. A simple default is 2 IP for a minor talent, 5 IP for a strong talent, and 10 IP for a supernatural or campaign-defining talent.

## Equipment

Currency: 10 Copper Pieces (CP) = 1 Silver Piece (SP). 10 Silver Pieces (SP) = 1 Gold Piece (GP).

Starting cash is 4D6 x 10 SP. Each character also chooses one package:

- Leather armour, one ranged weapon, one two-handed close combat weapon, dagger.
- Leather armour, shield, one ranged weapon, one one-handed close combat weapon, dagger.

Every character also starts with backpack, rope, two weeks of provisions, flint and tinder, and waterskin.

Encumbrance (ENC) measures weight and awkwardness. A character can carry up to STR + SIZ ENC without penalty. If overloaded, the character suffers -1P to physical tests, halves Movement, and suffers -1P on fatigue or endurance tests. Maximum carry is 2 x (STR + SIZ).

### Weapons

If STR or DEX is below a weapon's listed minimum, attacks and parries with that weapon suffer -1P.

Weapon sizes are Light, Medium, Heavy, and Huge. A parrying weapon or shield blocks all damage if it is the same size or larger than the attacking weapon, half damage if one size smaller, and no damage if two or more sizes smaller.

| Weapon | Type | Damage | STR/DEX | ENC | Size | Cost |
| --- | --- | --- | --- | --- | --- | --- |
| Unarmed | - | 1D3 | -/- | - | - | - |
| Dagger | 1H/Thrown | 1D4+1 | -/- | - | Light | 20 SP |
| Hatchet | 1H/Thrown | 1D6 | 5/9 | 1 | Light | 20 SP |
| Club | Flex | 1D6 | 5/9 | 1 | Light | 20 SP |
| Shortsword | 1H | 1D6 | 5/5 | 1 | Medium | 100 SP |
| Shortspear | Flex/Set/Thrown | 1D6 | 5/5 | 2 | Medium | 20 SP |
| Quarterstaff | 2H | 1D8 | 5/9 | 2 | Medium | 20 SP |
| Arming Sword | 1H | 1D8 | 9/9 | 2 | Medium | 150 SP |
| Battleaxe | 1H | 1D8 | 9/9 | 2 | Medium | 120 SP |
| Mace | Flex | 1D8 | 9/9 | 2 | Medium | 120 SP |
| Longsword | Flex | 1D8 | 13/11 | 2 | Medium | 250 SP |
| Longspear | 2H/Set | 1D8+1 | 9/5 | 2 | Medium | 30 SP |
| Polearm | 2H/Set | 1D8 | 9/9 | 3 | Heavy | 200 SP |
| Lance | Flex/Set | 1D10 | 11/9 | 3 | Heavy | 150 SP |
| Great Weapon | 2H | 2D8 | 13/9 | 4 | Heavy | 250 SP |
| Shield, small | Shield | 1D4 | -/- | 1 | Medium | 50 SP |
| Shield, medium | Shield | 1D6 | 9/- | 2 | Heavy | 150 SP |
| Shield, large | Shield | 1D6 | 13/- | 3 | Huge | 300 SP |

Type notes: 1H uses one hand. 2H uses two hands. Flex may be used in two hands for +2 damage and -2 STR requirement. Set can be braced against a charge. Thrown can be thrown without improvised-weapon penalty. Shield can attack or parry.

| Ranged Weapon | Type | Damage | Range | STR/DEX | ENC | Cost |
| --- | --- | --- | --- | --- | --- | --- |
| Dart | Thrown | 1D3 | STR m | -/9 | - | 15 SP |
| Dagger | Thrown/Close | 1D4+1 | STR m | -/9 | - | 30 SP |
| Hatchet | Thrown/Close | 1D6 | STR m | -/9 | 1 | 25 SP |
| Javelin | Thrown | 1D6 | STR x 2 m | 5/9 | 1 | 20 SP |
| Sling | 1H | 1D6 | 50 m | -/9 | - | 5 SP |
| Shortbow | 2H | 1D8 | 75 m | 9/9 | 1 | 75 SP |
| Longbow | 2H | 1D10 | 150 m | 13/9 | 1 | 150 SP |
| Light Crossbow | 2H | 1D8 | 125 m | 5/9 | 1 | 150 SP |
| Heavy Crossbow | 2H | 2D6 | 150 m | 9/9 | 2 | 350 SP |

Thrown weapons add Damage Modifier. Bows and slings add Damage Modifier. Crossbows do not add Damage Modifier. Attacks beyond listed range and up to double range suffer -2P. Attacks beyond double range fail.

### Armour

Armour Points (AP) reduce incoming damage. Armour ENC reduces Combat Order.

| Armour | AP | ENC | Cost |
| --- | --- | --- | --- |
| Leather | 2 | 3 | 500 SP |
| Ringmail | 3 | 4 | 1000 SP |
| Scalemail | 4 | 6 | 1500 SP |
| Chainmail | 5 | 7 | 3000 SP |
| Platemail | 6 | 9 | 9000 SP |

## Combat

Combat is divided into five-second rounds.

At the start of combat, determine whether each opponent begins at close distance, meaning within two metres, or ranged distance, meaning farther than two metres and within plausible weapon range.

Each round:

1. Each combatant rolls 1D10 + Combat Order. Higher acts earlier.
2. On their turn, each combatant may take one action and one movement.
3. Each combatant may take one reaction during the round.
4. When all turns are complete, start a new round if the fight continues.

### Combat Actions

The simple engine uses only these combat actions.

| Action | Effect |
| --- | --- |
| Melee Attack | Roll Close Combat or Unarmed Combat against a target in reach. |
| Ranged Attack | Roll Ranged Combat against a target in range. |
| Grapple | Roll Unarmed Combat, then opposed Unarmed Combat if the hit lands. |
| Charge | Move at least 5 m and up to twice Movement in a straight line, then make a melee attack at +1D6 damage. Lose reaction this round. |
| Set Weapon | Brace a Set weapon. If charged before acting again, attack first with +1B. |
| Aim | Spend the action aiming at one target. The next ranged attack against that target gains +1B. Lose the aim if you react or change target. |
| Intimidate or Persuade | Opposed Influence vs Persistence to make a foe hesitate, surrender, withdraw, or accept terms if the fiction supports it. |
| Use Skill | Use a noncombat skill under pressure, such as Mechanisms to open a door. |
| Ready or Reload | Draw, swap, ready, or reload a weapon. Light crossbow reloads with one action; heavy crossbow takes a full round. |
| Delay | Act later, or roll an appropriate opposed test to interrupt another action. |

All-out attacks, great attacks, disarming attacks, trip attacks, knockout attacks, knock-back attacks, split attacks, and special off-hand attacks are not part of this engine. A player may still attempt a stunt, but the GM resolves it as a normal skill test, opposed test, or narrative consequence rather than as a separate combat subsystem.

### Movement

| Movement | Effect |
| --- | --- |
| Standard Move | Move up to Movement in metres. |
| Sprint | Move up to twice Movement. You cannot attack and may only Dodge as a reaction. |
| Change Stance | Stand, drop prone, or similar. |
| Fighting Retreat | Move up to Movement away from an engaged enemy; defensive reactions gain +1B. |
| Disengage | Leave melee. An enemy with a reaction may make one melee attack; you may Dodge if you still have a reaction. |

### Reactions

Each combatant has one reaction per round.

| Reaction | Use |
| --- | --- |
| Dodge | Roll Dodge to avoid close attacks or physical hazards. Against ranged attacks, Dodge suffers -1P and requires awareness. |
| Parry | Roll Close Combat or Unarmed Combat to block a close attack. Shields may parry thrown weapons. Other parries against thrown weapons suffer -1P. Normal missiles usually cannot be parried without a shield. |
| Opportunity Attack | Make one melee attack against a foe who disengages or exposes themselves, if the GM agrees. |

### Attack Resolution

1. Attacker rolls the attack skill.
2. If the attack fails, it misses.
3. If the attack succeeds and the defender has a reaction, the defender may Dodge or Parry.
4. Resolve attack and defence.
5. If damage lands, roll weapon damage + Damage Modifier, then subtract armour AP.
6. Apply remaining damage to HP.

| Attacker | Defender | Result |
| --- | --- | --- |
| Failure | Any | Attack misses. |
| Fumble | Any | Attack misses and attacker suffers a serious complication. |
| Success | No reaction or failed reaction | Hit; roll damage. |
| Success | Successful Dodge | No damage. |
| Success | Successful Parry | Damage is blocked by weapon size rules. |
| Success | Critical defence | No damage. |
| Critical | No reaction or failed reaction | Hit; maximum weapon damage and maximum positive Damage Modifier; ignore armour. |
| Critical | Successful noncritical Dodge | Defender avoids damage but is put in a worse position. |
| Critical | Successful noncritical Parry | Parry works by weapon size rules, but any unblocked damage ignores armour. |
| Critical | Critical defence | No damage. |

This table intentionally replaces the longer combat result table from the full game.

### Combat Modifiers

| Situation | Modifier |
| --- | --- |
| Target helpless | Automatic critical if an attack is possible. |
| Target prone or attacked from behind in melee | +1B |
| Attacker or defender has higher ground in melee | +1B |
| Attacking or defending while prone | -1P |
| Unstable ground | -1P |
| Partial darkness, smoke, mist, light cover | -1P |
| Darkness, heavy smoke, good cover | -2P |
| Blind, pitch dark, severe cover | -3P |
| Ranged target moved at least 10 m since attacker's last action | -1P |
| Ranged target moved at least 30 m since attacker's last action | -2P |
| Ranged attacker engaged in melee | -2P |

## Grappling

To grapple, make an Unarmed Combat attack. If it hits, immediately make an opposed Unarmed Combat test.

If the attacker wins, the target is grappled and the attacker chooses one effect:

- Immobilise: the target is helpless until they break free.
- Inflict pain: deal 1D4 + Damage Modifier; armour does not reduce it.
- Throw: move the target 2 m, deal 1D4 damage, and end the grapple.
- Disarm: the target drops one held item.

A grappled character may use an action to break free with an opposed Unarmed Combat test.

If one grappler is at least one third larger in SIZ, they gain +1B. If one grappler is at least one half larger in SIZ, they gain +2B. If the size difference makes the attempt absurd, do not roll.

## Damage, Wounds, and Healing

Subtract damage from HP after armour.

At 1 HP, the character falls prone and stays conscious only with a critical Resilience test.

At 0 HP or below, the character dies unless saved by a Hero Point or a specific campaign rule.

If a character takes damage equal to or higher than their Major Wound Level in one hit, they suffer a Major Wound. They must immediately roll Resilience at -2P. On failure, they fall unconscious. On success, their DEX is halved until healing begins, and they can act for only a number of rounds equal to their remaining HP before collapsing.

If a character takes damage equal to or higher than their full original HP in one hit, they suffer a fatal wound and die unless saved by a Hero Point.

### Major Wound Effects

Use this table when a concrete lasting injury is useful. Otherwise, apply the mechanical Major Wound rule and describe an appropriate injury.

| D10 | Injury |
| --- | --- |
| 1 | Eye ruined; -2P to sight-based Perception until treated, possible permanent loss. |
| 2 | Skull injury; -1P to mental tasks until treated, possible permanent INT loss. |
| 3 | Right leg disabled; fall prone, crawl 1 m per round until treated. |
| 4 | Left leg disabled; fall prone, crawl 1 m per round until treated. |
| 5 | Broken ribs; -2P to physical actions until treated. |
| 6 | Gut wound; lose 1 HP per round until stabilized. |
| 7 | Shock; unconscious for 1D10 rounds. |
| 8 | Spine injury; unable to stand or move normally until major treatment. |
| 9 | Left arm disabled; drop held items in that hand. |
| 10 | Right arm disabled; drop held items in that hand. |

### Healing

Healing without a healer's kit suffers -2P. A healing attempt usually takes a few minutes.

| Use | Effect |
| --- | --- |
| Revive | A successful Healing test wakes an unconscious character if the cause allows. |
| Minor Injury | A successful Healing test restores 1D4 HP. |
| Stabilize Major Wound | A successful Healing test stops bleeding or immediate deterioration but does not restore HP. |
| Surgery | After stabilization, a successful Healing test begins proper recovery and restores 1 HP. |
| Poison or Disease | A successful Healing test gives the patient a second Resilience test or a bonus equal to the healer's critical range, as the GM decides. |

Natural healing rate is 1 HP per full day of rest. Major Wounds require treatment and downtime before lost function returns.

## Conditions

Use conditions as plain-language tags that tell the GM what modifiers apply.

| Condition | Effect |
| --- | --- |
| Prone | -1P to melee actions; ranged attacks against the target suffer -1P; standing requires movement. |
| Helpless | Attacks become automatic criticals if the attacker has time and access. |
| Unconscious | Helpless, cannot act or react. |
| Grappled | Cannot move away; must win an opposed Unarmed Combat test to break free. |
| Overloaded | -1P to physical tests, half Movement, -1P to fatigue tests. |
| Hidden | Opposed Deception vs Perception to detect. |

## Social Conflict

Use Influence vs Persistence, Influence, or Perception when a social outcome is uncertain and pressure matters. Do not use Influence to force someone to violate their self-preservation, core loyalty, or obvious interests without leverage.

For groups, roll once using the leader's best relevant skill, or an average score for the group.

| Target State | Target Modifier |
| --- | --- |
| Confident, full strength, clear advantage | +2B |
| Advantage but shaken or partly depleted | +1B |
| Outmatched, wounded, isolated, or afraid | -1P |
| Broken morale, leader down, more than half defeated | -2P |

## Travel and Hazards

Use Natural Lore for wilderness survival, tracking, weather prediction, and foraging. Use Athletics for climbing, swimming, jumping, forced marches, and brute force. Use Resilience for exposure, hunger, thirst, poison, disease, and fatigue.

One daily survival test is enough for a dangerous wilderness day. On failure, apply a concrete cost: lost time, depleted supplies, HP loss, fatigue, exposure, getting lost, or an encounter.

Falling damage default: 1D6 per 3 m fallen. A successful Athletics test halves falling damage if the character could plausibly control the fall.

## Talents Placeholder

This engine has no spell lists. Add talents later as discrete purchasable abilities.

A talent should have:

- Name.
- IP cost.
- Trigger.
- Action cost, if any.
- Roll required, if any.
- Effect on success.
- Effect on critical.
- Cost or risk on failure.
- Refresh rule, if limited.

Default talent costs:

| Talent Scale | Cost | Guideline |
| --- | --- | --- |
| Minor | 2 IP | Narrow +1B, small utility, situational trick. |
| Strong | 5 IP | Reliable combat option, strong defence, limited healing, limited supernatural effect. |
| Major | 10 IP | Signature supernatural ability, broad transformation, rare campaign-level effect. |

Until talents are written, no character has magic, spells, battle magic, folk magic, divine miracles, or arcane sorcery.

