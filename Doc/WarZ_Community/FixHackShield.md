
### Fix HackShield
1. Navigate to WZ\src\External\
2. Copy HShield folder to WZ\bin
3. Navigate to WZ\bin\HShield and delete the following folders
1. Doc
2. Include
3. Lib
4. Sample
4. Navigate to WZ\bin\HShield\Developer and delete the following folder
1. Lib
5. Navigate to WZ\bin\build
6. Open RSBuild.xml in notepad. Select all and delete. Do not close the notepad.
7. Select the code below and paste it to the open RSBuild.xml file and Save changes.
```xml
<build>
 <output dir="build\data"/>
 
 <cdn url="http://127.0.0.1/wz/data/"/>

 <!--  set base archive for incremental update  -->
 <!-- <base file="build\data\wz4119100A"/>   -->


<!-- include EULA file -->
<include mask="eula-en.htm"/>
<include mask="eula-en.rtf"/>
<include mask="Data\LangPack\dictionary.txt"/>
<!-- excludes for this package files (just in case they was created in this dir -->
<exclude mask="WZ_*.bin"/>


<!-- excludes for debug files -->
<exclude mask="r3dlog.txt"/>
<exclude mask="game.ini"/>
<exclude mask="reports.txt"/>
<exclude mask="MasterServer_ccu.txt"/>
<exclude mask="*.pdb"/>
<exclude mask="*.exp"/>
<exclude mask="*.lib"/>
<exclude mask="*.bat"/>
<exclude mask="*.vmp"/>

<!-- excludes for other binaries -->
<exclude mask="Studio*.*"/>
<exclude mask="MasterServer.*"/>
<exclude mask="MasterServer_Rent.*"/>
<exclude mask="RentFullDir.cfg"/>
<exclude mask="WZ_GameServer.*"/>
<exclude mask="SupervisorServer.*"/>
<exclude mask="RSBuild.*"/>
<exclude mask="RSUpdate.*"/>
<exclude mask="Launcher.exe"/>
<exclude mask="Launcher.exe_1.0.0.exe"/>
<exclude mask="WZAdmin.*"/>
<exclude mask="WarZ_unpack.exe"/>
<exclude mask="*.log"/>
<exclude mask="*.suo"/>
<exclude mask="*.bat"/>
<exclude mask="gameSettings.ini"/>
<exclude mask="local.ini"/>
<exclude mask="windows_error_report_mapping.xml"/> 

<!-- Dlls -->
<exclude mask="PhysX3CharacterKinematic_x86.dll"/> 
<exclude mask="PhysX3CharacterKinematicCHECKED_x86.dll"/> 
<exclude mask="PhysX3CharacterKinematicDEBUG_x86.dll"/> 
<exclude mask="PhysX3CharacterKinematicPROFILE_x86.dll"/> 
<exclude mask="PhysX3CHECKED_x86.dll"/> 
<exclude mask="PhysX3CommonCHECKED_x86.dll"/> 
<exclude mask="PhysX3CommonDEBUG_x86.dll"/> 
<exclude mask="PhysX3CommonPROFILE_x86.dll"/> 
<exclude mask="PhysX3CookingCHECKED_x86.dll"/> 
<exclude mask="PhysX3CookingDEBUG_x86.dll"/> 
<exclude mask="PhysX3CookingPROFILE_x86.dll"/> 
<exclude mask="PhysX3DEBUG_x86.dll"/> 
<exclude mask="PhysX3GpuCHECKED_x86.dll"/> 
<exclude mask="PhysX3GpuDEBUG_x86.dll"/> 
<exclude mask="PhysX3GpuPROFILE_x86.dll"/> 


<!-- Dlls -->
<include mask="ApexFramework_x86.dll"/>
<include mask="avcodec-52.dll"/>
<include mask="avformat-52.dlll"/>
<include mask="avutil-50.dll"/>
<include mask="CrashRpt1301.dll"/>
<include mask="cudart32_32_16.dll"/>
<include mask="dbghelp.dll"/>
<include mask="fmod_event.dll"/>
<include mask="fmod_event_net.dll"/>
<include mask="fmod_event_netL.dll"/>
<include mask="fmod_eventL.dll"/>
<include mask="fmodex.dll"/>
<include mask="fmoxedL.dll"/>
<include mask="icudt46.dll"/>
<include mask="PhysX3_x86.dll"/>
<include mask="PhysX3Common_x86.dll"/>
<include mask="PhysX3Cooking_x86.dll"/>
<include mask="PhysX3Gpu_x86.dll"/>
<include mask="PhysX3PROFILE_x86.dll"/>
<include mask="steam_api.dll"/>
<include mask="VMProtectSDK32.dll"/>
<include mask="APEX_Loader_x86.dll"/>

<!-- excludes for build directories -->
<exclude mask="1"/>
<exclude mask="build"/>
<exclude mask="logs"/>
<exclude mask="bin"/>
<exclude mask="server"/>
<exclude mask="tools"/>
<exclude mask="logs"/>
<exclude mask="logms"/>
<exclude mask="logss"/>
<exclude mask="logsv"/>

<!-- include for Hackshield directories -->
<include mask="HackShield"/>
<include mask="HShield"/>
<include mask="*.ui"/>
<include mask="*.aht"/>
<include mask="*.ahc"/>
<include mask="ahnrpt.ini"/>
<include mask="bldinfo.ini"/>
<include mask="Amazon.ini"/>
<include mask="BldInfo.ini"/>
<include mask="HSBGen.ini"/>
<include mask="*.hsb"/>
<include mask="*.id"/>
<include mask="*.env"/>
<include mask="*.mhe"/>
<include mask="*.msd"/>
<include mask="*.key"/>
<include mask="*.scd"/>
<include mask="*.uic"/>

</build>

```

