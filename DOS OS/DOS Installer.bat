@echo off

::RESIZE WINDOW
mode con: cols=120 lines=30

::INITIALIZE UTF-8
chcp 65001

title DOS INSTALLER

echo                        _____________________________________________________
echo.
echo                         Welcome to DOS Installer                    part(1/4)
echo                        _____________________________________________________
echo.
echo.
echo  - Press ENTER to Install OS
echo.
echo  - Close window to exit setup. & pause >nul

::FINISHING SCREEN
:fbootgud
cls

title OS INSTALLER

echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DOS Installation                            - Installing                               (part 2/4)
echo        ______________________________________________________________________________________________________
echo.       
echo.
echo        * Copying File
ping localhost -n 20 >nul
echo        * Complete
echo.
echo        * Installing 
ping localhost -n 30 >nul
echo        * Complete
echo.
echo        * Writing Directory
ping localhost -n 12 >nul 
echo        * Complete
echo.
echo        * Completing
ping localhost -n 10 >nul
echo.
echo -Press ENTER to continue  
pause >nul
cls
title OS INSTALLER

:COMPLETE SCREEN
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo                        DOS Installation  - Complete                                 (part 3/4)
echo        ______________________________________________________________________________________________________
echo.
echo.
echo        Completing Installation
echo.
echo        *Checking files error
ping localhost -n 10 >nul
echo        *Complete!
echo.
echo        * Applying iRE filesystem changes
ping localhost -n 10 >nul
echo        *Complete!
echo.
echo        * Saving configuration
ping localhost -n 10 >nul
echo        *Complete!
echo.
cls
color 0a
echo.
echo.
echo ---------------------------------------------------------------------------------------------
echo.
echo                                  Thank You For Choosing Our Product                  (Part 4/4)
echo.
echo ---------------------------------------------------------------------------------------------
pause >nul
cd Boot
ren Boot.instf Boot.bat
start Boot.bat
Exit