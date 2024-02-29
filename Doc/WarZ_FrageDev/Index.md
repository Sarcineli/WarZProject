# WarZ 教程

> FrageDev 版本

> 原链接 : [Link](http://web.archive.org/web/20161207041111/http://forum.ragezone.com/f790/release-untouched-source-v3-bin-1100820/)

## 环境要求
> 1. Microsoft Visual Studio 2008
> 2. Microsoft Visual Studio 2008 SP1
> 3. Microsoft SQL Studio 2008
> 4. DirectX 9.0c End-User Runtime
> 5. DirectX Software Development Kit
> 6. Microsoft Web Platform(PHP 5.3.28)
 


## 环境配置

### Disable User Account Control (UAC)
>1. Open Start -> Run
>2. Type msconfig and click OK
>3. Select Tools tab
>4. Select Change UAC Settings and press Launch
>5. Change settings to never notify and click OK

### Disable Windows Firewall
>1. Open Start -> Run
>2. Type Netsh advfirewall set all state off and click OK

### Disable Internet Explorer Enhanced Security 
> (if you are using Windows Server 2008/2012)

>1. Open Server Manager
>2. On the main page select Configure IE ESC
>3. Change both settings to Off and click OK

### Internet Information Service IIS 7
For Windows Server 2008/2012

```
1. Open Server Manager and navigate to Roles
2. Click Add Roles
3. When you can select Web Server (IIS) (make sure to add .NET Framework 3.5.1)
4. Select
    - Static Content
    - Default Document
    - Directory Browsing
    - HTTP Errors
    - ASP.NET
    - .NET Extensibility
    - ASP
    - CGI
    - ISAPI Extensions
    - ISAPI Filters
    - HTTP Logging
    - Logging Tools
    - Request Monitor
    - Custom Logging
    - Request Filtering
    - IP and Domain Restrictions
    - Static Content Compression
    - Dynamic Content Compression
    - IIS Management Console
5. Install
6. Restart the computer
```
For Windows 7

```
1. Open Computer and go the Uninstall or change a program
2. Open Turn Windows features on or off
3. When you can select Web Server (IIS) (make sure to add .NET Framework 3.5.1)
4. Select
    - Static Content
    - Default Document
    - Directory Browsing
    - HTTP Errors
    - ASP.NET
    - .NET Extensibility
    - ASP
    - CGI
    - ISAPI Extensions
    - ISAPI Filters
    - HTTP Logging
    - Logging Tools
    - Request Monitor
    - Custom Logging
    - Request Filtering
    - IP and Domain Restrictions
    - Static Content Compression
    - Dynamic Content Compression
    - IIS Management Console
5. Install
6. Restart the computer
```

### Web Platform Installer
>1. Open wpilauncher.exe
>2. Install the application
>3. On the search box type PHP and press ENTER
>4. Select PHP 5.3.28 and click Add
>5. That will add two extra items, click Install
>6. Accept by clicking I Accept
>7. Restart the computer

### DirectX 9.0c End-User Runtime
>ignore if you are using Windows Server 2012

>1. Open dxwebsetup.exe
>2. Install the application

### DirectX Software Development Kit
>1. Open DXSDK_Jun10.exe
>2. Install the application


### Microsoft SQL Server 2008
>1. Open SQLEXPRWT_x64_ENU.exe
>2. Click on New installation or Add features to an existing installation
>3. Check the box I accept the license terms and click Next
>4. Select All and click Next
>5. Change the name to WarZ
>6. Click Next
>7. Change the Authentification Mode to Mixed mode and enter a strong password
>8. Install
>9. Restart the computer
>10. Open SQL Server Configuration Manager
>11. Navigate to SQL Server Network Configuration -> Protocols for WARZ
>12. Right click on TCP/IP and select Properties
>13. In the Protocols tab change Enabled value toYes
>14. In the IP Addresses tab set every TCP Dynamic Ports value to blank ( ) and  set every TCP Port value to 1433
>15. Click OK
>16. Navigate to SQL Server Service, Right Click on SQL Server (WARZ) and select restart


### Internet Information Service IIS Configuration (IIS)
>1. Create a folder called api on C:\inetpub\wwwroot
>2. Open Internet Information Services (IIS) Manager
>3. Navigate to Sites and delete Default Web Site
>4. Right click and create a new Site called Site
>5. Set Application pool: DefaultAppPool
>6. Set Physical path: C:\inetpub\wwwroot and click OK
>7. Right click on Site and select Add Virtual Directory
>8. Set Alias: wz
>9. Set Physical Path: C:\WarZ\bin\build and click OK
> 10. Right click on api and select Convert to Application
> 11. Click on the main tab and select Server Certificates
> 12. From the right side menu select Create Self-Signed Certificate
> 13. Enter api as the name and click OK
> 14. Right click on Site and select Edit Bindings
> 15. Click Add
> 16. Set Type: https
> 17. Set SSL certificate: api and click OK
> 18. Click on Site and select MIME Types
> 19. From right side menu select Add
> 20. Set File name extension: .php
> 21. Set MIME Type: application/x-php and click OK
> 22. From the left side menu select Application Pools
> 23. Select DefaultAppPool
> 24. Select .NET Framework v2.0 with Integrated
> 25. Click on Site and from the right side menu click on Restart


### Database
>1. Open SQL Server Management Studio
>2. Login using Authentification: Windows Authentication
>3. Navigate to Security -> Logins
>4. Right click on sa and select Properties
>5. Write a password, uncheck all (Specify old password, Enforce password policy) and click OK
>6. Right click on Databases and Select New Database
>7. Enter Database name: WarZ
>8. Enter Owner : sa
>9. On the Option tab set Recovery model: Full
>10. Click OK and do the same with Breezenet as Database name
>11. Right click on WarZ and select New Query
>12. Open Infestation_Survivor_Stories.sql with Notepad++, select all and copy it
>13. Paste it on the query and press Execute
>14. Right click on Breezenet and select New Query
>15. Open Breezenet.sql with Notepad++, select all and copy it
>16. Paste it on the query and press Execute
>17. Close SQL Server Management Studio without saving querys


### Microsoft Visual Studio 2008
>1. Open VS2008ProEdition90dayTrialENUX1435622.exe and install it
>2. Open SPInstaller.exe and install it

### Api
>1. Open WZBackend-ASP.NET.sln
>2. Change every FrageDev92 to your sa password
>3. Build the solution in Debug
>5. Publish Web Site with this path: C:\inetpub\wwwroot\api

Make the emulator online
```
1. Open RSUpdate.sln
2. Ctrl+F and find every // IP
3. Change every 127.0.0.1 to your IP when you find // IP on the line and every 127.0.0.1 on UPDATER_CONFIG.cpp
4. Build the solution in Release
5. Go to C:\WarZ\bin\build\updater and Create a new updater
6. Open RSBuild.sln
7. Build the solution in Release
8. Open WarZ.sln
9. Ctrl+F and find every // IP
10. Change every 127.0.0.1 to your IP when you find // IP on the line
11. Build the solution in Final and Realease
12. Open WarZ_Server.sln
13. Change every 127.0.0.1 to your IP when you find // IP on the line
14. Build the solution in Release
15. Open WZBackend-ASP.NET.sln
16. Ctrl+F and find every 127.0.0.1
17. Change every 127.0.0.1 to your IP
18. Change every FrageDev92 to your sa password
19. Build the solution in Debug
20. Publish Web Site with this path: C:\inetpub\wwwroot\api
21. Open SupervisorServer.cfg, change both 127.0.0.1 to your IP and save it
22. Start RSBuild.exe

```