git pull --tags origin master
echo %DATE%-%TIME% >>./files/file.txt
git add ./files/file.txt
git commit -m "Action Trigger %DATE%-%TIME%"
git push origin master:master