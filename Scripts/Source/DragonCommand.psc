Scriptname DragonCommand extends ConsoleCommand

ObjectReference dragon

event OnCommand()
    Spell bendWill = Game.GetFormFromFile(0x20179e1, "Dragonborn.esm") as Spell
    Actor player = Game.GetPlayer()

    if dragon
        dragon = dragon.MoveTo(player)
        bendWill.Cast(player, dragon)
        Print("Come here, dragon!")
    else
        Form dragonForm = Game.GetForm(0xf811e)
        dragonForm.SetName(player.GetActorBase().GetName() + "'s dragon")
        dragon = player.PlaceAtMe(dragonForm)
        bendWill.Cast(player, dragon)
        Print("You now have a dragon!")
    endIf
endEvent
