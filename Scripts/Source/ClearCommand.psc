Scriptname ClearCommand extends ConsoleCommand  
{Clears the ~ Skyrim console text}

function Flags()
    Flag("all", "a")
endFunction

event OnCommand()
    if HasFlag("all")
        ConsoleMenu.ClearAllText()
    else
        ConsoleMenu.ClearBodyText()
    endIf
endEvent