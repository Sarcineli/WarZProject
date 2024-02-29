# WarZ 教程
> Community版本

> 原链接: [Link](https://forum.ragezone.com/threads/tutorial-setting-up-infestation-mmo-server-ragezone-community-edition.1010574/)

> WARN: This tutorial is based on DNC ’s RaGEZONE Community Edition release. All the credit goes to @DNC

## Update
- [Update1](Update1.md)
- [Update2](Update2.md)

## Environment

### Main requirements
> The game can be set up on another operating system but this tutorial show's the way its done on Windows server 2008 R2.

1. Ability to read and follow instructions.
2. Not using a router.
3. Windows server 2008 R2

### Required source files
1. RZCE.rar
2. src.rar
3. External.rar
4. WarZ_SQL.rar
5. Update1 -> src_Update1.rar
6. Update2 -> src_Update2.rar
7. WarZ_SQL_Update2.rar


## Server prerequisites Installation

### Disable User Account Control (UAC)
1. Open Start -> Run
2. Type msconfig and click OK
3. Select Tools tab. Select Change UAC Settings and press Launch
4. Change settings to never notify and click OK
5. You may close the System Configuration window by clicking OK
6. Restart the computer for the setting to apply.

### Disable windows Firewall
1. Open Start -> Run
2. Type Netsh advfirewall set all state off and click OK

### Disable Internet Explorer Enhanced Security
1. Open Server Manager
2. On the main page. Select Configure IE ESC
3. Change both settings to Off and click OK

### Internet Information Service IIS 7

```
1. Open Server Manager and navigate to Roles
2. Click Add Roles
3. Skip the first page by clicking Next
4. Select Web Server (IIS) and Application Server. In the popup window click Add Required Features
This will add .NET Framework 3.5.1
5. Click Next 4 times.
6. In the Select Role Services you have to select only the following 
Services:
WEB Server -> Common HTTP Features
    - Static Content
    - Default Document
    - Directory Browsing
    - HTTP Errors
WEB Server -> Application Development
    - ASP .NET
    - .NET Extensibility
    - ASP
    - CGI
    - ISAPI Extensions
    - ISAPI Filters
WEB Server -> Health and Diagnostics
    - HTTP Logging
    - Logging Tools
    - Request Monitor
    - Custom Logging
WEB Server -> Security
    - Request Filtering
    - IP and Domain Restrictions
WEB Server -> Performance
    - Static Content Compression
    - Dynamic Content Compression
Management Tools
    - IIS Management Console
7. Click Next
8. Click Install
9. Wait until the installation process is done and click Close
10. Restart the computer

```

### Web Platform Installer
1. Open wpilauncher.exe
2. Install the application.
3. After the installation finishes the Web Platform Installer will stay open.
4. In the search box type php and on the keyboard press Enter
5. From the search results select PHP 5.3.28 and click Add
6. The Web Platform Installer will add 2 extra items to install list
1. PHP Manager for IIS
2. Microsoft Drivers 3.0 for PHP v5.3 for SQL Server in IIS
7. Click Install
8. Accept by clicking I Accept. The installation process begins.
9. Click Finish. Now you can close the Web Platform Installer.
10. Restart the computer


### DirectX 9.0c End-User Runtime
1. Open dxwebsetup.exe and install it.

### DirectX Software Development Kit
1. Open DXSDK_Jun10.exe and install it.

### Microsoft SQL Server 2008 R2 RTM - Express with Management Tools

```

1. Open SQLEXPRWT_x86_ENU.exe or SQLEXPRWT_x64_ENU.exe depending on your operating system.
2. The SQL Server Installation Center will open.
3. Click on New installation or add features to an existing installation
4. Check the box I accept the license terms and click Next
5. Click Next
6. Change the value in named instance to WarZ and click Next
7. Click Next
8. Change Authentication Mode to Mixed mode and enter a strong password to both boxes below and click Next to proceed.
9. Click next and wait until the installation completes.
10. Click Close. Also close the SQL Server Installation Center
11. Restart the computer
12. Open Start -> All Programs -> Microsoft SQL Server 2008 R2 -> Configuration Tools -> SQL Server Configuration Manager
13. Navigate to SQL Server Network Configuration -> Protocols for WARZ
14. Right click on TCP/IP and select Properties
15. In the Protocols tab change Enabled value to Yes
16. In the IP Addresses tab set every TCP Dynamic Ports value to blank (This means delete everything from the value box).
17. In the IP Addresses tab set every TCP Port value to 1433
18. Click OK to apply changes.
19. Warning message will notify you that these changes will not take effect until you restart the service. Click OK to the message
20. Navigate to SQL Server Services. Right click on SQL Server (WARZ) and select restart.
21. You may close Sql Server Configuration Manager

```


## Main Release

### Preparing files and directories
1. Create folder C:\WZ
2. Extract bin folder from RZCE.rar WZ\
3. Extract src.rar to WZ\src\
4. Extract External.rar to WZ\src\
5. Extract WarZ_SQL.rar to WZ\


### Internet Information Service IIS Configuration

> WARN: Before continuing go to folder C:\inetpub\wwwroot and create a folder named api

```

1. Open Start -> Administrative Tools -> Internet Information Services (IIS) Manager
2. Navigate to WARZ -> Sites and delete Default Web Site
3. Right click on Sites and select Add Web Site...
4. Set Site name: Site
5. Set Application pool: DefaultAppPool
6. Set Physical path: C:\inetpub\wwwroot
7. Click OK
8. Right click on Site and select Add Virtual Directory
9. Set Alias: wz
10. Set Physical path: C:\WZ\bin\build
11. Click OK
12. Right click on api and select Convert to Application
13. Click OK
14. Navigate to WarZ(WARZ\Administrator)
15. Open feature Server Certificates
16. From the right side menu. Select Create Self-Signed Certificate..
17. Enter api as the name of the certificate and press OK to close.
18. Right click on Site and select Edit Bindings..
19. Click Add...
20. Set Type: https
21. Set SSL certificate: api
22. Click OK
23. Click Close
24. Click on Site and open feature MIME Types
25. From right side menu. Select Add...
26. Set File name extension: .php
27. Set MIME type: application/x-php
28. Click OK
29. Click on Site and from the right side menu click on Restart

```

### Creating user and database. Adding rights and importing tables.
> Note: You don’t have to save the query when asked on closing the SQL Server Management Studio.

```
1. Open Start -> All Programs -> Microsoft SQL Server 2008 R2 -> SQL Server Management Studio
2. Login using Authentication: Windows Authentication
3. Navigate to Security -> Logins
4. Right click on Logins and select New Login...
5. Enter Login name: wz_api_user
6. Select SQL Server authentication
7. Enter password: 123456 Confirm password: 123456
8. Unselect Enforce password policy
9. Click OK
10. Right click on Databases and select New Database...
11. Enter Database name: WarZ
12. Enter Owner: wz_api_user
13. Click on the Options tab
14. Set Recovery model: Full
15. Click OK
16. Navigate to Databases -> WarZ
17. Right click on WarZ and select New Query
18. Open the WZ\WarZ.sql file in notepad
19. Select all and copy and paste to the query window
20. Click F5 to execute the query.
21. Close SQL Server Management Studio.

```

### Data Sources (ODBC)

> Note: If your computer name is not set to WarZ then use the computer name that you have set to the server. The second option is to type in the Server box localhost or 127

```
1. Open Start -> Run
2. Type odbcad32.exe and click OK
3. Select tab System DSN and click on Add…
4. Select SQL Server Native Client 10.0 and click Finish
5. A new window will open. In the name box type WarZ. You can leave the description empty.In the Server box type WarZ and click Next to proceed.
6. Set the option to With SQL Server authentication using a login ID and password entered by the user.
7. Enter Login ID: wz_api_user Password: 123456
8. Click Next to proceed
9. Select Change the default database to: and select WarZ as the value
10. Click Next to proceed
11. Click Finish
12. Click Test Data Source to see if it works.
```

### Microsoft Visual Studio 2008 Professional Edition
1. Create a folder named Visual Studio 2008
2. Extract VS2008ProEdition90dayTrialENUX1435622.iso to folder Visual Studio 2008 using Extract Here
3. Wait untill the extraction is done.
4. Navigate to the folder Visual Studio 2008 and open setup.exe
5. Click on Install Visual Studio 2008
6. Click Next to proceed.
7. Accept the licence terms and click Next to proceed.
8. Click Install and wait for the setup to complete.
9. Click Finish. Click Exit to close the Visual Studio 2008 Setup


### Microsoft Visual Studio 2008 SP1
1. Create a folder named Visual Studio 2008 SP1
2. Extract VS2008SP1ENUX1512962.iso to folder Visual Studio 2008 SP1 using Extract Here
3. Wait untill the extraction is done
4. Navigate to the folder Visual Studio 2008 SP1\ vs90sp1 and open SPInstaller.exe
5. Click Next to proceed.
6. Accept the licence terms and click Next to proceed.
7. Wait for the setup to complete then click Finish to exit the installer.


### FixHackShield
[Link](./FixHackShield.md)


### Changing IP addresses.
> Note: xxx.xxx.xxx.xxx -> to be replaced with actual IP address. Only if you plan on using the server as a public server.
```m
1. WZ\src\EclipseStudio\Sources\Main.cpp
Replace all records of 127.0.0.1 with xxx.xxx.xxx.xxx
2. WZ\src\RSUpdate\Launcher.cfg
Replace all records of localhost with xxx.xxx.xxx.xxx
3. WZ\src\RSUpdate\LauncherConfig.cpp
Replace all records of localhost and 127.0.0.1 with xxx.xxx.xxx.xxx
4. WZ\src\server\SupervisorServer.cfg
Replace all records of 127.0.0.1 with xxx.xxx.xxx.xxx
5. WZ\src\server\WO_GameServer\Sources\ServerMain.cpp
Change 127.0.0.1 to xxx.xxx.xxx.xxx
6. WZ\bin\SupervisorServer.cfg
Replace all records of 127.0.0.1 with xxx.xxx.xxx.xxx
7. WZ\bin\game.ini
Replace all records of 127.0.0.1 with xxx.xxx.xxx.xxx
8. WZ\bin\build\rsbuild.xml
Change 127.0.0.1 to xxx.xxx.xxx.xxx

```

### Building

```m
1. Open WZ\src\RSBuild\RSBuild.sln
Select "Release" Wait until Updating IntelliSense is done and select from menu Build -> Build Solution
Wait until "Build succeeded" and close the program.

2. Open WZ\src\RSUpdate\RSUpdate.sln
Select "Release" Wait until Updating IntelliSense is done and select from menu Build -> Build Solution
Wait until "Build succeeded" and close the program.

3. Open WZ\src\server\WarZ_Server.sln
Select "Debug" Wait until Updating IntelliSense is done and select from menu Build -> Build Solution
Wait until "Build succeeded" and close the program.

4. Open WZ\src\eclipsestudio\WarZ.sln
Select "Final" Wait until Updating IntelliSense is done and select from menu Build -> Build Solution
Wait until "Build succeeded"
Select "Release" Wait until Updating IntelliSense is done and select from menu Build -> Build Solution
Wait until "Build succeeded" and close the program.

5. Open WZ\src\Scripts\WZBackend-ASP.NET\WZBackend-ASP.NET.sln
Select "Debug" Wait until Updating IntelliSense is done and select from menu Build -> Build Solution
Wait until "Build succeeded"
Select from menu Build -> Publish Web Site
Set target Location to your api folder. For example mine is C:\inetpub\wwwroot\api
Press OK to execute.
Wait until „Publish succeeded" and close the program.

```

### Creating bin files

```m
1. Open WZ\bin\RSBuild.exe and wait until the exe closes.
It might take up to 30 minutes. Depending on the hardware and disk type.
2. Open WZ\bin\build\updater\CreateUpdater.bat
This will create WarZlauncher.exe_1.0.0.exe to WZ\bin\build\updater\
3. Copy WarZlauncher.exe_1.0.0.exe to WZ\bin
4. Copy WZ\bin\build\data\wz.xml to WZ\bin\build
5. Copy WZ\bin\build\updater\api_getserverinfo.xml to C:\inetpub\wwwroot
```

### Running server
1. Open WZ\bin\MasterServer.exe
2. Open WZ\bin\SupervisorServer.exe

### Testing
1. Copy the WarZlauncher.exe_1.0.0.exe to another computer to a folder and run it.
2. Register account and wait until the updater downloads all the files.
3. Start by pressing Play.
4. Create a player and join the server to test if everything is working.