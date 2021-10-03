#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;⁰¹²³⁴⁵⁶⁷⁸⁹ ₀₁₂₃₄₅₆₇₈₉

Mode := 0

^<::
if mode:=!mode
    tooltip,number superscript enabled, A_CaretX, A_CaretY - 20
else
    tooltip,number superscript disabled, A_CaretX, A_CaretY - 20

SetTimer, RemoveToolTip, 3000
return

RemoveToolTip:
tooltip
return

mode:=!mode ;not! toggle
return

#If mode ; All hotkeys below this line will only work if mode is TRUE
    7::⁷
    8::⁸
    9::⁹
    0::⁰
    1::¹
    2::²
    3::³
    4::⁴
    5::⁵
    6::⁶
#If