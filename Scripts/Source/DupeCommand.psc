Scriptname DupeCommand extends ConsoleCommand  
{Makes a duplicate of the target object and places it at the same place as the target.}

event OnCommand()
    ObjectReference target = Game.GetCurrentConsoleRef()
    if ! target
        target = Game.GetCurrentCrosshairRef()
    endIf
    if ! target
        Print("No target object to duplicate")
    endIf
    target.PlaceAtMe(target.GetBaseObject())
    Print("Duplicated " + target.GetBaseObject().GetName())
endEvent