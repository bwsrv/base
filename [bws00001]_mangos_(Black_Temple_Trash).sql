-- Black Temple Trash
-- Bonechewer Worker - emote state mining
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 22963);
INSERT INTO creature_addon (guid, emote) SELECT guid, 233 FROM creature WHERE id = 22963;

-- Remove NOT_SELECTABLE flag for Bonechewer Shield Disciple, Bonechewer Blood Prophet, Bonechewer Blade Fury 
UPDATE creature_template SET unit_flags=unit_flags&~33554432 WHERE entry IN (23235, 23236, 23237);

-- Correct spawntime for Soul Fragment
UPDATE creature SET spawntimesecs = 3600 WHERE id IN (23398, 23399, 23401);
