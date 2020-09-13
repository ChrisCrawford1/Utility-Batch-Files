@ECHO OFF

set /p opType=Start or stop sql services[start/stop]?: 

If %opType% == start (
	ECHO Starting Local Microsoft SQL Server Services...
	net start MSSQLSERVER
	net start MSSQLFDLauncher
	net start SQLSERVERAGENT
	net start MSSQLServerOLAPService
	net start SSASTELEMETRY
	net start SQLTELEMETRY
	net start SQLWriter
)

If %opType% == stop (
	ECHO Starting Local Microsoft SQL Server Services...
	net stop MSSQLSERVER
	net stop MSSQLFDLauncher
	net stop SQLSERVERAGENT
	net stop MSSQLServerOLAPService
	net stop SSASTELEMETRY
	net stop SQLTELEMETRY
	net stop SQLWriter
)

pause
exit