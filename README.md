LeagueAuto
===========
_LeagueAuto makes your life easier by doing everything for you in the league of legends client !!!_
### Requirements 
_AutoIt Downloaded on your pc.
If you don't have it you can download it [here](https://www.autoitscript.com/site/autoit/downloads/)_
### Setup
_Go to `leagueAuto.au3` and add your path, name and password (of your league account) It's in lines 16 - 19_
```autoit
Global Const $LOLPath = "<Your path to RiotClientServices.exe>"
Global Const $name = "<Your name>"
Global Const $password = "<Your password>" 
```
_After this you are good to go._
### Optional
_You can make this code `exe` by typing `win` then search for `Compile Script to .exe (x64)` and follow the instructions._
### How to use it.
- #### Run it
    1. _Run the code by typing `start .\leagueAuto.au3` in your terminal._ 
    2. _Run the `LeagueAuto.exe` if you converted the code to `exe`._ 
- #### Login
    _If you did everything right so far, you can see how the script logging in for you already._ 
- #### League client

    _To start a game you don't have to do anything except clicking one button._
    __If you click :__

    __1__ ▶ _it starts for you a blind game_

    __2__ ▶ _it starts for you a normal game (mid and top)_

    __3__ ▶ _it starts for you a soloQ game (mid and top)_

    __4__ ▶ _it starts for you a flex game (mid and top)_
    
    __5__ ▶ _it starts for you an aram game_