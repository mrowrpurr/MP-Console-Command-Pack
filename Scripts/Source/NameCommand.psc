Scriptname NameCommand extends ConsoleCommand

event OnCommand()
    ObjectReference ref = Game.GetCurrentConsoleRef()
    if ! ref
        ref = Game.GetCurrentCrosshairRef()
    endIf
    if ! ref
        Print("No target object selected to print name of")
        return
    endIf

    string name = ref.GetName()
    if ! name
        name = ref.GetBaseObject().GetName()
    endIf

    Print(name)
endEvent