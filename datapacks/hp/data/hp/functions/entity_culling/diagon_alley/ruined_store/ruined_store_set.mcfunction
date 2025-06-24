summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 1000 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 1000 1 1 false @s

summon minecraft:item_frame 2862.03 46.50 997.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 5b, Bukkit.updateLevel: 2, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [270.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:fire_coral", Count: 1b}, ItemDropChance: 0.0f, Fire: -1s, TileY: 46, Spigot.ticksLived: 33373, TileX: 2862, TileZ: 997, Tags: ["ruinedStoreEntity"]}
summon minecraft:item_frame 2862.03 47.50 998.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 5b, Bukkit.updateLevel: 2, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [270.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:tube_coral", Count: 1b}, ItemDropChance: 0.0f, Fire: -1s, TileY: 47, Spigot.ticksLived: 33423, TileX: 2862, TileZ: 998, Tags: ["ruinedStoreEntity"]}
summon minecraft:item_frame 2864.50 47.50 998.97 {Motion: [0.0d, 0.0d, 0.0d], Facing: 2b, Bukkit.updateLevel: 2, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [180.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:tube_coral", Count: 1b}, ItemDropChance: 0.0f, Fire: -1s, TileY: 47, Spigot.ticksLived: 33520, TileX: 2864, TileZ: 998, Tags: ["ruinedStoreEntity"]}

summon minecraft:item_frame 2865.50 46.50 992.03 {Motion: [0.0d, 0.0d, 0.0d], Facing: 3b, Bukkit.updateLevel: 2, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:sugar_cane", Count: 1b}, ItemDropChance: 0.0f, Fire: -1s, TileY: 46, Spigot.ticksLived: 33821, TileX: 2865, TileZ: 992, Tags: ["ruinedStoreEntity"]}
summon minecraft:item_frame 2869.97 47.50 998.50 {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, Bukkit.updateLevel: 2, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:tube_coral", Count: 1b}, ItemDropChance: 0.0f, Fire: -1s, TileY: 47, Spigot.ticksLived: 33918, TileX: 2869, TileZ: 998, Tags: ["ruinedStoreEntity"]}

kill @e[tag=chunkLoader]

scoreboard players set ruinedStoreIsCulled global 0