Scriptname MarkCommand extends ConsoleCommand  
{This saves the current position which can be teleported to later using the recall command.}

event OnCommand()
    Actor player = Game.GetPlayer()
    ObjectReference marker = Game.GetFormFromFile(0xd64, "MPConsoleCommandPack.esp") as ObjectReference
    marker.MoveTo(player)
    StoreForm("marker", marker)
    Print("Marked!")
endEvent