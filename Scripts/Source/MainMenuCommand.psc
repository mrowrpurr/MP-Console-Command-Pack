Scriptname MainMenuCommand extends ConsoleCommand  

function Info()
	Name("MM")
endFunction

event OnCommand()
	Print("Quiting to Main Menu")
	ConsoleMenu.EnableNativeEnterReturnKeyHandling()
	Game.QuitToMainMenu()
endEvent