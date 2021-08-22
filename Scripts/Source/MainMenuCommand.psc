Scriptname MainMenuCommand extends ConsoleCommand  

function Info()
	Name("MM")
endFunction

event OnCommand()
	ConsoleHelper.EnableNativeEnterReturnKeyHandling()
	Game.QuitToMainMenu()
endEvent