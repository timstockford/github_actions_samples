git pull --tags origin master
echo %DATE%-%TIME% >>./files/file.txt
git add ./files/file.txt
git tag "%DATE%-%TIME%
git commit -m "Action Trigger %DATE%-%TIME%"
git push origin master:master --tags