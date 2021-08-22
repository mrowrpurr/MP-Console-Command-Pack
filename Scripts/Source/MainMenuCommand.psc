Scriptname MainMenuCommand extends ConsoleCommand  

function Info()
	Name("MM")
endFunction

event OnCommand()
	Print("Quiting to Main Menu")
	ConsoleHelper.EnableNativeEnterReturnKeyHandling()
	Game.QuitToMainMenu()
endEvent