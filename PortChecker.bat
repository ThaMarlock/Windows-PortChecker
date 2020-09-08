@ECHO OFF
@ECHO Enter the port you want to check:
:MARK_porteingabe
SET /p port=Port:
IF %port% =="" (
    GOTO MARK_porteingabe
) ELSE (
    NETSTAT -a -n -o | FINDSTR :%port%
    @ECHO %date:~0,10% >> PortCheckerSave.txt
    @ECHO %time:~0,8% >> PortCheckerSave.txt
    NETSTAT -a -n -o | FINDSTR :%port% >> PortCheckerSave.txt
    @ECHO -------------------------------------------------------- >> PortCheckerSave.txt
    GOTO MARK_porteingabe
)
