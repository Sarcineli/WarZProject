#include "r3dPCH.h"
#include "r3d.h"

bool	UPDATER_UPDATER_ENABLED  = 1;
char	UPDATER_VERSION[512]     = "0.0.0";
char	UPDATER_VERSION_SUFFIX[512] = "";
char	UPDATER_BUILD[512]	 = __DATE__ " " __TIME__;

char	BASE_RESOURSE_NAME[512]  = "WZ";
char	GAME_EXE_NAME[512]       = "Infestation.exe";
char	GAME_TITLE[512]          = "Infestation: Survivor Stories";

// updater (xml and exe) and game info on our server.
char	UPDATE_DATA_URL[512]     = "https://192.168.21.100/wz/data/wz.xml";	// url for data update
char	UPDATE_UPDATER_URL[512]  = "https://192.168.21.100/wz/updater/wzupd.xml";

// HIGHWIND CDN
char	UPDATE_UPDATER_HOST[512] = "http://192.168.21.100/wz/updater/";

//Frage: EULA and TOS nulled
char	EULA_URL[512]            = "";
char	TOS_URL[512]             = "";
char	GETSERVERINFO_URL[512]   = "https://192.168.21.100/wz/api_getserverinfo.xml";

bool	UPDATER_STEAM_ENABLED	 = false;
