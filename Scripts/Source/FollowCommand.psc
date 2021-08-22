Scriptname FollowCommand extends ConsoleCommand  
{Makes the target actor follow you}

event OnCommand()
    Actor target = Game.GetCurrentConsoleRef() as Actor
    if ! target
        target = Game.GetCurrentCrosshairRef() as Actor
    endIf
    if ! target
        Print("No target actor to follow you")
    endIf
    Actor player = Game.GetPlayer()
    Faction potentialFollowerFaction = Game.GetForm(0x5c84d) as Faction
    if ! target.IsInFaction(potentialFollowerFaction)
        target.AddToFaction(potentialFollowerFaction)
        target.SetFactionRank(potentialFollowerFaction, 4)
        target.SetRelationshipRank(player, 3)
        player.SetRelationshipRank(target, 3)
        Print("Added " + target.GetActorBase().GetName() + " as follower")
    endIf
endEvent