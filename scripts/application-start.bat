ping 127.0.0.1 -n 30 > nul
@echo off

set "current_date=%DATE%" & rem not used!!

for /F "usebackq tokens=2 skip=3" %%i in (`tasklist /FI "services eq Tomcat9"`) do (
      echo Failed to stop. Killing process Id %%i
      taskkill /PID %%i /F >NUL 2>&1
    )

net start Tomcat9

::aws s3 sync s3://vsc-prod-server-logs/vetscout-logs C:\VetPriceScout\old-logs
::aws s3 sync s3://vsc-prod-server-logs/tomcat-logs "C:\Program Files\Apache Software Foundation\Tomcat 9.0\old-logs"