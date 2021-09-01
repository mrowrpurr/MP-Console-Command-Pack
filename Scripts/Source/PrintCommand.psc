Scriptname PrintCommand extends ConsoleCommand  
{Simply print to the console}

event OnCommand()
    Print(Arguments[0])
endEvent