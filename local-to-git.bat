@echo off
setlocal

REM === Configuration ===
set "SOURCE=.\Game scrapy.db"
set "DEST1=scrapy-test\Game scrapy.db"
set "DEST2=scrapy-test\.gitignore\backup\Game scrapy.db"
set "GIT_REPO=scrapy-test"
set "BRANCH=main"

REM === Copie du fichier ===
cd "C:\Users\ptits\AppData\Roaming\Axolot Games\Scrap Mechanic\User\User_76561198279500362\Save\Survival"
copy /Y "C:\Users\ptits\AppData\Roaming\Axolot Games\Scrap Mechanic\User\User_76561198279500362\Save\Survival\Game scrapy.db" "C:\Users\ptits\AppData\Roaming\Axolot Games\Scrap Mechanic\User\User_76561198279500362\Save\Survival\scrapy-test\Game scrapy.db"
copy /Y "C:\Users\ptits\AppData\Roaming\Axolot Games\Scrap Mechanic\User\User_76561198279500362\Save\Survival\Game scrapy.db" "C:\Users\ptits\AppData\Roaming\Axolot Games\Scrap Mechanic\User\User_76561198279500362\Save\Survival\scrapy-test\.gitignore\backup\Game scrapy.db"

REM === Date et heure ===
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format ''yyyy-MM-dd HH:mm:ss''"') do set "DATE=%%i"

REM === Git ===
cd /d "%GIT_REPO%"

git add .
git commit -m "Update %DATE%"
git push origin %BRANCH%

echo.
echo Terminé.
pause
