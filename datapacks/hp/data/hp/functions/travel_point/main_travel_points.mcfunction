execute as @s[tag=inConversation] run function hp:conversation/exit_conversation
execute as @s[tag=inInventory] run function hp:inventory/exit_inventory
execute as @s[tag=inMap] run function hp:map/exit_map
execute as @s[tag=inSettings] run function hp:settings/exit_settings
execute as @s[tag=inQuestBook] run function hp:quests/exit_questbook
execute as @s[tag=inBrewer] run function hp:potion_brewing/exit_brewer
execute as @s[tag=inPensive] run function hp:pensive/exit_pensive
execute as @s[tag=inLetter] run function hp:misc/read_hogwarts_letter/exit_read_hogwarts_letter
execute as @s[tag=inWingardium] run tag @s add wingardiumExit
execute as @s[tag=inAppiration] run tag @s add exitApparition

# Hack to prevent issue with being stunned by dark spirit
scoreboard players set @s darkSpiritStun 0
tag @s remove stunnedByDarkSpirit

scoreboard players remove @s[scores={travelPoint=1..}] travelPoint 1
execute as @s[tag=travelPointPlatform9_3_4] run function hp:travel_point/in_platform_9_3_4
execute as @s[tag=travelPointPlatform9_3_4_2] run function hp:travel_point/in_platform_9_3_4_2
execute as @s[tag=travelPointstupefyChallengeDrop] run function hp:travel_point/in_stupefy_challenge_drop
execute as @s[tag=travelPointRoadToHogwarts] run function hp:travel_point/in_road_to_hogwarts
execute as @s[tag=travelPointRoadToHogwarts2] run function hp:travel_point/in_road_to_hogwarts_2
execute as @s[tag=travelPointRoadToHogsmeade] run function hp:travel_point/in_road_to_hogsmeade
execute as @s[tag=travelPointRoadToHogsmeade2] run function hp:travel_point/in_road_to_hogsmeade_2
execute as @s[tag=travelPointAlohomora1] run function hp:travel_point/in_alohomora_1
execute as @s[tag=travelPointAlohomora2] run function hp:travel_point/in_alohomora_2
execute as @s[tag=travelPointAlohomora3] run function hp:travel_point/in_alohomora_3
execute as @s[tag=travelPointPatronus1] run function hp:travel_point/in_patronus_1
execute as @s[tag=travelPointPatronus2] run function hp:travel_point/in_patronus_2
execute as @s[tag=travelDumbldedoreStaircase] run function hp:travel_point/in_dumbledore_staircase
execute as @s[tag=travelDumbldedoreStaircase2] run function hp:travel_point/in_dumbledore_staircase_2
execute as @s[tag=travelGringottsStaircase] run function hp:travel_point/in_gringotts_staircase
execute as @s[tag=travelGringottsStaircase2] run function hp:travel_point/in_gringotts_staircase_2
execute as @s[tag=travelGringottsTrack] run function hp:travel_point/in_gringotts_track
execute as @s[tag=travelPointShriekingShackPassage] run function hp:travel_point/in_shrieking_shack_passage
execute as @s[tag=travelPointShriekingShackPassage2] run function hp:travel_point/in_shrieking_shack_passage_2
execute as @s[tag=travelRoomOfRequirement] run function hp:travel_point/in_room_of_requirement
execute as @s[tag=travelRoomOfRequirement2] run function hp:travel_point/in_room_of_requirement_2
execute as @s[tag=travelPointApparition1] run function hp:travel_point/in_apparition_1
execute as @s[tag=travelPointApparition2] run function hp:travel_point/in_apparition_2
execute as @s[tag=travelPointAzkabanDrop] run function hp:travel_point/in_azkaban_drop
execute as @s[tag=travelPointUndergroundLibrary1] run function hp:travel_point/in_underground_library_1
execute as @s[tag=travelPointUndergroundLibrary2] run function hp:travel_point/in_underground_library_2
execute as @s[tag=travelPointChamberOfSecretsDrop] run function hp:travel_point/in_chamber_of_secrets_drop
execute as @s[tag=travelPointChallengeChambersDrop] run function hp:travel_point/in_challenge_chambers_drop
execute as @s[tag=travelPointHoneydukesPassage] run function hp:travel_point/in_honeydukes_passage
execute as @s[tag=travelPointHoneydukesPassage2] run function hp:travel_point/in_honeydukes_passage_2