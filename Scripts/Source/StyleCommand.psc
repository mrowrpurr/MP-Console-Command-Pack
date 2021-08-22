Scriptname StyleCommand extends ConsoleCommand
{Customize console styles (styles are saved)}

function Setup()
    ; For right now it just makes my customizations, will actually make it a proper ommand later
    SetupConsole()
    RegisterForConsoleMenu()
endFunction

event OnMenuOpen(string _)
    ; RepositionConsole()
endEvent

function SetupConsole()
    ConsoleHelper.HideBackground()
    ConsoleHelper.SetBorderColor("white")
    ; RepositionConsole()
endFunction

event OnCommand()
    RepositionConsole()
endEvent

function RepositionConsole()
    ConsoleHelper.SetHeaderPositionY(0 - ConsoleHelper.GetHeaderHeight())
    ConsoleHelper.SetBodyPositionY(ConsoleHelper.GetScreenHeight() * -1)
    ConsoleHelper.SetTextInputPositionY(0 - ConsoleHelper.GetHeaderHeight() - ConsoleHelper.GetTextInputHeight())
    ConsoleHelper.SetBodyHeight(ConsoleHelper.GetScreenHeight() - ConsoleHelper.GetTextInputHeight() - ConsoleHelper.GetHeaderHeight())
    ConsoleHelper.SetBodyPositionX(0)
    ConsoleHelper.SetTextInputPositionX(0)
    ConsoleHelper.SetHeaderPositionX(0)
    ConsoleHelper.SetBodyWidth(ConsoleHelper.GetScreenWidth())
    ConsoleHelper.SetTextInputWidth(ConsoleHelper.GetScreenWidth())
    ConsoleHelper.SetHeaderWidth(ConsoleHelper.GetScreenWidth())
endFunction