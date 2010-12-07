-- Start time for event Fishing Extravaganza
UPDATE game_event SET start_time='2009-06-14 14:00:00', occurence = 10080, length = 120 WHERE entry = 15;

-- Create Jang
DELETE FROM creature WHERE id = 15078;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES (954687, 15078, 0, 1, 1, 0, 1711, -14438, 473.661, 15.3137, 3.65362, 25, 0, 0, 3200, 0, 0, 0);

-- Create Fishbot 5000
DELETE FROM creature WHERE id = 15079;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES (954688, 15079, 0, 1, 1, 0, 0, -14440, 477.446, 15.25, 3.71802, 25, 0, 0, 2600, 0, 0, 0);

-- Create Riggle Bassbait
DELETE FROM creature WHERE id = 15077;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES (954689, 15077, 0, 1, 1, 0, 13, -14439.3, 475.42, 15.892, 3.68503, 25, 0, 0, 3700, 0, 0, 0);

-- Create Soapbox gameobject
DELETE FROM gameobject WHERE id = 180403;
INSERT INTO gameobject (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES (954391, 180403, 0, 1, 1, -14439.3, 475.42, 15.2791, 3.68503, 0, 0, 0.963311, -0.268388, 25, 0, 1);

-- Fishing Extravaganza Questgivers
DELETE FROM game_event_creature WHERE guid IN (954687, 954688, 954689);
DELETE FROM game_event_gameobject WHERE guid = 954391;

-- Create Event
DELETE FROM game_event WHERE entry = 201;
INSERT INTO game_event (entry, start_time, end_time, occurence, length, holiday, description) VALUES (201, '2009-03-29 14:00:00', '2020-12-31 00:00:00', 10080, 180, 0, 'Fishing Extravaganza Questgivers');

-- Add NPCs to Event
DELETE FROM game_event_creature WHERE abs(event) = 201;
INSERT INTO game_event_creature (guid, event) VALUES 
(954687, 201), 
(954688, 201), 
(954689, 201);

-- Add Soapbox to Event
DELETE FROM game_event_gameobject WHERE abs(event) = 201;
INSERT INTO game_event_gameobject (guid, event) VALUES 
(954391, 201);

-- Remove Quests from normal DB:
DELETE FROM creature_questrelation WHERE quest IN (8193, 8194, 8225, 8224, 8221);

-- Add Quests to Event
DELETE FROM game_event_quest WHERE event IN (15, 201);
INSERT INTO game_event_quest (quest, event) VALUES 
(8193,201), 
(8194,201), 
(8225,201), 
(8224,201), 
(8221,201);
