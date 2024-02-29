# UPDATE1

> Before updating close MasterServer.exe and SupervisorServer.exe if they are running.
Also close all other open files that might require replacing by the updating.

### Preparing files and directories

> Note:Application will ask your permission to delete the existing files in the api directory. Agree to it by selecting Yes

```m
1. Extract src folder inside src_Update1.rar to C:\WZ replacing all the files and folders in WZ\src

Building
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

6. Wait until "Publish succeeded" and close the program.

```

### Recreating .bin files
1. Delete all .bin files in directory WZ\bin\build\data
2. Open WZ\bin\RSBuild.exe and wait until the exe closes. It might take up to 30 minutes. Depending on the hardware and disk type.
3. Open folder WZ\bin\build\updater\ and delete the file WarZlauncher.exe_1.0.0.exe
4. Open folder WZ\bin and delete the file WarZlauncher.exe_1.0.0.exe
5. Open WZ\bin\build\updater\CreateUpdater.bat This will create WarZlauncher.exe_1.0.0.exe to WZ\bin\build\updater\
6. Copy WarZlauncher.exe_1.0.0.exe to WZ\bin replacing the old one
7. Copy WZ\bin\build\data\wz.xml to WZ\bin\build replacing the old one

### Running server
1. Open WZ\bin\MasterServer.exe
2. Open WZ\bin\SupervisorServer.exe

### Testing
1. Copy the new WarZlauncher.exe_1.0.0.exe to another computer to a new folder and run it.
2. Login with your account and wait until the updater downloads all the files.
3. Start by pressing Play.
4. Test if everything is working.