SET /P TIMEOUT=Enter a timeout in minutes:

SET /a TIMEOUT=TIMEOUT*60
if %TIMEOUT%==0	( goto manage) else (goto apagar)

:manage
	set/p uno=0 to shutdown, 1 to cancel.
	if %uno%==0 (goto instant) else (goto cancel)
:instant
	shutdown.exe /s /t 00
:cancel
	SHUTDOWN.EXE /a
	goto fin
:apagar
	SHUTDOWN.EXE -s -t %TIMEOUT%
	echo The System will shutdown in %TIMEOUT% minutes
	goto fin
:fin
	exit