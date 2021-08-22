Scriptname MineCommand extends ConsoleCommand  
{Marks the target object as owned by the player}

event OnCommand()
    ObjectReference target = Game.GetCurrentConsoleRef()
    if ! target
        target = Game.GetCurrentCrosshairRef()
    endIf
    if ! target
        Print("No target object to change ownership of")
    endIf
    target.SetActorOwner(Game.GetPlayer().GetActorBase())
    Print("Set player as owner of " + target.GetBaseObject().GetName())
endEvent