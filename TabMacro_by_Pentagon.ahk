#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; https://github.com/Pentagon03/TabMacro/

Mode := 1
Tab::
if (Mode = 1){
    Send {Ctrl down}{Tab}{Ctrl up}
}
else if (Mode = 2){
    Send {Alt down}{Tab}{Alt up}
}
return

^1::
Suspend, Off
Mode := 1
return
^2::
Suspend, Off
Mode := 2
return
^3:: Suspend, On
^4:: 
Suspend, Off
ExitApp
