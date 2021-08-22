Scriptname HorseCommand extends ConsoleCommand
{Summons a horse for you (and your follower)}

ObjectReference playerHorse
bool horseEnabled

event OnCommand()
    Actor player = Game.GetPlayer()

    if playerHorse
        if horseEnabled
            playerHorse.Disable(abFadeOut = true)
            horseEnabled = false
            Print("Horse dismissed")
        else
            playerHorse.MoveTo(player)
            playerHorse.Enable(abFadeIn = true)
            horseEnabled = true
            Print("Horse summoned")
        endIf
    else
        Form MarkarthPlayerHorse = Game.GetForm(0x109e41)
        MarkarthPlayerHorse.SetName(player.GetActorBase().GetName() + "'s horse")
        playerHorse = player.PlaceAtMe(MarkarthPlayerHorse)
        playerHorse.SetActorOwner(player.GetActorBase())
        Print("You now have a horse")
    endIf
endEvent