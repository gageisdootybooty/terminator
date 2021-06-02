#Assign players roles
tag @s add speedrunner
tag @a[tag=!speedrunner] add hunter
tag @a add "game_is_running"

#introduction to the game
tellraw @a {"rawtext":[{"text":"§6§lMinecraft Manhunt"}]}
tellraw @a {"rawtext":[{"text":"―――――――――――――――――"}]}
tellraw @a {"rawtext":[{"text":"§bSpeedrunner§r:§b§l "}, {"selector": "@a[tag=speedrunner,\"game_is_running\""}]}
tellraw @a {"rawtext":[{"text":"§b§l"}, {"selector": "@a[tag=speedrunner,\"game_is_running\""}, {"text":"§r's goal is to beat Minecraft"}]}
tellraw @a {"rawtext":[{"text":"§bIf "}, {"selector": "@a[tag=hunter,\"game_is_running\""}, {"text":" beat Minecraft before killed by hunter(s), the speedrunner wins. If the speedrunner died, they lose."}]}
tellraw @a {"rawtext":[{"text":"―――――――――――――――――"}]}
execute @a[tag=host,scores={players=..2}] ~~~ tellraw @a {"rawtext":[{"text":"§bHunter§r:§b§l "}, {"selector": "@a[tag=hunter,\"game_is_running\""}]}
execute @a[tag=host,scores={players=3..}] ~~~ tellraw @a {"rawtext":[{"text":"§bHunters§r:§b§l "}, {"selector": "@a[tag=hunter,\"game_is_running\""}]}
tellraw @a {"rawtext":[{"text":"§c§l"}, {"selector": "@a[tag=hunter,\"game_is_running\""}, {"text":"§r's goal is to kill the speedrunner before they beat Minecraft."}]}
tellraw @a {"rawtext":[{"text":"§cHunters have a working compass to track the speedrunner in the overworld."}]}
tellraw @a {"rawtext":[{"text":"§cThey also have unlimited life and they won't lose their compass."}]}

gamemode s @a