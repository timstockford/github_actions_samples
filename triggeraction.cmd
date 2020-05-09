set /p TAGTEXT=Enter Tag: 
git pull --tags origin master
echo %DATE%-%TIME% >>./files/file.txt
git add ./files/file.txt
git tag "%TAGTEXT%"
git commit -m "Action Trigger %TAGTEXT% %DATE%-%TIME%"
git push origin master:master --tags
