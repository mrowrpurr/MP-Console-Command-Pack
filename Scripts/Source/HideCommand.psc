Scriptname HideCommand extends ConsoleCommand  
{Makes the player invisible until this command is called again}

bool CurrentlyHiding = false
float interval = 20.0

event OnCommand()
    Actor player = Game.GetPlayer()
    Spell invisibility = Game.GetForm(0x27eb6) as Spell
    if CurrentlyHiding
        CurrentlyHiding = false
        player.DispelSpell(invisibility)
        Print("No longer hiding")
    else
        CurrentlyHiding = true
        invisibility.Cast(player, player)
        RegisterForSingleUpdate(interval)
        Print("Hiding!")
    endIf
endEvent

event OnUpdate()
    if CurrentlyHiding
        Spell invisibility = Game.GetForm(0x27eb6) as Spell
        invisibility.Cast(None, Game.GetPlayer())
        RegisterForSingleUpdate(interval)
    endIf
endEvent