.info
  .source "PrintCommand.psc"
  .modifyTime 1630480888
  .compileTime 1630481023
  .user "mrowr"
  .computer "MROWR-PURR"
.endInfo
.userFlagsRef
  .flag conditional 1
  .flag hidden 0
.endUserFlagsRef
.objectTable
  .object PrintCommand ConsoleCommand
    .userFlags 0
    .docString "Simply print to the console"
    .autoState 
    .variableTable
    .endVariableTable
    .propertyTable
    .endPropertyTable
    .stateTable
      .state
        .function GetState
          .userFlags 0
          .docString "Function that returns the current state"
          .return String
          .paramTable
          .endParamTable
          .localTable
          .endLocalTable
          .code
            RETURN ::state
          .endCode
        .endFunction
        .function GotoState
          .userFlags 0
          .docString "Function that switches this object to the specified state"
          .return None
          .paramTable
            .param newState String
          .endParamTable
          .localTable
            .local ::NoneVar None
          .endLocalTable
          .code
            CALLMETHOD onEndState self ::NoneVar
            ASSIGN ::state newState
            CALLMETHOD onBeginState self ::NoneVar
          .endCode
        .endFunction
        .function OnCommand 
          .userFlags 0
          .docString ""
          .return NONE
          .paramTable
          .endParamTable
          .localTable
            .local ::temp0 string[]
            .local ::temp1 string
            .local ::nonevar none
          .endLocalTable
          .code
            PROPGET Arguments self ::temp0 ;@line 5
            ARRAYGETELEMENT ::temp1 ::temp0 0 ;@line 5
            CALLMETHOD Print self ::nonevar ::temp1 true ;@line 5
          .endCode
        .endFunction
      .endState
    .endStateTable
  .endObject
.endObjectTable