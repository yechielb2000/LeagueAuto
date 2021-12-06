#include <ImageSearch2015.au3>
#include <WinAPI.au3>

HotKeySet("{Esc}", exitApp)
HotKeySet("{f1}", normalGame)
HotKeySet("{f2}", soloGame)

Global $x=0
Global $y=0
Global Const $LOLPath = "D:\Games\LOL\Riot Games\Riot Client\RiotClientServices.exe"
Global Const $LOLWinClass = "[CLASS:RCLIENT]"
Global $hwnd = WinGetHandle($LOLWinClass)

autoLeague()
Func autoLeague()
    ;~ runApp()
    ;~ RunLogin()
    While True
    WEnd
EndFunc

Func runApp() 
    Run($LOLPath)
    WinWait($LOLWinClass)
    WinActivate($LOLWinClass)
EndFunc

Func runLogin()
    Sleep(3000)
    Send("yechielb1235")
    Send("{TAB}")
    Send("yechielb123")
    Send("{TAB 5}")
    Send("{ENTER}") 
    WinWait($LOLWinClass)
    Sleep(5000)
    MouseClick("Left", 242, 363, 1, 0)
    Sleep(2000)
    MouseClick("Left", 214, 808, 1, 0)
EndFunc

Func normalGame()
    WinMove($LOLWinClass, "", 0, 0)
    Sleep(500)
    click(120, 40)
    Sleep(1000)
    click(100, 540)
    click(540, 690)
    Sleep(1000)
    ;~ primary pick
    click(485, 479)
    pickMid()
    Sleep(1000)
    ;~ secondary pick
    click(576, 478)
    pickTop()
    ;~ start
    Sleep(1000)
    click(532, 685)
    ;~ call accept
    acceptQueue()
EndFunc

Func soloGame()
    WinMove($LOLWinClass, "", 0, 0)
    Sleep(1000)
    click(120, 40)
    Sleep(1000)
EndFunc

Func pickMid()
    MouseMove(492, 380, 3)
    MouseUp("Left")  
EndFunc    

Func pickTop()  
    MouseMove(474, 481, 3)
    MouseUp("Left")  
EndFunc

Func acceptQueue()
While True 
    $accept = _ImageSearch("accept.png", 0, $x, $y, 10)
    If $accept = True  Then
        click($x-100, $y-110)     
    EndIf 
WEnd
EndFunc         

Func click($x, $y)
    MouseClick("Left", $x, $y, 1, 2)
EndFunc

Func exitApp()
    Exit
EndFunc