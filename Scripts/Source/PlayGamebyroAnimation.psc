Scriptname PlayGamebyroAnimation extends ConsoleCommand

function Setup()
    Name("playgbanim")
endFunction

event OnCommand()
    ObjectReference ref = Game.GetCurrentConsoleRef()
    if ! ref
        ref = Game.GetCurrentCrosshairRef()
    endIf
    if ! ref
        Print("No target object selected to play animation on")
        return
    endIf

    if Arguments.Length == 2
        ref.PlayGamebryoAnimation(Arguments[0], afEaseInTime = Arguments[1] as float)
    elseIf Arguments.Length == 1
        ref.PlayGamebryoAnimation(Arguments[0])
    else
        Print("Usage: playgbanim <animation name> [easing time]")
    endIf
endEvent