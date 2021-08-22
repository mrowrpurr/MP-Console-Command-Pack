Scriptname WelcomeCommand extends ConsoleCommand
{Friendly welcome screen whenever you open the console for the first time (after new game or load game)}

bool _hasBeenOpenedInThisGameSession = false

function Setup()
    ; For right now we just setup the menu on mod installation, no load game support
    ; And there's no command for customizing it yet, we just say Hello in console when mod is installed
    ConsoleHelper.ClearBodyText()
    RegisterForConsoleMenu()
endFunction

; Allow subscription to player load game! Require an explicit subscription tho :)
; event OnPlayerLoadGame()
; endEvent

event OnMenuOpen(string _)
    if ! _hasBeenOpenedInThisGameSession
        _hasBeenOpenedInThisGameSession = true
        ConsoleHelper.ClearBodyText()
        ConsoleHelper.SetHeaderText("~ Welcome to the Skyrim console ~")
    endIf
endEvent