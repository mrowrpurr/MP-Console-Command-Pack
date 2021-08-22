Scriptname PerkPointsRemoveCommand extends ConsoleCommand
{Removes the specified number of perk points from the player}

function Setup()
    Name("ppremove")
endFunction

event OnCommand()
    if Arguments.Length == 0
        Print("Please specify the number of perk points you would to remove")
    else
        int points = Arguments[0] as int
        if points != 0
            Game.ModPerkPoints(points * -1)
            Print("Removed " + points + " perk points")
        else
            Print("Please specify the number of perk points you would like to remove (as a number)")
        endIf
    endIf
endEvent