@echo off
setlocal

for /f "delims=" %%x in ('type "%~f0"') do set "content=!content!%%x^r^"
echo %content% > %TEMP%\temp_script.bat

chcp 65001
set ffmpeg_dir=%~dp0ffmpeg
set PATH=%PATH%;%ffmpeg_dir%\bin

set download_dir=%~dp0downloads
if not exist "%download_dir%" mkdir "%download_dir%"

:START
set /p url="請輸入 YouTube url: "
.\yt-dlp_win\yt-dlp.exe --list-formats "%url%"

set /p format="請輸入要下載的格式ID編號: "
.\yt-dlp_win\yt-dlp.exe -f %format% -o "%download_dir%\%%(title)s.%%(ext)s" "%url%"

set /p continue="是否繼續下載？(按Y繼續): "

if /i "%continue%"=="Y" goto START

pause
