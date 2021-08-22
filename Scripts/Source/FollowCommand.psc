Scriptname FollowCommand extends ConsoleCommand  
{Makes the target actor follow you}

function Flags()
    Flag("force", "f")
    Flag("dismiss", "d")
endFunction

event OnCommand()
    Actor target = Game.GetCurrentConsoleRef() as Actor
    if ! target
        target = Game.GetCurrentCrosshairRef() as Actor
    endIf
    if ! target
        Print("No target actor to follow you")
        return
    endIf

    DialogueFollowerScript followerQuest = Game.GetForm(0x750ba) as DialogueFollowerScript
    Actor currentFollower = followerQuest.pFollowerAlias.GetActorReference()
    if currentFollower
        if currentFollower == target
            if HasFlag("dismiss")
                followerQuest.DismissFollower()
                Print("Dismissed " + currentFollower.GetActorBase().GetName())
                return
            else
                Print("The target (" + target.GetActorBase().GetName() + ") is already following you")
                Print("Pass -d or --dismiss to dismiss this follower")
            endIf
        else
            if HasFlag("force")
                followerQuest.DismissFollower()
                Print("Dismissed " + currentFollower.GetActorBase().GetName())
            else
                Print("You already have a follower (" + currentFollower.GetActorBase().GetName() + ")")
                Print("Pass -f or --force to dismiss current follower and force " + target.GetActorBase().GetName())
                return
            endIf
        endIf
    endIf

    Actor player = Game.GetPlayer()
    Faction potentialFollowerFaction = Game.GetForm(0x5c84d) as Faction
    if ! target.IsInFaction(potentialFollowerFaction)
        target.AddToFaction(potentialFollowerFaction)
    endIf
    target.SetFactionRank(potentialFollowerFaction, 4)
    target.SetRelationshipRank(player, 3)
    player.SetRelationshipRank(target, 3)
    followerQuest.SetFollower(target)
    followerQuest.FollowerFollow()
    Print("Added " + target.GetActorBase().GetName() + " as follower (now following you)")
endEvent