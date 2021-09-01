Scriptname StyleCommand extends ConsoleCommand
{Customize console styles (styles are saved)}

function Setup()
    ; For right now it just makes my customizations, will actually make it a proper ommand later
    SetupConsole()
    RegisterForMenu(ConsoleMenu.GetMenuName())
endFunction

event OnMenuOpen(string _)
    RepositionConsole()
endEvent

function SetupConsole()
    ConsoleMenu.HideBackground()
    ConsoleMenu.SetBorderColor("white")
    ; RepositionConsole()
endFunction

event OnCommand()
    RepositionConsole()
endEvent

function RepositionConsole()
    ConsoleMenu.SetHeaderPositionY(0 - ConsoleMenu.GetHeaderHeight())
    ConsoleMenu.SetBodyPositionY(ConsoleMenu.GetScreenHeight() * -1)
    ConsoleMenu.SetTextInputPositionY(0 - ConsoleMenu.GetHeaderHeight() - ConsoleMenu.GetTextInputHeight())
    ConsoleMenu.SetBodyHeight(ConsoleMenu.GetScreenHeight() - ConsoleMenu.GetTextInputHeight() - ConsoleMenu.GetHeaderHeight())
    ConsoleMenu.SetBodyPositionX(0)
    ConsoleMenu.SetTextInputPositionX(0)
    ConsoleMenu.SetHeaderPositionX(0)
    ConsoleMenu.SetBodyWidth(ConsoleMenu.GetScreenWidth())
    ConsoleMenu.SetTextInputWidth(ConsoleMenu.GetScreenWidth())
    ConsoleMenu.SetHeaderWidth(ConsoleMenu.GetScreenWidth())
endFunction