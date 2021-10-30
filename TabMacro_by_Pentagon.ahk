#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; https://github.com/Pentagon03/TabMacro/

Mode := 1
Tab::
if (Mode = 1){
    Send {Ctrl down}{Tab}
    Keywait Control
    Send {Ctrl up}
    return
}
else if (Mode = 2){
    Send {Alt down}{Tab}
    Keywait Control
    Send {Alt up}
    return
}
else Send {Tab}
return

^1:: Mode := 1
^2:: Mode := 2
^3:: Mode := 3