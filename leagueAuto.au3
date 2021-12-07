#include <ImageSearch2015.au3>
#include <WinAPI.au3>

HotKeySet("{Esc}", exitApp)
HotKeySet("{f1}", blindGame)
HotKeySet("{f2}", normalGame)
HotKeySet("{f3}", soloGame)
HotKeySet("{f4}", flexGame)
HotKeySet("{f5}", aramGame)

Global $x=0
Global $y=0
Global Const $LOLWinClass = "[CLASS:RCLIENT]"
Global $hwnd = WinGetHandle($LOLWinClass)
Global Const $LOLPath = "D:\Games\LOL\Riot Games\Riot Client\RiotClientServices.exe"
Global Const $name = "yechielb1235"
Global Const $password = "yechielb123"

autoLeague()
Func autoLeague()
    runApp()
    RunLogin()
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
    Send($name)
    Send("{TAB}")
    Send($password)
    Send("{TAB 5}")
    Send("{ENTER}") 
    WinWait($LOLWinClass)
    Sleep(5000)
    MouseClick("Left", 242, 363, 1, 0)
    Sleep(2000)
    MouseClick("Left", 214, 808, 1, 0)
EndFunc

Func blindGame()
    startGame(100, 520, False)
EndFunc

Func normalGame()
   startGame(100, 550, True)
EndFunc

Func soloGame()
   startGame(100, 570, True)
EndFunc

Func flexGame()
    startGame(100, 610, True)
EndFunc

Func aramGame()
    startGame(374, 250, False)
EndFunc 

Func startGame($typeX, $typeY, $picks)
    WinMove($LOLWinClass, "", 0, 0)
    checkStatus()
    Sleep(500)
    click(120, 40)
    Sleep(1000)
    click($typeX, $typeY)
    click(540, 690)
    Sleep(1000)
    If $picks = True Then
        click(485, 479)
        pickMid()
        Sleep(1000)
        click(576, 478)
        pickTop()
    EndIf    
    Sleep(1000)
    click(532, 685)
    acceptQueue()
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
        $accept = False 
    EndIf 
WEnd
EndFunc         

Func click($x, $y)
    MouseClick("Left", $x, $y, 1, 2)
EndFunc

Func checkStatus()
    $changeMode = _ImageSearch("changeMode.png", 0, $x, $y, 10)
    $inQueue = _ImageSearch("inQueue.png", 0, $x, $y, 10)
    if $changeMode = True Then
        click(440, 686)
        Sleep(2000)
    ElseIf $inQueue = True Then
        click(440, 686)
        Sleep(1000)
        click(440, 686)
        Sleep(2000)
    EndIf    
EndFunc

Func exitApp()
    Exit
EndFunc