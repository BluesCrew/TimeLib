playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1
execute unless score #UnixLib_Settings_SavingsTimeChecks UnixLib matches 1 run return run tellraw @s [{"text":"🕒 UnixLib >> ","color":"#2DE1E1"},{"text":"This setting is already disabled.","color":"red"}]
scoreboard players reset #UnixLib_Settings_SavingsTimeChecks
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n"
function unixlib:unix/settings
tellraw @s ["",{"text":"🕒 UnixLib >> ","color":"#2DE1E1"},{"text":"Successfully disabled hourly daylight savings time checks."}]
schedule clear unixlib:zprivate/daylight_savings_time_checks/timer_1h
function unixlib:unix/update