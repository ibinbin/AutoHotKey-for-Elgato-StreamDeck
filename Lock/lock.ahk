#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; send stop command to whatever media playing software is playing (iTunes, Spotify, VLC...), lock the computer, wait 5 sec to make sure the lock screen appear and then shutdown the screen.
Send {Media_Stop}
Sleep, 300
DllCall("LockWorkStation")
Sleep, 5000
SendMessage,0x112,0xF170,2,,Program Manager
return
