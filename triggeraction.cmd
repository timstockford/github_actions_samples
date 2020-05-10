IF "%1"=="" (
    set /p TAGTEXT=Enter Tag: 
) else (
    set TAGTEXT=%1
)

git pull --tags origin master
echo %TAGTEXT = %DATE%-%TIME% >>./files/file.txt
git add ./files/file.txt
git tag "%TAGTEXT%"
git commit -m "Action Trigger %TAGTEXT% %DATE%-%TIME%"
git push origin master:master --tags
