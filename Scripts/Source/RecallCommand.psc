Scriptname RecallCommand extends ConsoleCommand  
{Teleports the player to the specified (or default) location stored using the mark command.}

event OnCommand()
    ObjectReference marker = Game.GetFormFromFile(0xd64, "MPConsoleCommandPack.esp") as ObjectReference
    ; ObjectReference marker = GetForm("marker", command = "mark") as ObjectReference
    Actor player = Game.GetPlayer()
    player.MoveTo(marker)
    Print("Recalled!")
endEvent