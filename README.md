# DeathmatchPlus

[Steam Workshop Link](http://steamcommunity.com/sharedfiles/filedetails/?id=899508479)

# How to install

###### Steam Workshop Method:
Step 1: Go to the [Steam Workshop page](http://steamcommunity.com/sharedfiles/filedetails/?id=899508479).
Step 2: Subscribe to the addon.

###### From Source Method:
Step 1: Copy the 'src' folder to `SteamApps/common/GarrysMod/garrysmod/addons" and rename it to dmp_beta`.
Step 2: (Re)start Garry's Mod.
Step 3: Select DeathmatchPlus gamemode.



# Future Goals

A "Last man standing" sub-gamemode.
A "Capture the flag" like sub-gamemode.
More customization.
More officially supported maps.
Custom made weapons for the gamemode.

# Console Commands

`dmp_allow_medkits` (0|1)
Toggles spawning with the medkit (default 0)
0=Disabled | 1=Enabled
Example: `dmp_allow_medkits 1` will make players able to spawn with a medkit instead of their secondary weapon

`dmp_maxkills`
Sets the amount of kills that a player can get before they win(default=5)
Example: `dmp_maxkills 3` makes a player win when they reach 3 kills

`dmp_healthmultiplier`
Multiplies base health by specified value (default 1)
Example: `dmp_healthmultiplier 2` will multiply the players starting health by 2. In this example, the players health will be 200
NOTE: Decimals do not work

`dmp_armormultiplier`
Multiplies armor value by specified number (default 0)
Example 1: `dmp_armormultiplier 1` will set starting armor value to 10
Example 2: `dmp_armormultiplier 5` will multiply the default starting armor value by 5. In this example, the starting armor value will be 50
NOTE: Decimals do not work

`dmp_ammo`
Sets the starting reserve ammo for the player (default 50)
Example 1: `dmp_ammo 0` will set the players starting reserve ammo to none
Example 2: `dmp_ammo 100` will set the players starting reserve ammo to 100
NOTE: dmp_ammo will set ALL of the weapons ammo to the specified amount

`dmp_meds`
Sets the starting amount of medical supplies in the medkit (default=5)
Example 1: `dmp_meds 1` will set the starting amout of medical supplies to 1 (NOTE: using `dmp_meds 1` will set ALL medical supplies to be 1, aka, 1 bandade, 1 quikclot and 1 hemostat)
Example 2: `dmp_meds 10` will set the starting amout of medical supplies to 10 (NOTE: using `dmp_meds 10` will set ALL medical supplies to be 10, aka, 10 bandades, 10 quikclots and 10 hemostats)
NOTE: `dmp_meds` will have NO effect if "dmp_allow_medkits` is set to 0

`dmp_weapons`
Toggles weapons(Custom/FAS:2) (default=1)
Example 1: `dmp_weapons 1` will enable custom weapons(experimental)
Example 2: `dmp_weapons 0` will enable the FAS:2 weapons