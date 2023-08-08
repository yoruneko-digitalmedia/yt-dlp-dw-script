@echo off
chcp 65001
set input_dir=%~dp0輸入
set output_dir=%~dp0輸出
set ffmpeg_dir=%~dp0..\ffmpeg

if not exist "%output_dir%" mkdir "%output_dir%"

for %%f in ("%input_dir%\*.*") do (
    "%ffmpeg_dir%\bin\ffmpeg.exe" -i "%%f" -vn -c:a libmp3lame -b:a 320k "%output_dir%\%%~nf.mp3"
)

echo 轉檔完成，請關閉視窗

pause
