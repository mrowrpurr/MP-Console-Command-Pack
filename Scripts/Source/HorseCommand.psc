Scriptname HorseCommand extends ConsoleCommand
{Summons a horse for you (and your follower)}

ObjectReference playerHorse
ObjectReference followerHorse
bool horseEnabled

event OnCommand()
    Form RiftenPlayerHorse = Game.GetForm(0x109e40)
    Form MarkarthPlayerHorse = Game.GetForm(0x109e41)
    Actor player = Game.GetPlayer()
    DialogueFollowerScript followerQuest = Game.GetForm(0x750ba) as DialogueFollowerScript
    Actor currentFollower = followerQuest.pFollowerAlias.GetActorReference()

    if playerHorse
        if horseEnabled
            if followerHorse
                followerHorse.Disable(abFadeOut = true)
            endIf
            playerHorse.Disable(abFadeOut = true)
            horseEnabled = false
            Print("Horse dismissed")
        else
            if currentFollower && ! followerHorse
                followerHorse = currentFollower.PlaceAtMe(RiftenPlayerHorse)
                Print(currentFollower.GetActorBase().GetName() + " now has a horse")
            endIf
            if followerHorse
                followerHorse.Enable(abFadeIn = true)
                if currentFollower
                    followerHorse.MoveTo(currentFollower)
                endIf
            endIf
            playerHorse.MoveTo(player)
            playerHorse.Enable(abFadeIn = true)
            horseEnabled = true
            Print("Horse summoned")
        endIf
    else
        if currentFollower && ! followerHorse
            followerHorse = currentFollower.PlaceAtMe(RiftenPlayerHorse)
            followerHorse.SetActorOwner(player.GetActorBase())
            Print(currentFollower.GetActorBase().GetName() + " now has a horse")
        endIf
        MarkarthPlayerHorse.SetName(player.GetActorBase().GetName() + "'s horse")
        playerHorse = player.PlaceAtMe(MarkarthPlayerHorse)
        playerHorse.SetActorOwner(player.GetActorBase())
        Print("You now have a horse")
    endIf

    if currentFollower && followerHorse
        RiftenPlayerHorse.SetName(currentFollower.GetActorBase().GetName() + "'s horse")
    endIf
endEvent