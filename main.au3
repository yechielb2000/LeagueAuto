#include <WinAPI.au3>

HotKeySet("{Esc}", exitApp)
HotKeySet("{f1}", normalGame)
HotKeySet("{f2}", soloGame)
Global Const $LOLPath = "D:\Games\LOL\Riot Games\Riot Client\RiotClientServices.exe"
Global Const $LOLWinClass = "[CLASS:RCLIENT]"
Global $hwnd = WinGetHandle($LOLWinClass)

autoLeague()
Func autoLeague()
    runApp()
    RunLogin()
    WinMove($LOLWinClass, "", 0, 0)
    MsgBox(1, "Message", "Please don't move the client from the left top corner!")
    While True

    WEnd
EndFunc

Func runApp() 
    Run($LOLPath)
    WinWait($LOLWinClass)
    WinActivate($LOLWinClass)
EndFunc

Func runLogin()
    Sleep(2000)
    Send("yechielb1235")
    Send("{TAB}")
    Send("yechielb123")
    Send("{TAB 5}")
    Send("{ENTER}") 
    WinWait($LOLWinClass)
    Sleep(3000)
    MouseClick("Left", 242, 363, 1, 0)
    Sleep(2000)
    MouseClick("Left", 214, 808, 1, 0)
EndFunc

Func normalGame()
    click(120, 40)
    Sleep(1000)
    click(100, 540)
    click(540, 690)
    Sleep(1000)
    ;~ primary pick
    MouseMove(485, 479, 0)  
    MouseDown("Left")
    pickMid()
    Sleep(1000)
    ;~ secondary pick
    MouseMove(576, 478, 0)  
    MouseDown("Left")
    pickTop()
    ;~ start
    Sleep(1000)
    click(532, 685)

    ;~ call accept
EndFunc

Func soloGame()
    click(120, 40)
    Sleep(1000)
EndFunc

Func click($x, $y)
    MouseClick("Left", $x, $y, 1, 2)
EndFunc

Func pickMid()
    MouseMove(492, 380, 2)
    MouseUp("Left")  
EndFunc    

Func pickTop()  
    MouseMove(474, 481, 2)
    MouseUp("Left")  
EndFunc

Func exitApp()
    Exit
EndFunc