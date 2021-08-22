Scriptname GimmeCommand extends ConsoleCommand  
{Gives the player one of (or a specified number of) the target object}

; TODO add subcommands for gold (g) + lockpicks (l)

function Flags()
    Flag("silent", "s")
endFunction

event OnCommand()
    ObjectReference target = Game.GetCurrentConsoleRef()
    if ! target
        target = Game.GetCurrentCrosshairRef()
    endIf
    if ! target
        Print("No target object to give you")
    endIf
    
    Form baseObject = target.GetBaseObject()
    Actor player = Game.GetPlayer()
    
    int count = 1
    if Arguments.Length > 0
        count = Arguments[0] as int
        if count == 0
            count = 1
        endIf
    endIf

    player.AddItem(baseObject, count, abSilent = HasFlag("silent"))
    Print("Gave the player " + count + "x " + baseObject.GetName())
endEvent