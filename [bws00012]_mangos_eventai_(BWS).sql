-- INSTANCE Azjol-Nerub: Ahnkahet: The Old Kingdom
UPDATE creature_template SET AIname='EventAI' WHERE entry=30176;
DELETE FROM creature_ai_scripts WHERE creature_id=30176;
INSERT IGNORE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES
(3017601, 30176, 4, 0, 100, 6, 0, 0, 0, 0, 11, 56354, 0, 6, 11, 56151, 0, 7, 0, 0, 0, 0, 'Ahn\'kahar Guardian - Cast Sprint and Guardian Aura at aggro'),
(3017602, 30176, 8, 0, 100, 7, 56153, -1, 0, 0, 28, 0, 56153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ahn\'kahar Guardian - remove Guardian Aura trigger spell (hack)');

-- INSTANCE Azjol-Nerub: Azjol-Nerub
update creature_template set AIName='EventAI', ScriptName='' where entry=28921;
delete from creature_ai_scripts where creature_id=28921;
insert into creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) values
-- Hadronox
(2892101, 28921, 0, 0, 100, 3, 12000, 15000, 30000, 40000, 11, 53400, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - cast Acid cloud (Normal)'),
(2892102, 28921, 0, 0, 100, 5, 12000, 15000, 30000, 40000, 11, 59419, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - cast Acid cloud (Heroic)'),
(2892103, 28921, 0, 0, 100, 3, 8000, 10000, 36500, 42000, 11, 53406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - cast WEB grab (Normal)'),
(2892104, 28921, 0, 0, 100, 5, 8000, 10000, 36500, 42000, 11, 59420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - cast WEB grab (Heroic)'),
(2892105, 28921, 0, 0, 100, 3, 25000, 27000, 22000, 25000, 11, 53030, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - Leech Poison (Normal)'),
(2892106, 28921, 0, 0, 100, 5, 25000, 27000, 22000, 25000, 11, 59417, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - Leech Poison (Heroic)'),
(2892107, 28921, 0, 0, 100, 7, 23000, 33000, 12500, 15000, 11, 53418, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hadronox - cast pierce armor');

-- INSTANCE Naxxramas
UPDATE creature_template SET AIName='EventAI' WHERE entry=16981;
DELETE FROM creature_ai_scripts WHERE creature_id=16981;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES
-- Plagued Guardian
(1698101, 16981, 0, 0, 100, 3, 6000, 7000, 6000, 7000, 11, 54890, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1698102, 16981, 0, 0, 100, 5, 6000, 7000, 6000, 7000, 11, 54891, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- INSTANCE Vault of Archavon
update creature_template set AIName='EventAI' where entry=32353;
delete from creature_ai_scripts where creature_id=32353;
insert into creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) values
(3235301, 32353, 0, 0, 50, 3, 20000, 21000, 20000, 25000, 11, 60897, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archavon Warder - Cast Shield Crush (Normal)'),
(3235302, 32353, 0, 0, 50, 5, 20000, 21000, 20000, 25000, 11, 60899, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archavon Warder - Cast Shield Crush (Heroic)'),
(3235303, 32353, 0, 0, 100, 3, 12000, 14000, 12000, 14000, 11, 60902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archavon Warder - Cast Whirl (Normal)'),
(3235304, 32353, 0, 0, 100, 5, 12000, 14000, 12000, 14000, 11, 60916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archavon Warder - Cast Whirl (Heroic)'),
(3235305, 32353, 0, 0, 100, 3, 8000, 10000, 20000, 25000, 11, 60919, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Archavon Warder - Cast Rock Shower (Normal)'),
(3235306, 32353, 0, 0, 100, 5, 8000, 10000, 20000, 25000, 11, 60923, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Archavon Warder - Cast Rock Shower (Heroic)');

-- NPC Training Dummies
update creature_template set minhealth=1000000, maxhealth=1000000, armor=0 where entry=31144;
update creature_template set mechanic_immune_mask=12656656 where entry in (31144, 31146, 32547);
update creature_template set AIName='EventAI' where entry in (31144, 31146, 32547);
delete from creature_ai_scripts where creature_id in (31144, 31146, 32547);
insert into creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) values
(3114401, 31144, 1, 0, 100, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - don\'t die'),
(3114402, 31144, 0, 0, 100, 1, 120000, 120000, 120000, 120000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - evade'),
(3114403, 31144, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - disable autoattack and combat movement'),
(3114404, 31144, 0, 0, 100, 1, 5000, 5000, 5000, 5000, 11, 43978, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - cast Lay on Hands'),
(3114601, 31146, 1, 0, 100, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - don\'t die'),
(3114602, 31146, 0, 0, 100, 1, 120000, 120000, 120000, 120000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - evade'),
(3114603, 31146, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - disable autoattack and combat movement'),
(3114604, 31146, 0, 0, 100, 1, 5000, 5000, 5000, 5000, 11, 43978, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - cast Lay on Hands'),
(3254701, 32547, 1, 0, 100, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - don\'t die'),
(3254702, 32547, 0, 0, 100, 1, 120000, 120000, 120000, 120000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - evade'),
(3254703, 32547, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - disable autoattack and combat movement'),
(3254704, 32547, 0, 0, 100, 1, 5000, 5000, 5000, 5000, 11, 43978, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Training Dummy - cast Lay on Hands');

-- NPC Halfdan the Ice-Hearted
DELETE FROM creature_ai_scripts WHERE creature_id=23671;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
(2367101, 23671, 0, 0, 100, 1, 5000, 6000, 14000, 16000, 11, 32015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Halfdan the Ice-Hearted - Cast Cutdown'),
(2367102, 23671, 0, 0, 100, 1, 7000, 8000, 9000, 11000, 11, 32736, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Halfdan the Ice-Hearted - Cast Mortal Strike'),
(2367103, 23671, 0, 0, 100, 1, 8000, 8000, 13000, 16000, 11, 12169, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Halfdan the Ice-Hearted - Casts Shield Block'),
(2367104, 23671, 4, 0, 100, 0, 0, 0, 0, 0, 11, 19131, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Halfdan the Ice-Hearted - Cast Shield Charge'),
(2367105, 23671, 2, 0, 100, 1, 30, 0, 120000, 120000, 11, 8599, 0, 1, 1, -46, 0, 0, 0, 0, 0, 0, 'Halfdan the Ice-Hearted - Cast Enrage at 30% HP');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 23671;

-- Hunter Snake Trap support
-- NPC Hunter Venomous Snake
DELETE FROM creature_ai_scripts WHERE creature_id=19833;
INSERT INTO creature_ai_scripts VALUES 
(1983301, 19833, 0, 0, 50, 1, 0, 0, 12000, 12000, 11, 25809, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Venomous Snake - Cast Crippling poison'),
(1983302, 19833, 0, 0, 50, 1, 1000, 1000, 12000, 12000, 11, 25810, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Venomous Snake - Cast Mind-numbing Poison'),
(1983303, 19833, 0, 0, 25, 1, 0, 0, 13000, 13000, 11, 34655, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Venomous Snake - Cast Deadly Poison');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 19833;
-- NPC Hunter Viper
DELETE FROM creature_ai_scripts WHERE creature_id=19921;
INSERT INTO creature_ai_scripts VALUES 
(1992101, 19921, 0, 0, 50, 1, 0, 0, 6000, 6000, 11, 25809, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Viper - Cast Crippling poison'),
(1992102, 19921, 0, 0, 50, 1, 1000, 1000, 6000, 6000, 11, 25810, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Viper - Cast Mind-numbing Poison'),
(1992103, 19921, 0, 0, 25, 1, 0, 0, 7000, 7000, 11, 34655, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Viper - Cast Deadly Poison' );
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 19921;

-- NPC Snowdrift Jormungar
UPDATE creature_ai_scripts SET event_type=10, event_param2=15 WHERE id IN (2939002, 2939003);

-- NPC Infesting Jormungar
UPDATE creature_ai_scripts SET event_type=10, event_param2=15 WHERE id IN (3014802, 3014803);

-- NPC Serfex the Reaver
UPDATE creature_ai_scripts SET event_type=10, event_param2=15 WHERE id IN (2808302, 2808303);

-- NPC Mature Bone Sifter
UPDATE creature_template SET AIName='EventAI' WHERE entry=22482;
DELETE FROM creature_ai_scripts WHERE creature_id=22482;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES
(2248201, 22482, 1, 0, 100, 0, 0, 0, 500, 500, 11, 20567, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - Cast Submerge Visual OOC and Set Unselectable and Unattackable Flags and Start Combat Movement'),
(2248202, 22482, 10, 0, 100, 0, 0, 15, 0, 0, 28, 0, 20567, 0, 28, 0, 29147, 0, 11, 37752, 0, 0, 'Mature Bone Sifter - On OOC LOS (15 yards) Remove Submerge Visual and Tunnel Bore Passive and Cast Stand'),
(2248203, 22482, 10, 0, 100, 0, 0, 15, 0, 0, 21, 0, 0, 0, 19, 33554434, 0, 0, 22, 1, 0, 0, 'Mature Bone Sifter - On OOC LOS (15 yards) Prevent Combat Movement Remove Unselectable and Unattackable Flags and Set Phase 1'),
(2248204, 22482, 0, 1, 100, 1, 1000, 1000, 2100, 4500, 11, 31747, 1, 0, 21, 0, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - Cast Poison (Phase 1)'),
(2248205, 22482, 0, 1, 100, 1, 10000, 20000, 45000, 50000, 11, 32738, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - Phase 1 Cast Bore'),
(2248206, 22482, 9, 0, 100, 0, 20, 60, 0, 0, 11, 20567, 0, 0, 11, 29147, 0, 0, 22, 2, 0, 0, 'Mature Bone Sifter - At 20 - 60 Yards Range Cast Submerge Visual and Tunnel Bore Passive Set Phase 2 (Phase 1)'),
(2248207, 22482, 9, 1, 100, 0, 0, 8, 0, 0, 28, 0, 20567, 0, 28, 0, 29147, 0, 11, 37752, 0, 0, 'Mature Bone Sifter - At 0 - 8 Yards Range Remove Submerge Visual and Tunnel Bore Passive and Cast Stand (Phase 2)'),
(2248208, 22482, 9, 1, 100, 0, 0, 8, 0, 0, 21, 0, 0, 0, 19, 33554434, 0, 0, 22, 1, 0, 0, 'Mature Bone Sifter - At 0 - 8 Yards Range Prevent Combat Movement Remove Unselectable and Unattackable Flags and Set Phase 1 (Phase 2)'),
(2248209, 22482, 7, 0, 100, 0, 0, 0, 0, 0, 11, 20567, 0, 0, 22, 1, 0, 0, 11, 29147, 0, 0, 'Mature Bone Sifter - On Evade Set Phase to 1 Cast Submerge and Set Flag Unattackable'),
(2248210, 22482, 7, 0, 100, 0, 0, 0, 0, 0, 14, -100, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - On Evade Drop Aggro and Set Unselectable and Unattackable Flags');

-- QUEST Scalps!
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 28600;
DELETE FROM creature_ai_scripts WHERE id=2846505;
DELETE FROM creature_ai_scripts WHERE creature_id=28600;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
(2846505, 28465, 8, 0, 100, 1, 52090, -1, 0, 0, 33, 28622, 6, 0, 41, 0, 0, 0, 0, 0, 0, 0, 'quest kill credit 28622 (q12659)'),
(2860001, 28600, 8, 0, 100, 1, 52090, -1, 0, 0, 33, 28622, 6, 0, 41, 0, 0, 0, 0, 0, 0, 0, 'quest kill credit 28622 (q12659)');

-- QUEST The Restless Dead
DELETE FROM creature_ai_scripts WHERE id IN (3104301, 3104302);
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
(3104301, 31043, 8, 0, 100, 1, 57806, 1, 0, 300000, 33, 30546, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest kill credit 29060 (q13110)'),
(3104302, 31043, 11, 0, 100, 1, 0, 0, 0, 0, 28, 0, 57806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'remove aura from spell 57806 when creature spawn');

-- QUEST The Last of Her Kind (dirty hack)
DELETE FROM creature_ai_scripts WHERE creature_id=29563;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
(2956351, 29563, 10, 0, 100, 1, 1, 10, 2000, 2000, 33, 29563, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'when player moves within 10m - kill credit q12983');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 29563;

-- QUEST The Drakkensryd (dirty hack)
DELETE FROM creature_ai_scripts WHERE id=2969402;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
(2969402, 29694, 8, 0, 100, 0, 54933, -1, 60000, 60000, 33, 29800, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest kill credit 29800 (q12886)');

-- QUEST Smoke 'Em Out
DELETE FROM creature_ai_texts WHERE entry IN (-275701, -275702);
INSERT INTO creature_ai_texts (entry, content_default, 
content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, 
sound, type, language, emote, comment) VALUES
(-275701, "We're all gonna die!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,"Venture Co. Straggler"),
(-275702, "Gotta get out of here!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,"Venture Co. Straggler");
DELETE FROM creature_ai_scripts WHERE id=2757002;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, 
action1_type, action1_param1, action1_param2, action1_param3, 
action2_type, action2_param1, action2_param2, action2_param3, 
action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
(2757002,27570,8,0,100,1,49075,-1,0,0,1,-275701,-275702,0,33,27568,1,0,41,1000,0,0,"Smoke 'Em Out");

-- QUEST Souls of the Decursed
DELETE FROM creature_ai_scripts WHERE creature_id = 25814 AND id = 2581402;
INSERT INTO creature_ai_scripts VALUES
(2581402,25814,8,0,100,0,46485,-1,0,0,33,26096,6,0,0,0,0,0,0,0,0,0,'Fizzcrank Mechagnome - Soul Quest Credit ');
