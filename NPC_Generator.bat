@echo off

echo Drofseh's Pendragon 6E NPC Generator
echo v1.0.1
echo.
echo -----
echo.
echo To use this generator just fill out each option with a value.
echo Values listed as supported will have a mechanical effect on the output, but non-supported values are accepted.
echo For example the only supported homeland is Salisbury which gives the character the Hate (Saxons) passion.
echo Entering a different homeland will simply give no bonus.
echo.
echo Generation largely adheres to the Player Knight character creation rules from the Core Rulebook, with additions from other published 6E books where appropriate.
echo Some restrictions are ignored as the characters are not meant to be PK starting characters; ex. skills may exceed 15.
echo Liberties are also occasionally taken to expand the differences between characters.
echo Ex. higher ranking class are given additional skill points based on their rank, and may have the Duty (Vassals) passion.
echo.
echo -----
:START
echo.
echo Enter the gender of the character
echo.
echo Default: Randomly Selected
echo.
echo Supported values are:
echo Male, Female
echo.
set /p char_gender=Gender:
echo.
echo -----
echo.
echo Enter the name of the character
echo.
echo Default: Randomly selected based on culture
echo.
echo Supported values are:
echo Any
echo.
set /p char_name=Name:
echo.
echo -----
echo.
echo Enter the character's birth year
echo.
echo Default: 487
echo.
echo Supported values are:
echo Any
echo.
set /p char_born=Birth Year:
echo.
echo -----
echo.
echo Enter the homeland of the character
echo.
echo Default: Salisbury
echo.
echo Supported values are:
echo Salisbury
echo.
set /p char_homeland=Homeland:
echo.
echo -----
echo.
echo Enter the name of the lord of the character
echo.
echo Default: Robert of Salisbury
echo.
echo Supported values are:
echo Any
echo.
set /p char_lord=Lord's Name:
echo.
echo -----
echo.
echo Enter the class of the character.
echo.
echo Default: Vassal Knight or Lady (depending on character's gender).
echo.
echo Supported values are:
echo Squire, Esquire, Mercenary Knight, Household Knight, Vassal Knight, Estate Holder, Banneret, Baronet, Baron, Count, Duke, Petty King, King, High King 
echo Handmaiden, Chief Handmaiden, Lady, Baroness, Countess, Duchess, Queen
echo.
set /p char_class=Class:
echo.
echo -----
echo.
echo Enter the culture of the character
echo.
echo Default: Randomly selected culture
echo.
echo Supported values are:
echo Cymric, Cornish, Bretons, Cambrian, Cumbrian, Irish, Pictish, Roman, Aquitainian, Greek, Byzantine, Saxon, Anglian, Frankish, Jute, Danish
echo.
set /p char_culture=Culture:
echo.
echo -----
echo.
echo Enter the religion of the character
echo.
echo Default: Randomly selected based on culture
echo.
echo Supported values are:
echo Christian, Pagan, Wodinic, Heathen
echo.
set /p char_religion=Religion:

:GENERATE
python NPC_Generator.py "%char_gender%" "%char_name%" "%char_born%" "%char_homeland%" "%char_lord%" "%char_class%" "%char_culture%" "%char_religion%"

echo.
echo Done!
echo.
echo What would you like to do now?
echo.
echo 1. Generate another NPC using the same input
echo 2. Start over with new input
echo 3. Exit
echo.
choice /c 123 /n /m "Select an option: "

if errorlevel 3 goto END
if errorlevel 2 goto START
if errorlevel 1 goto GENERATE

:END
exit
