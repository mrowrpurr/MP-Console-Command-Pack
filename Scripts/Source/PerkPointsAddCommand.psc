Scriptname PerkPointsAddCommand extends ConsoleCommand
{Gives the player the specified number of perk points}

function Setup()
    Name("ppadd")
endFunction

event OnCommand()
    if Arguments.Length == 0
        Print("Please specify the number of perk points you would like")
    else
        int points = Arguments[0] as int
        if points != 0
            Game.ModPerkPoints(points)
            Print("Added " + points + " perk points")
        else
            Print("Please specify the number of perk points you would like (as a number)")
        endIf
    endIf
endEvent