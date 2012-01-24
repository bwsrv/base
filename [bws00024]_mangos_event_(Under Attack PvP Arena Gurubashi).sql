## Название: Under Attack PvP Arena Gurubashi
## Версия: 3.0 Final
## Авторы: GrEM fM Team, mosst, stoun.
## Адаптировано под 3.3.5
## ======================
# Предыстория:
# В давние времена жил в Азероте талантливый воин. Он объездил все страны и континенты
# борясь со злом и несправедливостью. За время своих походов он не только отточил своё
# мастерство и силу, но и повидал много всего ужасного. Он бился с различными порождениями
# зла, и постепенно характер его менялся. В итоге он сам стал монстром. Устав от всего,
# воин поселился подальше от людей, в темных подвалах развалин старой арены Гурубаши...
# Но время не стоит на месте, арену вновь отстроили, и новые поколения бойцов стали
# принимать участие в боях на арене. Шум, говор и лязг оружия не дают покоя старому
# воину-монстру. Он взбешен. Он хочет покоя. И для этого решил сорвать бои на арене. Раз
# в неделю в самый разгар боев монстр появляется на арене и пытается уничтожить всех, кто
# попадется ему под руку.
## ======================
# Описание:
# На арене раз в неделю на 1,5 часа появляется монстр. Игроки должны убить его. Из убитого
# выпадает ценная вещь, предъявив которую вендору у ворот арены, можно получить уникальную
# валюту сервера или 2 эмблемы льда. Респаун монстра - 10 минут и 15 минут на выполнение квеста.
## ======================
# Диапазоны guid в базе:
# gameobject - 302000 + 7
# gameobject_template - 500000
# creature_template - 500010, 500011
# creature - 304000 + 1
# item_template - 22485

-- начальные guid-ы
SET @GAMEOBJECT := 302000;
SET @CREATURE := 304000;

