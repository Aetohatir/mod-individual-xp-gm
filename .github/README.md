# ![logo](https://raw.githubusercontent.com/azerothcore/azerothcore.github.io/master/images/logo-github.png) AzerothCore

## Individual XP Module

- Very vibe coded. Use at your own risk

- Latest build status with azerothcore:

[![Build Status](https://github.com/azerothcore/mod-individual-xp/workflows/core-build/badge.svg?branch=master&event=push)](https://github.com/azerothcore/mod-individual-xp)

This is a fork of [mod-individual-xp](https://github.com/azerothcore/mod-individual-xp). I didn't really remove any features, but I made most of the features only work with GM accounts.  
It still allows each player to `view` their experience multiplier, but only `GMs` are allowed to `modify` the XP rate.  
I also added a feature that the XP gain will stop after reaching a certain level. So you could make a player gain additional XP up until a certain level. Great for catching up with friends.  
since `.xp default`, `.xp disable` and `.xp enable` I also set to GM commands but haven't made it targetable (yet, unsure if I'll ever do though), these commands are basically useless as of now.  

See the commands in the table below.

# Player Commands

| Command     | Who |Description                                       |
|-------------|--|-------------------------------------------------|
| .XP         | All | Shows all available commands                      |
| .XP View    | All | Displays the current XP rate                      |
| .XP Set #   | GMs | Changes the XP rate to the value specified        |
| .XP setplayer `name` `rate` | GMs | Set's the XP gain rate of specified player to specified value |
| .XP setplayer `name` `rate` `level` | GMs | Set's the XP gain rate of specified player to specified value until specified level is reached. Will then be reset to 1x |
| .XP Default | GMs | Returns the XP rate to the default value          |
| .XP Disable | GMs | Disables all XP gain until user does '.XP Enable' |
| .XP Enable  | GMs | Enables all XP gain if it was disabled            |

# How to install

1. Clone this module into the modules directory of the main source
2. Re-run cmake
3. Compile.

# Config

There are five variables to configure in the Config:

- `IndividualXp.Enabled`
    - Enable or Disable the IndividualXP Module.
- `IndividualXp.Announce`
    - Announce the IndividualXP Module at logon.
- `IndividualXp.AnnounceRatesOnLogin`
    - The player is shown the rates he has and the maximum value when he enters the chat.
- `IndividualXp.MaxXPRate`
    - This is the max amount a player can set their xp to.
- `IndividualXp.DefaultXPRate`
    - This is the default rate players start with.

The Max XP Rate variable dictates how high a player can set their XP rate. While the Default XP Rate variable dictates what XP rate players start with and the rate will be set to if the user does `.xp default`. As a recommendation, it would be a good idea to set the default and maximum experience rates to match. In this way, all players would initially have the maximum experience on the server, and then, through the `.xp set` command, they could modify it.


# Video Showcase

[![Youtube Link](https://i.imgur.com/Jhrdgv6.png)](https://www.youtube.com/watch?v=T6UEX47mPeE)

> [!IMPORTANT]
> If you no longer use the module, remember to delete any tables or values added within them.

### Database World

```sql
DELETE FROM `command` WHERE `name` IN ('xp', 'xp set', 'xp view', 'xp default', 'xp enable', 'xp disable');

SET @ENTRY:=35411;
DELETE FROM `acore_string` WHERE `entry` BETWEEN @ENTRY+0 AND @ENTRY+9;
```

### Database Characters

```sql
DROP TABLE `individualxp`;
```
