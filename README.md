# Kyokyo's Deathmatch++
***very special thanks to [duuqnd](https://steamcommunity.com/id/duuqnd) for starting this project***

[ORIGINAL DM+ Steam Workshop Link](http://steamcommunity.com/sharedfiles/filedetails/?id=899508479)

# tf is this
![The OG creator put the original DM+ on GitHub and wants someone to do something with it](https://i.imgur.com/LIdcOis.png "The OG creator put the original DM+ on GitHub and wants someone to do something with it")

![C H A L L E N G E  A C C E P T E D](https://i.imgur.com/VLa1yr8.png "C H A L L E N G E  A C C E P T E D")

Basically, this is my edit of Deathmatch Plus to be... better. I'm gonna try to meet some of the goals that the OG author had and some of my own. It'll be cool.

Hopefully.

Also note that a lot of this readme is copy-paste from the OG DM+ with some edits and additions. Sorry.

# How to install

###### Steam Workshop Method:
1. Go to the [Steam Workshop page](http://steamcommunity.com/sharedfiles/filedetails/?id=899508479) (not updated yet so don't actually do that yet).
2. Subscribe to the addon.
3. Profit.

If you want to put it on a dedicated server, [look at this](https://wiki.garrysmod.com/page/Workshop_for_Dedicated_Servers).

###### From Source Method:
1. Copy the 'src' folder to `SteamApps/common/GarrysMod/garrysmod/addons` and rename it to `dmpp_beta`.
2. (Re)start Garry's Mod.
3. Select the `DM++` gamemode.
4. Congrats you dun did it


# Future Goals

A "Last man standing" sub-gamemode. Essentially, instead of going for the most kills, you just want to be the last guy alive. It'll be round based and have anti-camp measures. Maybe a Battle Royale-style bubble of P A I N or something else.

~~A "Capture the flag" like sub-gamemode.~~ nah fam, that's stupid (although if you yell at me enough I might try it)

***More customization.***

More officially supported maps. (kyokyo's note: have no idea what this means yet)

~~Custom made weapons for the gamemode.~~ My goal is to basically have this mode as a template for whatever you want to do, so I don't want to make custom weapons. Again though, yell at me enough and I'll throw my hat into the ring. I could try to make some unique weapons. Key word ***try***.

Remove dependency on FA:S. I don't want anyone to have to download more than they nor the host wants to.

Add a customizable shop system like some other deathmatch gamemodes.

Have the ability to set up teams or squads.

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

NOTE: Decimals do not work (kyokyo's note: this will definitely be fixed later)


`dmp_armormultiplier`

Multiplies armor value by specified number (default 0)

Example 1: `dmp_armormultiplier 1` will set starting armor value to 10

Example 2: `dmp_armormultiplier 5` will multiply the default starting armor value by 5. In this example, the starting armor value will be 50

NOTE: Decimals do not work (kyokyo's note: this will definitely be fixed later)


`dmp_ammo`

Sets the starting reserve ammo for the player (default 50)

Example 1: `dmp_ammo 0` will set the players starting reserve ammo to none

Example 2: `dmp_ammo 100` will set the players starting reserve ammo to 100

NOTE: dmp_ammo will set ALL of the weapons ammo to the specified amount (kyokyo's note: maybe add convars for different categories of weapons? idk)


`dmp_meds`

Sets the starting amount of medical supplies in the medkit (default=5)

Example 1: `dmp_meds 1` will set the starting amout of medical supplies to 1 (NOTE: using `dmp_meds 1` will set ALL medical supplies to be 1, aka, 1 bandade, 1 quikclot and 1 hemostat)

Example 2: `dmp_meds 10` will set the starting amout of medical supplies to 10 (NOTE: using `dmp_meds 10` will set ALL medical supplies to be 10, aka, 10 bandades, 10 quikclots and 10 hemostats)

NOTE: `dmp_meds` will have NO effect if "dmp_allow_medkits` is set to 0
