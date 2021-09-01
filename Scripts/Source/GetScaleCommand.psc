Scriptname GetScaleCommand extends ConsoleCommand

event OnCommand()
    ObjectReference ref = MPConsoleCommandUtil.ConsoleOrCrosshairOrPlayer()
    Print("Scale of " + MPConsoleCommandUtil.ObjectName(ref) + ": " + ref.GetScale())
endEvent