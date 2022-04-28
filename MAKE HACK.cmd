@echo off
set "base_dir=%~dp0"
set "source_rom=%base_dir%FE8U.gba"
set "target_rom=%base_dir%FEtest_.gba"
set "main_event=%base_dir%FE8U-CN-Font-Installer.event"


echo Copying ROM
cd %base_dir%
copy "%source_rom%" "%target_rom%"

echo:
echo Assembling
cd "%base_dir%Event Assembler"
Core A FE8 "-output:%target_rom%" "-input:%main_event%"

echo:
echo Done!
pause