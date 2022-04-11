ping 127.0.0.1 -n 60 > nul

echo Delete ROOT file from Tomcat folder
del "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\ROOT.war" /s /f /q
echo Done!

echo Delete ROOT folder from Tomcat folder
del "C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\ROOT" /s /f /q
echo Done!