-- Support spells for Wintergrasp Vehicles.
-- Horde
-- Wintergrasp Siege Engine
UPDATE creature_template SET minhealth = 75000, maxhealth = 75000, PowerType = 3, spell1 = 51678, spell2 = 54109 WHERE entry = 32627;
-- Wintergrasp Siege Turret
UPDATE creature_template SET minhealth = 50000, maxhealth = 50000, PowerType = 3, spell1 = 57609, armor = 9729, mindmg = 422, maxdmg = 586, minrangedmg = 345, maxrangedmg = 509, attackpower = 642, rangedattackpower = 103 WHERE entry = 32629;

-- Alliance
-- Wintergrasp Siege Engine
UPDATE creature_template SET minhealth = 75000, maxhealth = 75000, PowerType = 3, spell1 = 51678, spell2 = 54109 WHERE entry = 28312;
-- Wintergrasp Siege Turret
UPDATE creature_template SET minhealth = 50000, maxhealth = 50000, PowerType = 3, spell1 = 57609, armor = 9729, mindmg = 422, maxdmg = 586, minrangedmg = 345, maxrangedmg = 509, attackpower = 642, rangedattackpower = 103 WHERE entry = 28319;

-- Neutral
-- Wintergrasp Tower Cannon
UPDATE creature_template SET PowerType = 3, spell1 = 51421, mechanic_immune_mask = mechanic_immune_mask|652951551, armor = 9729, mindmg = 422, maxdmg = 586, minrangedmg = 345, maxrangedmg = 509, attackpower = 642, rangedattackpower = 103 WHERE entry = 28366;
-- Wintergrasp Catapult
UPDATE creature_template SET spell1 = 50025, spell2 = 50989, mechanic_immune_mask = mechanic_immune_mask|652951551, armor = 9729, mindmg = 422, maxdmg = 586, minrangedmg = 345, maxrangedmg = 509, attackpower = 642, rangedattackpower = 103 WHERE entry = 27881;
-- Wintergrasp Demolisher
UPDATE creature_template SET spell1 = 50896, spell2 = 50652 WHERE entry = 28094;