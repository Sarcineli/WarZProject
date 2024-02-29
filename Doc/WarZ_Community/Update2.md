# UPDATE2

> Note: Before updating close MasterServer.exe and SupervisorServer.exe if they are running.
Also close all other open files that might require replacing by the updating.

### Preparing files and directories
1. Extract src folder inside src_Update2.rar to „Desktop“
2. Select properties on the extracted folder and uncheck Read-only and apply.
3. Copy the folder src from Desktop to WZ\ replacing all files and folders inside
4. Extract WarZ.sql from WarZ_SQL_Update2.rar to WZ\ replacing the old WarZ.sql file

### Changing IP addresses.

> Note: xxx.xxx.xxx.xxx -> to be replaced with actual IP address. Only if you plan on using the server as a public server.

1. WZ\src\EclipseStudio\Sources\Main.cpp
replace all records of 127.0.0.1 with xxx.xxx.xxx.xxx


### Recreating database. Adding rights and importing tables.
> Note:You will see some error messages like „Cannot drop the table 'dbo.********', because it does not exist or you do not have permission“. This is ok as the query is trying to drop the existing tables before creating them but as we just deleted everything then there is nothing to drop.

> Note: You don’t have to save the query when asked on closing the SQL Server Management Studio.
1. Open Start -> All Programs -> Microsoft SQL Server 2008 R2 -> SQL Server Management Studio
2. Login using Authentication: Windows Authentication
3. Select database named WarZ and delete it.
4. Create a new database called WarZ selecting Owner wz_api_user
5. Change Recovery model to Full at Options and hit "OK"
6. Select database WarZ and "New Query"
7. Select all from WZ\WarZ.sql opened in notepad and paste to the query and hit execute.
8. Close SQL Server Management Studio.



### Building
```m
1. Open WZ\src\RSBuild\RSBuild.sln
Select "Release" Wait until Updating IntelliSense is done and select from menu Build -> Rebuild Solution
Wait until "Rebuild All succeeded" and close the program.

2. Open WZ\src\RSUpdate\RSUpdate.sln
Select "Release" Wait until Updating IntelliSense is done and select from menu Build -> Rebuild Solution
Wait until "Rebuild All succeeded" and close the program.

3. Open WZ\src\server\WarZ_Server.sln
Select "Debug" Wait until Updating IntelliSense is done and select from menu Build -> Rebuild Solution
Wait until "Rebuild All succeeded" and close the program.

4. Open WZ\src\eclipsestudio\WarZ.sln
Select "Final" Wait until Updating IntelliSense is done and select from menu Build -> Rebuild Solution
Wait until "Rebuild All succeeded"
Select "Release" Wait until Updating IntelliSense is done and select from menu Build -> Rebuild Solution
Wait until "Rebuild All succeeded" and close the program.

5. Open WZ\src\Scripts\WZBackend-ASP.NET\WZBackend-ASP.NET.sln
Select "Debug" Wait until Updating IntelliSense is done and select from menu Build -> Rebuild Solution
Wait until "Rebuild All succeeded"
Select from menu Build -> Publish Web Site
Set target Location to your api folder. For example mine is C:\inetpub\wwwroot\api
Press OK to execute.

6. Application will ask your permission to delete the existing files in the api directory. Agree to it by selecting „Yes“

7. Wait until „Publish succeeded" and close the program.

```

### Recreating .bin files
1. Delete all .bin files in directory WZ\bin\build\data
2. Open WZ\bin\RSBuild.exe and wait until the exe closes.
It might take up to 30 minutes. Depending on the hardware and disk type.
3. Open folder WZ\bin\build\updater\ and delete the file WarZlauncher.exe_1.0.0.exe
4. Open folder WZ\bin and delete the file WarZlauncher.exe_1.0.0.exe
5. Open WZ\bin\build\updater\CreateUpdater.bat
This will create WarZlauncher.exe_1.0.0.exe to WZ\bin\build\updater\
6. Copy WarZlauncher.exe_1.0.0.exe to WZ\bin replacing the old one
7. Copy WZ\bin\build\data\wz.xml to WZ\bin\build replacing the old one

### Running server
1. Open WZ\bin\MasterServer.exe
2. Open WZ\bin\SupervisorServer.exe

### Testing
1. Copy the new WarZlauncher.exe_1.0.0.exe to another computer to a new folder and run it.
2. Register account and wait until the updater downloads all the files.
3. Start by pressing Play.
4. Create a player and join the server to test if everything is working.