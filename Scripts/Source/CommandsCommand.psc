Scriptname CommandsCommand extends ConsoleCommand  
{List and search available commands}

; !!!
; TODO SUBCOMMANDS
; !!!

event OnCommand()
    Print(ConsoleCommands.Names())
endEvent