# _Event_ -------------------------------------------------------------------------------
DELETE FROM game_event WHERE entry = 109;
INSERT INTO game_event (entry, start_time, end_time, occurence, length, Holiday, description) VALUES
('109', '2009-03-22 18:00:30', '2019-02-24 06:00:00', '10080', '150', '0', 'Under Attack PvP Arena Gurubashi');
# Teleport ------------------------------------------------------------------------------
DELETE FROM gameobject_template WHERE entry = 500000;
INSERT INTO gameobject_template
(entry, type, displayId, name, castBarCaption, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, ScriptName) VALUES
(500000, 1, 6955, 'Portal to PVP Arena Gurubashi', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM gameobject_scripts WHERE id BETWEEN @GAMEOBJECT+0 AND @GAMEOBJECT+7;
INSERT INTO gameobject_scripts
(id, delay,command,datalong,x, y, z, o, comments) VALUES
(@GAMEOBJECT+0, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+1, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+2, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+3, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+4, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+5, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+6, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, ''),
(@GAMEOBJECT+7, 0, 6, 0, -13232.8, 218.2, 31.82, 1.133, '');
DELETE FROM gameobject WHERE id = 500000;
INSERT INTO gameobject VALUES
(@GAMEOBJECT+0, 500000, 1, 1, 1, -1277.71, 119.821, 131.183, 5.28871, 0, 0, 0.477, -0.878903, 25, 0, 1),
(@GAMEOBJECT+1, 500000, 0, 1, 1, 1804.87, 247.557, 60.587, 0.0268662, 0, 0, 0.0134327, 0.99991, 25, 0, 1),
(@GAMEOBJECT+2, 500000, 530, 1, 1, 9502.29, -7296.7, 14.0802, 6.16511, 0, 0, 0.0590033, -0.998258, 25, 0, 1),
(@GAMEOBJECT+3, 500000, 1, 1, 1, 9952.24, 2292.66, 1341.39, 1.56446, 0, 0, 0.704862, 0.709344, 25, 0, 1),
(@GAMEOBJECT+4, 500000, 530, 1, 1, -4003.39, -11874.8, -0.765862, 4.13906, 0, 0, 0.87819, -0.478312, 25, 0, 1),
(@GAMEOBJECT+5, 500000, 0, 1, 1, -4979.75, -884.672, 501.646, 5.39676, 0, 0, 0.428842, -0.90338, 25, 0, 1),
(@GAMEOBJECT+6, 500000, 1, 1, 1, 1535.18, -4412.6, 11.3752, 3.24601, 0, 0, 0.998637, -0.052185, 25, 0, 1),
(@GAMEOBJECT+7, 500000, 0, 1, 1, -8994.24, 489.263, 96.6113, 3.81739, 0, 0, 0.943454, -0.331503, 25, 0, 1);
DELETE FROM game_event_gameobject WHERE guid BETWEEN @GAMEOBJECT+0 AND @GAMEOBJECT+7;
INSERT INTO game_event_gameobject VALUES
(@GAMEOBJECT+0, 109),
(@GAMEOBJECT+1, 109),
(@GAMEOBJECT+2, 109),
(@GAMEOBJECT+3, 109),
(@GAMEOBJECT+4, 109),
(@GAMEOBJECT+5, 109),
(@GAMEOBJECT+6, 109),
(@GAMEOBJECT+7, 109);
DELETE FROM locales_gameobject WHERE entry = 500000;
INSERT INTO locales_gameobject VALUES ('500000','','','','','','','','Портал На Гурубаши Арену.','','','','','','','','');
# BOSS --------------------------------------------------------------------------------
DELETE FROM creature_template WHERE entry = 500010;
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid_1, modelid_2, modelid_3, modelid_4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, minhealth, maxhealth, minmana, maxmana, armor, faction_A, faction_H, npcflag, speed_walk, speed_run, scale, rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, PetSpellDataId, mingold, maxgold, AIName, MovementType, InhabitType, unk16, unk17, RacialLeader, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, flags_extra, ScriptName) VALUES 
(500010, 0, 0, 0, 0, 0, 21254, 0, 21254, 0, 'Under', 'Crazy', '', 0, 83, 83, 10000000, 10000000, 5000000, 5000000, 8505, 14, 14, 0, 1, 1.4, 1.5, 3, 370, 531, 0, 343, 35, 2000, 84, 0, 4096, 0, 0, 0, 0, 0, 0, 365, 542, 2000, 0, 8, 500010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52145, 100000, 'EventAI', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2108, 0, 0, 617553791, 256, '');
DELETE FROM creature WHERE id = 500010;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@CREATURE+0, 500010, 0, 1, 1, 0, 0, -13205.5, 272.942, 21.858, 4.2155, 600, 0, 0, 10000000, 5000000, 0, 0);
DELETE FROM game_event_creature WHERE guid = @CREATURE+0;
INSERT INTO game_event_creature VALUES (@CREATURE+0, 109);
DELETE FROM locales_creature  WHERE entry = 500010;
INSERT INTO locales_creature  VALUES ('500010','','','','','','','','Ундер',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Сумасшедший');
# QuestGiver ----------------------------------------------------------------------------
DELETE FROM creature_template WHERE entry = 500011;
INSERT INTO creature_template (entry, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3, KillCredit1, KillCredit2, modelid_1, modelid_2, modelid_3, modelid_4, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, minhealth, maxhealth, minmana, maxmana, armor, faction_A, faction_H, npcflag, speed_walk, speed_run, scale, rank, mindmg, maxdmg, dmgschool, attackpower, dmg_multiplier, baseattacktime, rangeattacktime, unit_class, unit_flags, dynamicflags, family, trainer_type, trainer_spell, trainer_class, trainer_race, minrangedmg, maxrangedmg, rangedattackpower, type, type_flags, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, PetSpellDataId, mingold, maxgold, AIName, MovementType, InhabitType, unk16, unk17, RacialLeader, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, movementId, RegenHealth, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, flags_extra, ScriptName) VALUES (500011, 0, 0, 0, 0, 0, 30863, 0, 0, 0, 'Veroniya', 'Defender PvP Arena Gurubashi', '', 0, 80, 80, 10467, 15647, 57879, 59752, 7822, 35, 35, 2, 1, 1.2, 1, 3, 346, 499, 0, 287, 7.5, 2000, 69, 0, 0, 0, 0, 0, 0, 0, 0, 315, 468, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1221, 0, 0, 652951551, 2, '');
DELETE FROM creature WHERE id = @CREATURE+1;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@CREATURE+1, 500011, 0, 1, 1, 0, 0, -13225.1, 235.282, 33.4367, 4.2376, 600, 0, 0, 10467, 57879, 0, 0);
DELETE FROM game_event_creature WHERE guid = @CREATURE+1;
INSERT INTO game_event_creature VALUES (@CREATURE+1, 109);
DELETE FROM locales_creature  WHERE entry = 500011;
INSERT INTO locales_creature  VALUES ('500011','','','','','','','','Верония',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Защитник Арена Гурубаши');
# Quests --------------------------------------------------------------------------------
DELETE FROM creature_questrelation WHERE quest = 500001;
INSERT INTO creature_questrelation (id, quest) VALUES (500011, 500001);
DELETE FROM creature_involvedrelation WHERE quest = 500001;
INSERT INTO creature_involvedrelation (id, quest) VALUES (500011, 500001);
UPDATE item_template SET StartQuest = 0 WHERE StartQuest = 500001;
DELETE FROM quest_template WHERE entry = 500001;
INSERT INTO quest_template (entry, Method, ZoneOrSort, MinLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) VALUES 
(500001, 2, 0, 79, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 900, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Under Attack PvP Arena Gurubashi', 'Well hi, the man of courage.', 'Kill the boss and take away from it a stone. As the reward you will receive a gift from me.', 'Here hold has deserved.', 'Come back when you will extract a Shard of Stone.', '', '', '', '', '', '', 22485, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38186, 49426, 0, 0, 0, 0, 10, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM game_event_quest WHERE quest = 500001;
INSERT INTO game_event_quest VALUES (500001, 109);
DELETE FROM locales_quest WHERE entry = 500001;
INSERT INTO locales_quest VALUES 
('500001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Нападение на Арену Гурубаши',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Отлично! Привет храбрец. Сейчас тебе предстоит трудное испытание.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Убей Ундера, что за мной, и принеси мне утеряный Осколок Камня. В награду получишь от меня небольшой подарок.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Отлично! ты справился.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Возвращайся, когда отберёшь у него Осколок камня!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');

# Quest Item ---------------------------------------------------------------------------------
DELETE FROM item_template WHERE entry = 22485;
INSERT item_template (entry, class, subclass, unk0, name, displayid, Quality, Flags, Flags2, BuyCount, BuyPrice, SellPrice, InventoryType, AllowableClass, AllowableRace, ItemLevel, RequiredLevel, RequiredSkill, RequiredSkillRank, requiredspell, requiredhonorrank, RequiredCityRank, RequiredReputationFaction, RequiredReputationRank, maxcount, stackable, ContainerSlots, StatsCount, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, ScalingStatDistribution, ScalingStatValue, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, delay, ammo_type, RangedModRange, spellid_1, spelltrigger_1, spellcharges_1, spellppmRate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmRate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmRate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmRate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmRate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, description, PageText, LanguageID, PageMaterial, startquest, lockid, Material, sheath, RandomProperty, RandomSuffix, block, itemset, MaxDurability, area, Map, BagFamily, TotemCategory, socketColor_1, socketContent_1, socketColor_2, socketContent_2, socketColor_3, socketContent_3, socketBonus, GemProperties, RequiredDisenchantSkill, ArmorDamageModifier, Duration, ItemLimitCategory, HolidayId, ScriptName, DisenchantID, FoodType, minMoneyLoot, maxMoneyLoot, ExtraFlags) VALUES 
(22485, 15, 0, -1, 'Shard of Stone', 20220, 6, 1, 0, 1, 0, 0, 0, -1, -1, 80, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Pulsates in hands', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);

DELETE FROM locales_item WHERE entry = 22485;
INSERT INTO locales_item (entry, name_loc1, name_loc2, name_loc3, name_loc4, name_loc5, name_loc6, name_loc7, name_loc8, description_loc1, description_loc2, description_loc3, description_loc4, description_loc5, description_loc6, description_loc7, description_loc8) VALUES ('22485','','','','','','','','Осколок камня',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Пульсирует в руках');

# Boss Spells ---------------------------------------------------------------------------------
-- SELECT * FROM creature_ai_scripts WHERE creature_id = 500010;
DELETE FROM creature_ai_scripts WHERE creature_id = 500010;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT) VALUES
-- стойки
(500010100,500010,4,0,100,0,0,  1000,0,   0,   11,53792, 0,0,0,0,0,0,0,0,0,0,'Under cast Battle Stance'),
(500010101,500010,2,0,100,0,65, 60,  0,   0,   11,53791, 0,0,0,0,0,0,0,0,0,0,'Under cast Berserker Stance'),
(500010102,500010,2,0,100,0,25, 20,  0,   0,   11,53790,   0,0,0,0,0,0,0,0,0,0,'Under cast Defensive Stance'),
-- спелы во всех стойках
(500010103,500010,1,0,100,1,6000,8000, 6000,8000, 11,52029,   1,0,0,0,0,0,0,0,0,0,'Under cast Отталкивание'),
(500010104,500010,1,0,100,1,8000,10000,8000,10000,11,15284,  1,0,0,0,0,0,0,0,0,0,'Under cast Cleave'),
-- cпелы в Defensive Stance
(500010105,500010,2,0,100,1,19, 0,  25000,   26000,   11,23920,  0,0,0,0,0,0,0,0,0,0,'Under cast Spell Reflection'),
(500010106,500010,2,0,100,1,10, 0,  12000,   15000,   11,36096,    0,0,0,0,0,0,0,0,0,0,'Under cast отражение');

-- Update
UPDATE item_template SET flags = flags|2048 WHERE entry IN (22485, 38186);
UPDATE quest_template SET RequiredRaces = 0, SpecialFlags = 1, QuestFlags = QuestFlags|32768, minlevel = 40 WHERE entry = 500001; 
