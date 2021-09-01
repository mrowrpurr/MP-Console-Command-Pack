Scriptname CharacterCommand extends ConsoleCommand
{Change your character's name, sex, race.}

; string Property RACESEX_MENU = "RaceSex Menu" autoReadonly
; string Property MENU_ROOT = "_root.RaceSexMenuBaseInstance.RaceSexPanelsInstance." autoReadonly

string Property RACESEX_MENU = "Console" autoReadonly
string Property MENU_ROOT = "_global.Console." autoReadonly

event OnCommand()
    if Arguments[0] == "string"
        UI.InvokeString(RACESEX_MENU, MENU_ROOT + "ChangeRace", Arguments[1])
    elseIf Arguments[0] == "stringa"
        string[] stringArgs = new string[1]
        stringArgs[0] = Arguments[1]
        UI.InvokeStringA(RACESEX_MENU, MENU_ROOT + "ChangeRace", stringArgs)
    elseIf Arguments[0] == "int"
        UI.InvokeInt(RACESEX_MENU, MENU_ROOT + "ChangeRace", Arguments[1] as int)
    elseIf Arguments[0] == "inta"
        int[] intArgs = new int[1]
        intArgs[0] = Arguments[1] as int
        UI.InvokeIntA(RACESEX_MENU, MENU_ROOT + "ChangeRace", intArgs)
    elseIf Arguments[0] == "float"
        UI.InvokeFloat(RACESEX_MENU, MENU_ROOT + "ChangeRace", Arguments[1] as float)
    endIf
endEvent