8. Navigate to WZ\src\RSBuild\Sources
9. Open r3dFSBuilder.cpp with visual studio
10. Search for code below:

```cpp
DWORD r3dFSBuilder::DetectFileFlags(const char* fname)
{
  if(pattern_match(fname, "*.exe") || 
     pattern_match(fname, "*.dll") || 
                 pattern_match(fname, "DirectX.dll") || 
                 pattern_match(fname, "d3d11x.dll") || 
                 pattern_match(fname, "*.bmp") || 
     pattern_match(fname, "*.manifest") || 
     pattern_match(fname, "crashrpt*.ini"))
  {
    return r3dFS_FileEntry::FLAG_EXTRACT;
  }
   
  return 0;
}

```

11. Replace the whole code block with code below.

```cpp
DWORD r3dFSBuilder::DetectFileFlags(const char* fname)
{
  if(pattern_match(fname, "*.exe") || 
     pattern_match(fname, "*.dll") || 
     pattern_match(fname, "DirectX.dll") || 
     pattern_match(fname, "d3d11x.dll") || 
     pattern_match(fname, "*.bmp") || 
     pattern_match(fname, "*.manifest") || 
     pattern_match(fname, "crashrpt*.ini") ||
     pattern_match(fname, "*.ui") ||
     pattern_match(fname, "*.aht") ||
     pattern_match(fname, "*.ahc") ||
     pattern_match(fname, "*.hsb") ||
     pattern_match(fname, "*.id") ||
     pattern_match(fname, "*.env") ||
     pattern_match(fname, "*.mhe") ||
     pattern_match(fname, "*.msd") ||
     pattern_match(fname, "*.key") ||
     pattern_match(fname, "*.scd") ||
     pattern_match(fname, "*.uic") ||
     pattern_match(fname, "ahnrpt.ini") ||
     pattern_match(fname, "bldinfo.ini") ||
     pattern_match(fname, "Amazon.ini") ||
     pattern_match(fname, "BldInfo.ini") ||
     pattern_match(fname, "HSBGen.ini")
     )
  {
    return r3dFS_FileEntry::FLAG_EXTRACT;
  }
    
  return 0;
}
```

12. Save changes and close the file.