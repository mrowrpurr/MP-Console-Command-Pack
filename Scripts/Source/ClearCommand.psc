Scriptname ClearCommand extends ConsoleCommand  
{Clears the ~ Skyrim console text}

event OnCommand()
    ConsoleHelper.ClearBodyText()
    ConsoleHelper.ClearHeaderText()
endEvent