#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, D:\Users\nye\Videos\OBS  ; Ensures a consistent starting directory.

^!Numpad2::
	Loop, Files, *.flv 
	{
		FileGetTime, CurrentTime, %A_LoopFileName%, C
		If (CurrentTime > EndTime)
		{
			EndTime := Time
			File := A_LoopFileName
		}
	}
	
	Run, %File%
Return

^!Numpad3::
	Loop, Files, *.flv 
	{
		FileGetTime, CurrentTime, %A_LoopFileName%, C
		If (CurrentTime > EndTime)
		{
			EndTime := Time
			File := A_LoopFileName
		}
	}
	
	FileDelete, %File%
Return

^!Numpad4::
	Run, explore %A_WorkingDir%
Return