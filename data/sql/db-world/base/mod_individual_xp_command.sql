DELETE FROM `command` WHERE `name` IN ('xp', 'xp set', 'xp view', 'xp default', 'xp enable', 'xp disable', 'xp setplayer');

INSERT INTO `command` (`name`, `security`, `help`) VALUES
('xp',            0, 'Syntax: .xp $subcommand\nType .help xp to see a list of subcommands\nor .help xp $subcommand to see info on the subcommand.'),
('xp view',       0, 'Syntax: .xp view\nView your current XP rate.'),
('xp set',        2, 'Syntax: .xp set $rate\nGM: Set your own custom XP rate.'),
('xp default',    2, 'Syntax: .xp default\nGM: Reset your custom XP rate to the server default.'),
('xp enable',     2, 'Syntax: .xp enable\nGM: Enable XP gain.'),
('xp disable',    2, 'Syntax: .xp disable\nGM: Disable XP gain.'),
('xp setplayer',  2, 'Syntax: .xp setplayer $name $rate [$maxlevel]\nGM: Set XP rate for another online player, with an optional level at which it resets to 1x.');
