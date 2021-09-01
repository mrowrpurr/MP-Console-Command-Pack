scriptName MPConsoleCommandUtil hidden
{Various global utility functions for writing console commands}

ObjectReference function ConsoleOrCrosshair(ObjectReference default = None) global
    ObjectReference ref = Game.GetCurrentConsoleRef()
    if ! ref
        ref = Game.GetCurrentCrosshairRef()
    endIf
    if ! ref
        ref = default
    endIf
    return ref
endFunction

ObjectReference function ConsoleOrCrosshairOrPlayer() global
    ObjectReference ref = ConsoleOrCrosshair()
    if ! ref
        ref = Game.GetPlayer()
    endIf
    return ref
endFunction

string function ObjectName(ObjectReference ref) global
    if ! ref
        return ""
    endIf
    string name = ref.GetName()
    if ! name
        name = ref.GetBaseObject().GetName()
    endIf
    return name
endFunction