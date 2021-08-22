Scriptname ClearCommand extends ConsoleCommand  
{Clears the ~ Skyrim console text}

function Flags()
    Flag("all", "a")
endFunction

event OnCommand()
    if HasFlag("all")
        ConsoleHelper.ClearAllText()
    else
        ConsoleHelper.ClearBodyText()
    endIf
endEvent