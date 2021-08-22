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
    if Arguments.Length > 0
        int count = Arguments[0] as int
        if count == 0
            count = 1
        endIf
        int index = 0
        while index < count
            target.PlaceAtMe(target.GetBaseObject())
            index += 1
        endWhile
    else
        target.PlaceAtMe(target.GetBaseObject())
    endIf
    Print("Duplicated " + target.GetBaseObject().GetName())
endEvent