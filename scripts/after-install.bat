ping 127.0.0.1 -n 120 > nul

echo Add the WAR file to Tomcat directory

echo Copying WAR file to TomCat Directory
copy "C:\tmp\ROOT.war" "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps"


echo Script to delete ROOT file from tmp folder
del "C:\tmp\ROOT.war" /s /f /q
echo Done!