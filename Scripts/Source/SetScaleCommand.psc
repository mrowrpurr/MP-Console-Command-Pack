Scriptname SetScaleCommand extends ConsoleCommand

event OnCommand()
    float scale = Arguments[0] as float
    ObjectReference ref = MPConsoleCommandUtil.ConsoleOrCrosshairOrPlayer()
    ref.SetScale(scale)
    Print("Set scale of " + MPConsoleCommandUtil.ObjectName(ref) + " to " + scale)
endEvent