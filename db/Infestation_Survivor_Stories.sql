/*
Navicat SQL Server Data Transfer

Source Server         : wz_api_user
Source Server Version : 105000
Source Host           : 127.0.0.1,1444:1433
Source Database       : WarZ
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2014-12-26 20:01:21
*/

-- ----------------------------
-- Table structure for [dbo].[AccountIpWhitelist]
-- ----------------------------
DROP TABLE [dbo].[AccountIpWhitelist]
GO
CREATE TABLE [dbo].[AccountIpWhitelist] (
[CustomerID] int NOT NULL ,
[DateAdded] datetime NULL ,
[IP] varchar(32) NULL ,
[Country] nchar(10) NULL 
)


GO

-- ----------------------------
-- Records of AccountIpWhitelist
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[AccountLocks]
-- ----------------------------
DROP TABLE [dbo].[AccountLocks]
GO
CREATE TABLE [dbo].[AccountLocks] (
[RecordID] int NOT NULL IDENTITY(1,1),
[LockTime] datetime NULL ,
[CustomerID] int NULL ,
[PrevIP] varchar(32) NULL ,
[PrevCountry] varchar(32) NULL ,
[IP] varchar(32) NULL ,
[Country] varchar(32) NULL ,
[Token] varchar(32) NULL ,
[IsUnlocked] int NULL ,
[UnlockTime] datetime NULL 
)


GO

-- ----------------------------
-- Records of AccountLocks
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[AccountPwdReplace]
-- ----------------------------
DROP TABLE [dbo].[AccountPwdReplace]
GO
CREATE TABLE [dbo].[AccountPwdReplace] (
[RecordID] int NOT NULL ,
[RequestTime] datetime NULL ,
[IP] varchar(64) NULL ,
[SerialKey] varchar(64) NULL ,
[PurchaseEmail] varchar(128) NULL ,
[IsCompleted] int NULL ,
[CustomerID] int NULL 
)


GO

-- ----------------------------
-- Records of AccountPwdReplace
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[AccountPwdReset]
-- ----------------------------
DROP TABLE [dbo].[AccountPwdReset]
GO
CREATE TABLE [dbo].[AccountPwdReset] (
[RequestID] int NOT NULL ,
[RequestTime] datetime NOT NULL ,
[IP] varchar(64) NOT NULL ,
[token] varchar(32) NOT NULL ,
[CustomerID] int NOT NULL ,
[email] varchar(128) NOT NULL ,
[IsCompleted] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of AccountPwdReset
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Accounts]
-- ----------------------------
DROP TABLE [dbo].[Accounts]
GO
CREATE TABLE [dbo].[Accounts] (
[CustomerID] int NOT NULL IDENTITY(1000000,1) ,
[email] varchar(128) NOT NULL ,
[MD5Password] varchar(32) NULL ,
[dateregistered] datetime NULL ,
[ReferralID] int NOT NULL ,
[AccountStatus] int NOT NULL DEFAULT ((100)) ,
[IsDeveloper] int NOT NULL DEFAULT ((0)) ,
[lastlogindate] datetime NULL ,
[lastloginIP] varchar(16) NULL ,
[SteamUserID] bigint NOT NULL DEFAULT ((0)) ,
[BadLoginTime] datetime NOT NULL DEFAULT ('2000-1-1') ,
[BadLoginIP] varchar(32) NULL ,
[BadLoginCount] int NOT NULL DEFAULT ((0)) ,
[LastLoginCountry] varchar(16) NULL 
)


GO

-- ----------------------------
-- Records of Accounts
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Achievements]
-- ----------------------------
DROP TABLE [dbo].[Achievements]
GO
CREATE TABLE [dbo].[Achievements] (
[CustomerID] int NOT NULL ,
[AchID] int NOT NULL ,
[Value] int NOT NULL DEFAULT ((0)) ,
[Unlocked] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Achievements
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[CheatLog]
-- ----------------------------
DROP TABLE [dbo].[CheatLog]
GO
CREATE TABLE [dbo].[CheatLog] (
[ID] int NOT NULL IDENTITY(1,1) ,
[SessionID] bigint NOT NULL ,
[CustomerID] int NOT NULL ,
[CheatID] int NOT NULL ,
[ReportTime] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of CheatLog
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ClanApplications]
-- ----------------------------
DROP TABLE [dbo].[ClanApplications]
GO
CREATE TABLE [dbo].[ClanApplications] (
[ClanApplicationID] int NOT NULL IDENTITY(1,1) ,
[ClanID] int NOT NULL ,
[CharID] int NOT NULL ,
[ExpireTime] datetime NOT NULL ,
[ApplicationText] nvarchar(500) NOT NULL ,
[IsProcessed] int NOT NULL 
)


GO

-- ----------------------------
-- Records of ClanApplications
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ClanData]
-- ----------------------------
DROP TABLE [dbo].[ClanData]
GO
CREATE TABLE [dbo].[ClanData] (
[ClanID] int NOT NULL IDENTITY(1,1) ,
[ClanName] nvarchar(64) NOT NULL ,
[ClanNameColor] int NOT NULL ,
[ClanTag] nvarchar(4) NOT NULL ,
[ClanTagColor] int NOT NULL ,
[ClanEmblemID] int NOT NULL ,
[ClanEmblemColor] int NOT NULL ,
[ClanXP] int NOT NULL ,
[ClanLevel] int NOT NULL ,
[ClanGP] int NOT NULL ,
[OwnerCustomerID] int NOT NULL ,
[OwnerCharID] int NOT NULL ,
[MaxClanMembers] int NOT NULL ,
[NumClanMembers] int NOT NULL ,
[ClanLore] nvarchar(512) NULL ,
[Announcement] nvarchar(512) NULL ,
[ClanCreateDate] datetime NULL 
)


GO

-- ----------------------------
-- Records of ClanData
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ClanEvents]
-- ----------------------------
DROP TABLE [dbo].[ClanEvents]
GO
CREATE TABLE [dbo].[ClanEvents] (
[ClanEventID] int NOT NULL IDENTITY(1,1) ,
[ClanID] int NOT NULL ,
[EventDate] datetime NOT NULL ,
[EventType] int NOT NULL ,
[EventRank] int NOT NULL ,
[Var1] int NOT NULL DEFAULT ((0)) ,
[Var2] int NOT NULL DEFAULT ((0)) ,
[Var3] int NOT NULL DEFAULT ((0)) ,
[Var4] int NOT NULL DEFAULT ((0)) ,
[Text1] nvarchar(64) NULL ,
[Text2] nvarchar(64) NULL ,
[Text3] nvarchar(256) NULL 
)


GO

-- ----------------------------
-- Records of ClanEvents
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ClanInvites]
-- ----------------------------
DROP TABLE [dbo].[ClanInvites]
GO
CREATE TABLE [dbo].[ClanInvites] (
[ClanInviteID] int NOT NULL IDENTITY(1,1) ,
[ClanID] int NOT NULL ,
[InviterCharID] int NOT NULL ,
[CharID] int NOT NULL ,
[ExpireTime] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of ClanInvites
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DataGameRewards]
-- ----------------------------
DROP TABLE [dbo].[DataGameRewards]
GO
CREATE TABLE [dbo].[DataGameRewards] (
[ID] int NOT NULL IDENTITY(1,1),
[Name] nvarchar(128) NOT NULL DEFAULT '' ,
[GD_SOFT] int NOT NULL DEFAULT ((0)) ,
[XP_SOFT] int NOT NULL DEFAULT ((0)) ,
[GD_HARD] int NOT NULL DEFAULT ((0)) ,
[XP_HARD] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of DataGameRewards
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DataGPConvertRates]
-- ----------------------------
DROP TABLE [dbo].[DataGPConvertRates]
GO
CREATE TABLE [dbo].[DataGPConvertRates] (
[RecordID] int NOT NULL,
[GamePoints] int NULL ,
[ConversionRate] int NULL 
)


GO

-- ----------------------------
-- Records of DataGPConvertRates
-- ----------------------------
INSERT INTO [dbo].[DataGPConvertRates] VALUES (N'1', N'3001', N'8');
GO

-- ----------------------------
-- Table structure for [dbo].[DataSkillPrice]
-- ----------------------------
DROP TABLE [dbo].[DataSkillPrice]
GO
CREATE TABLE [dbo].[DataSkillPrice] (
[SkillID] int NOT NULL ,
[SkillName] varchar(64) NULL ,
[Lv1] int NULL ,
[Lv2] int NULL ,
[Lv3] int NULL ,
[Lv4] int NULL ,
[Lv5] int NULL 
)


GO

-- ----------------------------
-- Records of DataSkillPrice
-- ----------------------------
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'0', N'Skill 0', N'100', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'1', N'Skill 1', N'500', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'2', N'Skill 2', N'700', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'3', N'Skill 3', N'1000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'4', N'Skill 4', N'2000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'5', N'Skill 5', N'3000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'6', N'Skill 6', N'4000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'7', N'Skill 7', N'5000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'8', N'Skill 8', N'100', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'9', N'Skill 9', N'500', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'10', N'Skill 10', N'1000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'11', N'Skill 11', N'2000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'12', N'Skill 12', N'3000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'13', N'Skill 13', N'4000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'14', N'Skill 14', N'5000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'15', N'Skill 15', N'0', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'16', N'Skill 16', N'0', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'17', N'Skill 17', N'0', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'18', N'Skill 18', N'0', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'19', N'Skill 19', N'100', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'20', N'Skill 20', N'300', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'21', N'Skill 21', N'500', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'22', N'Skill 22', N'600', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'23', N'Skill 23', N'800', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'24', N'Skill 24', N'1000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'25', N'Skill 25', N'3000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'26', N'Skill 26', N'5000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'27', N'Skill 27', N'7000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'28', N'Skill 28', N'10000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'29', N'Skill 29', N'15000', N'20', N'30', N'40', N'50');
GO
INSERT INTO [dbo].[DataSkillPrice] VALUES (N'30', N'Skill 30', N'20000', N'20', N'30', N'40', N'50');
GO

-- ----------------------------
-- Table structure for [dbo].[DBG_AccountsUpgrade]
-- ----------------------------
DROP TABLE [dbo].[DBG_AccountsUpgrade]
GO
CREATE TABLE [dbo].[DBG_AccountsUpgrade] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NULL ,
[PrevAccountType] int NULL ,
[AccountType] int NULL ,
[UpgradeTime] datetime NULL 
)


GO

-- ----------------------------
-- Records of DBG_AccountsUpgrade
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_AllItems]
-- ----------------------------
DROP TABLE [dbo].[DBG_AllItems]
GO
CREATE TABLE [dbo].[DBG_AllItems] (
[ItemID] int NOT NULL IDENTITY(1,1) ,
[FNAME] varchar(128) NULL ,
[Name] varchar(128) NULL 
)


GO

-- ----------------------------
-- Records of DBG_AllItems
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_ApiCalls]
-- ----------------------------
DROP TABLE [dbo].[DBG_ApiCalls]
GO
CREATE TABLE [dbo].[DBG_ApiCalls] (
[RecordID] bigint NOT NULL IDENTITY(1,1) ,
[RecordDate] datetime NULL ,
[Func] varchar(64) NULL ,
[IsError] int NULL ,
[CustomerID] int NULL ,
[CharID] int NULL ,
[Var1] bigint NULL ,
[Var2] bigint NULL ,
[Var3] bigint NULL ,
[Var4] bigint NULL ,
[Var5] bigint NULL ,
[Var6] bigint NULL 
)


GO

-- ----------------------------
-- Records of DBG_ApiCalls
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_BanLog]
-- ----------------------------
DROP TABLE [dbo].[DBG_BanLog]
GO
CREATE TABLE [dbo].[DBG_BanLog] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[BanTime] datetime NULL ,
[BanDuration] int NULL ,
[BanReason] nvarchar(512) NULL 
)


GO

-- ----------------------------
-- Records of DBG_BanLog
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_CharRenames]
-- ----------------------------
DROP TABLE [dbo].[DBG_CharRenames]
GO
CREATE TABLE [dbo].[DBG_CharRenames] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[RenameTime] datetime NULL ,
[CustomerID] int NULL ,
[CharID] int NULL ,
[OldGamertag] nvarchar(64) NULL ,
[NewGamertag] nvarchar(64) NULL 
)


GO

-- ----------------------------
-- Records of DBG_CharRenames
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_DeletedServersList]
-- ----------------------------
DROP TABLE [dbo].[DBG_DeletedServersList]
GO
CREATE TABLE [dbo].[DBG_DeletedServersList] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[GameServerID] int NOT NULL ,
[OwnerCustomerID] int NULL ,
[PriceGP] int NULL ,
[CreateTimeUtc] datetime NULL ,
[AdminKey] int NULL ,
[ServerRegion] int NULL ,
[ServerType] int NULL ,
[ServerFlags] int NULL ,
[ServerMap] int NULL ,
[ServerSlots] int NULL ,
[ServerName] nvarchar(64) NULL ,
[ServerPwd] nvarchar(16) NULL ,
[ReservedSlots] int NULL ,
[RentHours] int NULL ,
[WorkHours] int NULL ,
[LastUpdated] datetime NULL ,
[GameTimeLimit] int NULL ,
[NumRents] int NULL 
)


GO

-- ----------------------------
-- Records of DBG_DeletedServersList
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_GDLog]
-- ----------------------------
DROP TABLE [dbo].[DBG_GDLog]
GO
CREATE TABLE [dbo].[DBG_GDLog] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[RecordTime] datetime NULL ,
[CustomerID] int NULL ,
[CharID] int NULL ,
[GameDollars] int NULL 
)


GO

-- ----------------------------
-- Records of DBG_GDLog
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_GPTransactions]
-- ----------------------------
DROP TABLE [dbo].[DBG_GPTransactions]
GO
CREATE TABLE [dbo].[DBG_GPTransactions] (
[TransactionID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NULL ,
[TransactionTime] datetime NULL ,
[Amount] int NULL ,
[Reason] nvarchar(512) NULL ,
[Previous] int NULL ,
[TransactionDesc] nvarchar(512) NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Records of DBG_GPTransactions
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_HWInfo]
-- ----------------------------
DROP TABLE [dbo].[DBG_HWInfo]
GO
CREATE TABLE [dbo].[DBG_HWInfo] (
[CustomerID] int NOT NULL DEFAULT ((0)) ,
[ReportDate] datetime NOT NULL DEFAULT (((2000)-(1))-(1)) ,
[CPUName] varchar(32) NOT NULL DEFAULT '' ,
[CPUBrand] varchar(64) NOT NULL DEFAULT '' ,
[CPUFreq] int NOT NULL DEFAULT ((0)) ,
[TotalMemory] int NOT NULL DEFAULT ((0)) ,
[DisplayW] int NOT NULL DEFAULT ((0)) ,
[DisplayH] int NOT NULL DEFAULT ((0)) ,
[gfxErrors] int NOT NULL DEFAULT ((0)) ,
[gfxVendorId] int NOT NULL DEFAULT ((0)) ,
[gfxDeviceId] int NOT NULL DEFAULT ((0)) ,
[gfxD3DVersion] int NOT NULL DEFAULT ((0)) ,
[gfxDescription] varchar(128) NOT NULL DEFAULT '' ,
[OSVersion] varchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Records of DBG_HWInfo
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_IISApiStats]
-- ----------------------------
DROP TABLE [dbo].[DBG_IISApiStats]
GO
CREATE TABLE [dbo].[DBG_IISApiStats] (
[API] varchar(128) NOT NULL ,
[Hits] bigint NOT NULL ,
[BytesIn] bigint NOT NULL ,
[BytesOut] bigint NOT NULL 
)


GO

-- ----------------------------
-- Records of DBG_IISApiStats
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_LevelUpEvents]
-- ----------------------------
DROP TABLE [dbo].[DBG_LevelUpEvents]
GO
CREATE TABLE [dbo].[DBG_LevelUpEvents] (
[CustomerID] int NULL ,
[LevelGained] int NULL ,
[ReportTime] datetime NULL ,
[SessionID] bigint NOT NULL 
)


GO

-- ----------------------------
-- Records of DBG_LevelUpEvents
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_LootRewards]
-- ----------------------------
DROP TABLE [dbo].[DBG_LootRewards]
GO
CREATE TABLE [dbo].[DBG_LootRewards] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[ReportTime] datetime NOT NULL ,
[CustomerID] int NOT NULL ,
[Roll] float(53) NOT NULL ,
[LootID] float(53) NOT NULL ,
[ItemID] int NOT NULL ,
[ExpDays] int NOT NULL ,
[GD] int NOT NULL 
)


GO

-- ----------------------------
-- Records of DBG_LootRewards
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_PasswordResets]
-- ----------------------------
DROP TABLE [dbo].[DBG_PasswordResets]
GO
CREATE TABLE [dbo].[DBG_PasswordResets] (
[ResetID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NULL ,
[ResetDate] datetime NULL ,
[NewPassword] varchar(200) NULL 
)


GO

-- ----------------------------
-- Records of DBG_PasswordResets
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_SrvLogInfo]
-- ----------------------------
DROP TABLE [dbo].[DBG_SrvLogInfo]
GO
CREATE TABLE [dbo].[DBG_SrvLogInfo] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[ReportTime] datetime NULL ,
[IsProcessed] int NULL ,
[CustomerID] int NULL ,
[CharID] int NULL DEFAULT ((0)) ,
[CustomerIP] varchar(64) NULL ,
[GameSessionID] bigint NULL ,
[CheatID] int NULL ,
[RepeatCount] int NULL ,
[Gamertag] nvarchar(64) NULL DEFAULT '' ,
[Msg] varchar(512) NULL ,
[Data] varchar(4096) NULL 
)


GO

-- ----------------------------
-- Records of DBG_SrvLogInfo
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_UserRoundResults]
-- ----------------------------
DROP TABLE [dbo].[DBG_UserRoundResults]
GO
CREATE TABLE [dbo].[DBG_UserRoundResults] (
[IP] varchar(32) NOT NULL ,
[GameSessionID] bigint NOT NULL DEFAULT ((0)) ,
[CustomerID] int NOT NULL DEFAULT ((0)) ,
[GamePoints] int NOT NULL DEFAULT ((0)) ,
[HonorPoints] int NOT NULL DEFAULT ((0)) ,
[SkillPoints] int NOT NULL DEFAULT ((0)) ,
[Kills] int NOT NULL DEFAULT ((0)) ,
[Deaths] int NOT NULL DEFAULT ((0)) ,
[ShotsFired] int NOT NULL DEFAULT ((0)) ,
[ShotsHits] int NOT NULL ,
[Headshots] int NOT NULL DEFAULT ((0)) ,
[AssistKills] int NOT NULL DEFAULT ((0)) ,
[Wins] int NOT NULL DEFAULT ((0)) ,
[Losses] int NOT NULL DEFAULT ((0)) ,
[CaptureNeutralPoints] int NOT NULL DEFAULT ((0)) ,
[CaptureEnemyPoints] int NOT NULL DEFAULT ((0)) ,
[TimePlayed] int NOT NULL DEFAULT ((0)) ,
[GameReportTime] datetime NOT NULL DEFAULT (((1)/(1))/(1970)) ,
[GameDollars] int NOT NULL DEFAULT ((0)) ,
[TeamID] int NOT NULL DEFAULT ((2)) ,
[MapID] int NOT NULL DEFAULT ((255)) ,
[MapType] int NULL 
)


GO

-- ----------------------------
-- Records of DBG_UserRoundResults
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DBG_WOAdminChanges]
-- ----------------------------
DROP TABLE [dbo].[DBG_WOAdminChanges]
GO
CREATE TABLE [dbo].[DBG_WOAdminChanges] (
[ChangeID] int NOT NULL IDENTITY(1,1) ,
[ChangeTime] datetime NULL ,
[UserName] nvarchar(64) NULL ,
[Action] int NULL ,
[Field] varchar(512) NULL ,
[RecordID] int NULL ,
[OldValue] varchar(2048) NULL ,
[NewValue] varchar(2048) NULL 
)


GO

-- ----------------------------
-- Records of DBG_WOAdminChanges
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[FinancialTransactions]
-- ----------------------------
DROP TABLE [dbo].[FinancialTransactions]
GO
CREATE TABLE [dbo].[FinancialTransactions] (
[CustomerID] int NOT NULL ,
[TransactionID] varchar(64) NOT NULL ,
[TransactionType] int NOT NULL ,
[DateTime] datetime NOT NULL ,
[Amount] float(53) NOT NULL ,
[ResponseCode] varchar(64) NOT NULL ,
[AprovalCode] varchar(16) NOT NULL ,
[ItemID] varchar(32) NOT NULL 
)


GO

-- ----------------------------
-- Records of FinancialTransactions
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[FriendsMap]
-- ----------------------------
DROP TABLE [dbo].[FriendsMap]
GO
CREATE TABLE [dbo].[FriendsMap] (
[CustomerID] int NULL ,
[FriendID] int NULL ,
[FriendStatus] int NULL ,
[DateAdded] datetime NULL 
)


GO

-- ----------------------------
-- Records of FriendsMap
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Items_Attachments]
-- ----------------------------
DROP TABLE [dbo].[Items_Attachments]
GO
CREATE TABLE [dbo].[Items_Attachments] (
[ItemID] int NOT NULL ,
[FNAME] varchar(32) NOT NULL ,
[Type] int NOT NULL ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[Description] nvarchar(256) NOT NULL DEFAULT '' ,
[MuzzleParticle] varchar(64) NOT NULL ,
[FireSound] varchar(256) NOT NULL ,
[Damage] float(53) NOT NULL ,
[Range] float(53) NOT NULL ,
[Firerate] float(53) NOT NULL ,
[Recoil] float(53) NOT NULL ,
[Spread] float(53) NOT NULL ,
[Clipsize] int NOT NULL ,
[ScopeMag] float(53) NOT NULL ,
[ScopeType] varchar(32) NOT NULL ,
[AnimPrefix] varchar(32) NOT NULL ,
[SpecID] int NOT NULL DEFAULT ((0)) ,
[Category] int NOT NULL DEFAULT ((19)) ,
[Price1] int NOT NULL DEFAULT ((0)) ,
[Price7] int NOT NULL DEFAULT ((0)) ,
[Price30] int NOT NULL DEFAULT ((0)) ,
[PriceP] int NOT NULL DEFAULT ((0)) ,
[GPrice1] int NOT NULL DEFAULT ((0)) ,
[GPrice7] int NOT NULL DEFAULT ((0)) ,
[GPrice30] int NOT NULL DEFAULT ((0)) ,
[GPriceP] int NOT NULL DEFAULT ((0)) ,
[IsNew] int NOT NULL DEFAULT ((0)) ,
[LevelRequired] int NOT NULL DEFAULT ((0)) ,
[Weight] int NOT NULL DEFAULT ((0)) ,
[DurabilityUse] float(53) NOT NULL DEFAULT ((0)) ,
[RepairAmount] float(53) NOT NULL DEFAULT ((0)) ,
[PremRepairAmount] float(53) NOT NULL DEFAULT ((0)) ,
[RepairPriceGD] float(53) NOT NULL DEFAULT ((0)) ,
[ResWood] int NOT NULL DEFAULT ((0)) ,
[ResStone] int NOT NULL DEFAULT ((0)) ,
[ResMetal] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Items_Attachments
-- ----------------------------
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400000', N'ATTM_Grip_01', N'3', N'Forward Grip', N'The bottom rail grip will allow the shooter more control of the weapon by use of the attached grip.', N'', N'', N'0', N'0', N'0', N'0', N'-5', N'0', N'0', N'', N'Grip', N'1001', N'19', N'0', N'0', N'0', N'65', N'0', N'0', N'0', N'0', N'0', N'9', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400001', N'ATTM_Mag_AK74_30_01', N'4', N'5.45 AK 30', N'This is a standard 5.45x39mm 30 rounds clip for the russian AK 74M family of rifles', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'4200', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'8500', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400003', N'ATTM_Optic_Acog_01', N'1', N'ACOG', N'The Acog is a rail mounted telescopic sight used to extend a shooters accuracy on medium to long range shots.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'50', N'acog_fps', N'ASR_Scar', N'5001', N'19', N'0', N'0', N'0', N'195', N'0', N'0', N'0', N'0', N'0', N'20', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400004', N'ATTM_Side_Laser_01', N'2', N'Rifle Laser', N'The Laser attachment mounts onto the side of a weapon and allows the shooter to mark the target with the laser.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'3001', N'19', N'0', N'0', N'0', N'65', N'0', N'0', N'0', N'0', N'0', N'18', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400005', N'ATTM_Optic_Eotech_01', N'1', N'Holographic', N'The Holosight is a rail mounted holographic sight used to extend a shooters accuracy at close and medium ranges.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'35', N'eotech_fps', N'ASR_Scar', N'5001', N'19', N'0', N'0', N'0', N'155', N'0', N'0', N'0', N'0', N'0', N'15', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400006', N'ATTM_Optic_Iron_Scar', N'1', N'SCAR IS', N'This is the improved flip up iron sight system for the Scar assault rifle. It attachess onto the upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'ASR_Scar', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400007', N'ATTM_Optic_Kobra_01', N'1', N'Kobra', N'The Kobra is a rail mounted red dot sight used to extend a shooters accuracy at close and medium range targets.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'20', N'kobra_red_dot_fps', N'ASR_Scar', N'5001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'10500', N'0', N'5', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400008', N'ATTM_Optic_Scope6x_01', N'1', N'Tactical Sniper Scope', N'8x rail mounted scope designed to be used used atmedium ranges.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'90', N'psg1', N'', N'6001', N'19', N'0', N'0', N'0', N'275', N'0', N'0', N'0', N'0', N'0', N'0', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400009', N'ATTM_Grip_Mp7_01', N'3', N'SMG Grip', N'The M 7 grip provides a shooter with more control and accuracy when firing a weapon at a high rate of fire.', N'', N'', N'0', N'0', N'0', N'0', N'-5', N'0', N'0', N'', N'Grip', N'1002', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1500', N'0', N'21', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400010', N'ATTM_Mag_M4_60rnd_01', N'4', N'STANAG 60', N'Large 60 round clip of 5.45x45mm NATO rounds for use with the M4 and M16', N'', N'', N'0', N'0', N'0', N'0', N'10', N'60', N'0', N'', N'', N'4001', N'19', N'0', N'0', N'0', N'180', N'0', N'0', N'0', N'0', N'0', N'25', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400012', N'ATTM_Muzzle_FlashHider_01', N'0', N'Flash Hider', N'The Muzzle FlashHider will lower the visual flash of a weapon when fired at normal or rapid speeds.', N'muzzle_asr_noflash', N'', N'0', N'-5', N'0', N'0', N'0', N'0', N'0', N'', N'', N'2001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'4500', N'0', N'15', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400013', N'ATTM_Muzzle_Silencer_01', N'0', N'Silencer ', N'The Silencer will lower the sound of a weapons discharge when fired at normal or rapid speeds.', N'muzzle_asr_noflash', N'Sounds/NewWeapons/SMG/HK_MP5SD', N'-20', N'-10', N'0', N'0', N'0', N'0', N'0', N'', N'', N'2001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'293', N'0', N'21', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400015', N'ATTM_Mag_M4_40rnd_01', N'4', N'STANAG 45', N'Medium 45 round clip of 5.45x45mm NATO rounds for use with the M4 and M16 Assault Rifles', N'', N'', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'', N'', N'4001', N'19', N'0', N'0', N'0', N'145', N'0', N'0', N'0', N'0', N'0', N'15', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400016', N'ATTM_Mag_M4_30rnd_01', N'4', N'STANAG 30', N'Standard 30 round clip of 5.45x45mm NATO rounds for use with the M4 and M16 Assault Rifles', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'4001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400017', N'ATTM_Mag_C-Mag_01', N'4', N'STANAG C-Mag', N'Maximum size100 round drum of 5.45x45mm NATO rounds for use with the M4 and M16 Assault Rifles', N'', N'', N'0', N'0', N'0', N'0', N'20', N'100', N'0', N'', N'', N'4001', N'19', N'0', N'0', N'0', N'210', N'0', N'0', N'0', N'0', N'0', N'35', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400018', N'ATTM_Side_Flashlight_01', N'2', N'Rifle Flashlight', N'The Flashlight can be used to light dark areas and temporarily blind a shooters opponent.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'3001', N'19', N'0', N'0', N'0', N'65', N'0', N'0', N'0', N'0', N'0', N'14', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400019', N'ATTM_Optic_SwissCompact_01', N'1', N'Compact Scope', N'The Swiss Compact Sight is a rail mounted scope used to extend a shooters accuracy at close and medium ranges.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'60', N'aw50', N'', N'5001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'40', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400020', N'ATTM_Optic_SwissRedDot_01', N'1', N'Red Dot SP', N'The Swiss Red Dot Sight is a rail mounted sight used to extend a shooters accuracy at close and medium range targets', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'35', N'swiss_red_dot_fps', N'ASR_Scar', N'5001', N'19', N'0', N'0', N'0', N'235', N'0', N'0', N'0', N'0', N'0', N'30', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400021', N'ATTM_Pistol_Laser_01', N'2', N'Pistol laser', N'The Pistol Laser is mounted on the left side of a handgun and used to target the enemy with a laser light.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'3002', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'4500', N'0', N'18', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400022', N'ATTM_Pistol_flashlight_WL1', N'2', N'Pistol Flashlight', N'The Pistol Flashlight can be used to light dark areas and temporarily blind a shooters opponent.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'3002', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'4500', N'0', N'14', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400023', N'ATTM_Optic_Reflex_01', N'1', N'Reflex Sight', N'The Reflex Sight is a rail mounted scope used to extend a shooters accuracy at medium and long ranges.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'20', N'reflex_fps', N'ASR_Scar', N'5001', N'19', N'0', N'0', N'0', N'140', N'0', N'0', N'0', N'0', N'0', N'5', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400024', N'ATTM_Optic_Iron_M4FFH', N'1', N'M4 IS', N'This is the improved flip up iron sight system for the M4 Blackwater. It attachess onto the upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'ASR_Scar', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400025', N'ATTM_Optic_Iron_SG556', N'1', N'SIG 556 IS', N'This is the improved flip up iron sight system for the SG 555. It attachess onto the upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'ASR_Scar', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400026', N'ATTM_Optic_Iron_Mp7', N'1', N'MP7 IS', N'This is the improved flip up iron sight system for the Mp 7. It attachess onto the upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'ASR_Scar', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400027', N'ATTM_Optic_PSO1_01', N'1', N'PSO-1', N'The PSO1 is a rail mounted telescopic sight used to extend a shooters accuracy on medium to long range shots.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'70', N'pso1', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400029', N'ATTM_Mag_SG556_30rnd_01', N'4', N'G36 ammo', N'This is a 30 round magazine of 5.56x45mm specially designed for the G36 Assault Rifle', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'4100', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400030', N'ATTM_MAG_Vintorez_20', N'4', N'VSS-20', N'"Specially designed high power 9x39mm low velocity, high penetration subsonic round for VSS Vintorez sniper rifle. Extended 20 rounds magazine."', N'', N'', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'', N'', N'4002', N'19', N'0', N'0', N'0', N'120', N'0', N'0', N'0', N'0', N'0', N'40', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400031', N'ATTM_MAG_Vintorez_10', N'4', N'VSS-10', N'"Specially designed high power 9x39mm low velocity, high penetration subsonic round for VSS Vintorez sniper rifle. Standard 10 rounds magazine."', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'4002', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400032', N'ATTM_Mag_Mp7_60rnd_01', N'4', N'MP7 40', N'HK 4.6&times;30mm 40 rounds extended magazine for MP7 submachine gun.', N'', N'', N'0', N'0', N'0', N'0', N'10', N'40', N'0', N'', N'', N'4003', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'25000', N'0', N'25', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400033', N'ATTM_Mag_Mp7_30rnd_01', N'4', N'MP7 30', N'HK 4.6&times;30mm 30 rounds magazine for MP7 submachine gun.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'4003', N'19', N'0', N'0', N'0', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400034', N'ATTM_Mag_SIGP226', N'4', N'9x19 Para Mag', N'18 rounds 9x19mm Parabellum magazine specially designed for Sig Sauer P226 handgun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'18', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400035', N'ATTM_Optic_Iron_M249', N'1', N'M249 IS', N'This is the improved flip up iron sight system for the M249 machine gun. It attachess onto the upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400036', N'ATTM_Optic_Iron_Keltech', N'1', N'KT IS', N'This is the improved flip up iron sight system for the Keltech shotgun that attaches on it''s upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400038', N'ATTM_Optic_BW_LongRange_01', N'1', N'Blackwater Long Range', N'The Blackwater Long Range scope is a 10x rail mounted scope designed to be used used  at long ranges.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'120', N'sv98', N'', N'6001', N'19', N'0', N'0', N'0', N'350', N'0', N'0', N'0', N'0', N'0', N'45', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400039', N'ATTM_Optic_MultiRail_01', N'1', N'Swiss Arms Scope 8x', N'The Swiss Arms multirail scope is a rail mounted scope used to extend a shooters accuracy at medium and long ranges.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'70', N's50hs', N'', N'6001', N'19', N'0', N'0', N'0', N'235', N'0', N'0', N'0', N'0', N'0', N'25', N'700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400040', N'ATTM_Optic_Iron_AK74M', N'1', N'Iron AK74M', N'This is the improved flip up iron sight system for the AK-74M n that attaches on it''s upper rail.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400042', N'ATTM_Optic_Iron_G36', N'1', N'Iron G36', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400043', N'ATTM_Mag_AW50_10rnd_01', N'4', N'AWM .338 Magnum ammo', N'8.6x70mm specialized rimless bottlenecked centerfire 10 rounds cartridge. Specifically designed for AWM rifle', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'110', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400046', N'ATTM_Mag_P90_50rnd_01', N'4', N'P90 50 rounds', N'P90 Compact Assault rifle rounds. 50 round clip', N'', N'', N'0', N'0', N'0', N'0', N'0', N'50', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'145', N'0', N'0', N'0', N'0', N'0', N'0', N'550', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400047', N'ATTM_Mag_Bizon_01', N'4', N'Bizon 64 ammo', N'Bizon sub machine gun clip. Clip contains 64 rounds of 9x18mm ammo', N'', N'', N'0', N'0', N'0', N'0', N'0', N'64', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'20000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400048', N'ATTM_Mag_SVD_10Rnd_01', N'4', N'SVD ammo', N'10 round magazine of 7.62x54mm ammo for the SVD (Dragunov Sniper Rifle)', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'4004', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400049', N'ATTM_Mag_scorpionevo3_01', N'4', N'CZ Scorpion EVO-3 ammo', N'30 rounds of 9x19mm ammo for the CZ Scorpion EVO-3 submachine gun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400050', N'ATTM_Mag_usas12_Drum_01', N'4', N'AA-12 Drum', N'12 gauge 20 rounds drum magazine for AA-12 shotgun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'120', N'0', N'0', N'0', N'0', N'0', N'0', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400051', N'ATTM_Optic_Iron_ScorpionEVO3', N'1', N'EVO-3 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400052', N'ATTM_Optic_Iron_Bizon', N'1', N'Bizon IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400053', N'ATTM_Optic_Iron_Usas12', N'1', N'USS-12 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400054', N'ATTM_Optic_Iron_P90', N'1', N'P90 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400055', N'ATTM_Optic_Iron_Pecheneg', N'1', N'Pecheneg IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400056', N'ATTM_Optic_Iron_PKM', N'1', N'PKM IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400058', N'ATTM_Optic_Iron_Sig516', N'1', N'SIG516 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400059', N'ATTM_Optic_Iron_tar21', N'1', N'TAR21 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400060', N'ATTM_Optic_Iron_RPK', N'1', N'RPK IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400061', N'ATTM_Optic_Iron_RPO', N'1', N'RPO IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400062', N'ATTM_Optic_Iron_An94', N'1', N'AN94 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400065', N'ATTM_Optic_Iron_SUP_AT4', N'1', N'AT4 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400066', N'ATTM_Optic_Iron_AacHoneyBadger', N'1', N'M4 IS2', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400069', N'ATTM_Mag_AN94_01', N'4', N'5.45 AK 45 ', N'This is a standard 5.45x39mm 45 rounds clip for the russian AK74 family of rifles', N'', N'', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'', N'', N'4200', N'19', N'0', N'0', N'0', N'145', N'0', N'0', N'0', N'0', N'0', N'15', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400070', N'ATTM_Mag_AW_01', N'4', N'.308 Winchester Sniper rifle amm', N'7.62x51mm NATO sniper rifle clip for use with the .308 Winchester Sniple Rifle. Magazine holds 10 rounds', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400071', N'ATTM_Mag_Jericho', N'4', N'9mm Mag', N'"15 rounds magazine of 9mm ammo for use with: B92, B93R and Jericho handguns"', N'', N'', N'0', N'0', N'0', N'0', N'0', N'13', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400073', N'ATTM_Mag_Saiga_01', N'4', N'Saiga 10 ammo', N'12 gauge 10 rounds magazine for SAIGA shotgun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'105', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400074', N'ATTM_Muzzle_AacHoneyBadger_01', N'0', N'standard muzzle', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400079', N'ATTM_Mag_MP5A4_01', N'4', N'MP5 10mm Mag', N'10mm Auto 30 rounds cartridge for MP5/10 submachine gun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400080', N'ATTM_Optic_Iron_Saiga', N'1', N'SAIGA IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400081', N'ATTM_Optic_Iron_MP5A4', N'1', N'XA5 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400082', N'ATTM_Optic_Iron_Mossberg590_01', N'1', N'M590 Is', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400083', N'ATTM_Optic_Iron_Sr-1_Veresk', N'1', N'Veresk IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400084', N'ATTM_Mag_Sr-1_Veresk_01', N'4', N'SMG-20 ammo', N'9x19mm Para 20 rounds magazine specially designed for Uzi and Veresk smg.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'', N'', N'4006', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'7500', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400085', N'ATTM_Mag_Sr-1_Veresk_02', N'4', N'SMG-40 ammo', N'9x19mm Para 40 rounds magazine specially designed for Uzi and Veresk smg.', N'', N'', N'0', N'0', N'0', N'0', N'-10', N'40', N'0', N'', N'', N'4006', N'19', N'0', N'0', N'0', N'100', N'0', N'0', N'0', N'0', N'0', N'20', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400086', N'ATTM_Mag_Desert_Eagle_01', N'4', N'Desert Eagle ammo', N'.50 Action Express 7 round magazine for Desert Eagle handgun.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'7', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400087', N'ATTM_Mag_FN57', N'4', N'5.7 FN M240 Mag', N'FN (M240) machine gun round magazine. 20 rounds of 5.7&times;28mm ammo', N'', N'', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400088', N'ATTM_Grip_Sr-1_Veresk_01', N'3', N'Modular Aluminum Combat Grip', N'', N'', N'', N'0', N'0', N'0', N'0', N'-5', N'0', N'0', N'', N'Grip', N'1003', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1500', N'0', N'21', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400099', N'ATTM_Mag_C-Mag_01', N'4', N'G36 C-Mag', N'"This is a 5.56x45mm, 100 round drum magazine specially designed for for the G36 Assault Rifle"', N'', N'', N'0', N'0', N'0', N'0', N'20', N'100', N'0', N'', N'', N'4100', N'19', N'0', N'0', N'0', N'210', N'0', N'0', N'0', N'0', N'0', N'35', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400100', N'ATTM_Mag_AK74_Drum_01', N'4', N'5.45 AK Drum', N'100 rounds drum for AK74 and RPK machine guns', N'', N'', N'0', N'0', N'0', N'0', N'20', N'100', N'0', N'', N'', N'4200', N'19', N'0', N'0', N'0', N'210', N'0', N'0', N'0', N'0', N'0', N'35', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400101', N'ATTM_Mag_RPK_01', N'4', N'7.62 AKM clip', N'AKM Assault Rifle magazine. 40 7.62x39mm rounds', N'', N'', N'0', N'0', N'0', N'0', N'10', N'40', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'25', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400119', N'ATTM_Optic_Iron_Mossada', N'1', N'MASADA IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400121', N'ATTM_Optic_Iron_Usas12', N'1', N'USS-12 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400127', N'ATTM_Optic_Iron_M16', N'1', N'M16 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400128', N'ATTM_Optic_Iron_AKM', N'1', N'AKM IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400129', N'ATTM_Optic_Iron_AKS74U', N'1', N'AKS IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400133', N'ATTM_Mag_M82', N'4', N'.50 BMG', N'12.7x99mm NATO anti material rounds for M107A1 rifle. 5 rounds per magazine', N'', N'', N'0', N'0', N'0', N'0', N'0', N'5', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'110', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400134', N'Attm_Optic_Iron_UZI', N'1', N'UZI IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400135', N'ATTM_Mag_Jericho', N'4', N'.45 ACP STI Eagle Elite ammo', N'.45 ACP 10 rounds magazine for the STI Eagle Elite handgun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'15000', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400136', N'ATTM_Mag_Shotgun_8x', N'4', N'12 Gauge Slug', N'8 slugs for use in the Mossberg and KT Decider shotguns', N'', N'', N'0', N'0', N'0', N'0', N'0', N'8', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400137', N'ATTM_Mag_Shotgun_2x', N'4', N'2x 12gauge ', N'Ammo for use with the double barrel shotgun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'2', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400139', N'ATTM_Mag_Arrow_Exp_01', N'4', N'Arrow Explosive', N'Explosive bolt (arrow) for the crossbow', N'', N'', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400140', N'ATTM_Mag_Arrow_Reg_01', N'4', N'Arrow', N'A sharp arrow for use with compound crossbows and other string drawn weapons', N'', N'', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'25', N'0', N'0', N'0', N'0', N'0', N'0', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400141', N'ATTM_Mag_Shotgun_2x', N'4', N'Shotgun shell 2x', N'2 Shells for use in the double barrel', N'', N'', N'0', N'0', N'0', N'0', N'0', N'2', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400142', N'ATTM_Mag_Shotgun_8x', N'4', N'Shotgun shell 8x', N'8 Shells for use in standard shotguns', N'', N'', N'0', N'0', N'0', N'0', N'0', N'8', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400143', N'ATTM_Mag_M249_Box_TPS_01', N'4', N'M249 Ammo Box', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'210', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400144', N'ATTM_Mag_Ruger', N'4', N'Clip for Ruger', N'10 round, 22 cal ammo clip for Ruger pistols and rifles', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400145', N'ATTM_Mag_Colt_Anaconda', N'4', N'Anaconda clip', N'6 rounds for the Anaconda', N'', N'', N'0', N'0', N'0', N'0', N'0', N'6', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400146', N'ATTM_Mag_RugerASR_Big', N'4', N'Large Kruger Rifle clip', N'30 round rotary loaded mag', N'', N'', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'', N'', N'7001', N'19', N'0', N'0', N'0', N'120', N'0', N'0', N'0', N'0', N'0', N'0', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400147', N'ATTM_Mag_RugerASR_Mid', N'4', N'Medium Kruger Rifle clip', N'20 round rotary loaded magazine', N'', N'', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'', N'', N'7001', N'19', N'0', N'0', N'0', N'95', N'0', N'0', N'0', N'0', N'0', N'0', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400148', N'ATTM_Mag_RugerASR_Small', N'4', N'Standard Kruger .22 Rifle Clip', N'Standard issue 10 round rotary loaded magazine.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'7001', N'19', N'0', N'0', N'0', N'65', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400149', N'ATTM_Optic_Iron_RugerASR', N'1', N'Kruger Rifle IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'7100', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400150', N'ATTM_Mag_Mini14', N'4', N'Kruger Mini-14 clip', N'Standard size clip for the Kruger Mini-14', N'', N'', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'7020', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400151', N'ATTM_Optic_Iron_Mini14', N'1', N'Kruger Mini-14 IS', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'default', N'', N'7200', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400152', N'ATTM_Mag_Flare', N'4', N'Flare clip', N'Ammo for the flare gun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400153', N'ATTM_Mag_Mosin', N'4', N'Standard Mosin Magazine', N'Standard internally fed 5 round magazine designed for use in the Mosin rifle', N'', N'', N'0', N'0', N'0', N'0', N'0', N'5', N'0', N'', N'', N'7030', N'19', N'0', N'0', N'0', N'55', N'0', N'0', N'0', N'0', N'0', N'0', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400154', N'ATTM_Mag_Colt_1911', N'4', N'.40 caliber 1911 Mag', N'7 round single-stack magazine for the 1911', N'', N'', N'0', N'0', N'0', N'0', N'0', N'7', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400155', N'ATTM_Optic_Iron_Mosin', N'1', N'Mozin IS', N'Iron sights for the Mozin rifle.', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'default', N'', N'5001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400156', N'ATTM_Muzzle_Silencer_02', N'0', N'Pistol Silencer', N'Lowers the sound of pistols being fired', N'muzzle_asr_noflash', N'Sounds/NewWeapons/SMG/HK_MP5SD', N'-20', N'-10', N'0', N'0', N'0', N'0', N'0', N'', N'', N'8001', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Attachments] VALUES (N'400157', N'Attm_Mag_Nailgun', N'4', N'Nail Strip', N'Connected strip of nails for use in the Nail Gun', N'', N'', N'0', N'0', N'0', N'0', N'0', N'35', N'0', N'', N'', N'0', N'19', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Items_Categories]
-- ----------------------------
DROP TABLE [dbo].[Items_Categories]
GO
CREATE TABLE [dbo].[Items_Categories] (
[CatID] int NOT NULL ,
[Name] varchar(64) NOT NULL 
)


GO

-- ----------------------------
-- Records of Items_Categories
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Items_Gear]
-- ----------------------------
DROP TABLE [dbo].[Items_Gear]
GO
CREATE TABLE [dbo].[Items_Gear] (
[ItemID] int NOT NULL ,
[FNAME] varchar(64) NOT NULL DEFAULT ('ITEM000') ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[Description] nvarchar(256) NOT NULL DEFAULT '' ,
[Category] int NOT NULL DEFAULT ((0)) ,
[Weight] int NOT NULL DEFAULT ((0)) ,
[DamagePerc] int NOT NULL DEFAULT ((0)) ,
[DamageMax] int NOT NULL DEFAULT ((0)) ,
[Bulkiness] int NOT NULL DEFAULT ((0)) ,
[Inaccuracy] int NOT NULL DEFAULT ((0)) ,
[Stealth] int NOT NULL DEFAULT ((0)) ,
[Price1] int NOT NULL DEFAULT ((0)) ,
[Price7] int NOT NULL DEFAULT ((0)) ,
[Price30] int NOT NULL DEFAULT ((0)) ,
[PriceP] int NOT NULL DEFAULT ((0)) ,
[IsNew] int NOT NULL DEFAULT ((0)) ,
[ProtectionLevel] int NOT NULL DEFAULT ((1)) ,
[LevelRequired] int NOT NULL DEFAULT ((0)) ,
[GPrice1] int NOT NULL DEFAULT ((0)) ,
[GPrice7] int NOT NULL DEFAULT ((0)) ,
[GPrice30] int NOT NULL DEFAULT ((0)) ,
[GPriceP] int NOT NULL DEFAULT ((0)) ,
[DurabilityUse] float(53) NOT NULL DEFAULT ((0)) ,
[RepairAmount] float(53) NOT NULL DEFAULT ((0)) ,
[PremRepairAmount] float(53) NOT NULL DEFAULT ((0)) ,
[RepairPriceGD] float(53) NOT NULL DEFAULT ((0)) ,
[ResWood] int NOT NULL DEFAULT ((0)) ,
[ResStone] int NOT NULL DEFAULT ((0)) ,
[ResMetal] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Items_Gear
-- ----------------------------
INSERT INTO [dbo].[Items_Gear] VALUES (N'20006', N'HEADHELMET', N'K. Style Helmet', N'The good ol'' Turtle Head is guaranteed to protect your brain. (Well, at least a little bit)\r\nLevel 2 Protection', N'13', N'1000', N'30', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'200', N'0', N'2', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20015', N'ARMOR_Rebel_Heavy', N'Custom Guerilla', N'Custom designed guerilla field gear and body armor that allows for decent protection under fast moving conditions. Level 2 Protection', N'11', N'4000', N'25', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'115', N'0', N'2', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20022', N'HGEAR_Beret', N'Beret Cover', N'This cover is a stylish military fashion statement which stands out smashingly in a combat zone!', N'13', N'300', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20023', N'HGEAR_Boonie', N'Boonie Cover', N'This Jungle Boonie cover is high speed, great for blending in and blocking out the sun and bugs but it won''t stop bullets.', N'13', N'200', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20025', N'HGEAR_Shadow', N'Shadow', N'This head gear was designed to not only make you look scary but also to protect your pretty face.', N'13', N'100', N'10', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20032', N'HGEAR_Mask_Black_01', N'Black Mask', N'The frightening Black Mask of Death, sure to give your enemies the chills.', N'13', N'100', N'10', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'1', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20033', N'HGEAR_Mask_Clown_01', N'Clown Mask', N'For all of you Jokers out there, we bring you the Clown Mask.', N'13', N'100', N'10', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'0', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20034', N'HGEAR_Mask_Hockey_01', N'Jason Mask', N'Hiding a monster, this mask strikes real horror in those who face it.', N'13', N'100', N'10', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'1', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20035', N'HGEAR_Mask_Skull_01', N'Skull Mask', N'The Skull Mask shows you know how to Grin and Bear it!', N'13', N'100', N'10', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'1', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20036', N'HGEAR_Mask_Slash_01', N'Slash Mask', N'While not just another pretty face, the Slash Mask is a cut above the rest! Get it and look the part of a killer.', N'13', N'100', N'10', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'1', N'40', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20041', N'HGEAR_Boonie_Hat_Desert', N'Boonie Desert', N'This boonie hat is great for desert ops, keeping you out of the sun and foiling those pesky bugs.', N'13', N'100', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20042', N'HGEAR_Boonie_Hat_MilGreen', N'Boonie Green', N'While not a bullet stopper this boonie hat will keep you cool and in camo in the wild places.', N'13', N'100', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20043', N'HGEAR_M9_Helmet_Black_01', N'M9 helmet black', N'The M9 helmet gives a good standard of head protection. This one in black.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'1', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20046', N'HGEAR_M9_Helmet_Desert_02', N'M9 Helmet with Goggles', N'The M9 helmet gives a good standard of head protection. This one with goggles.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'1', N'25', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20047', N'HGEAR_M9_Helmet_MilGreen_01', N'M9 Helmet Green', N'The M9 helmet gives a good standard of head protection. This one in green.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'1', N'25', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20048', N'HGEAR_M9_Helmet_Urban_01', N'M9 Helmet Urban', N'The M9 helmet gives a good standard of head protection. This one in Urban camo.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'30', N'0', N'0', N'0', N'5500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20049', N'HGEAR_M9_Helmet_forest_01', N'M9 Helmet Forest 1', N'The M9 helmet gives a good standard of head protection. This one in a special forest pattern.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'1', N'35', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20050', N'HGEAR_M9_Helmet_forest_02', N'M9 Helmet Goggles 1', N'The M9 helmet gives a good standard of head protection. This one with goggles.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'1', N'40', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20054', N'Armor_IBA_01_Sand', N'IBA Sand', N'Special IBA release gear in Sand toned pattern with Level 2 protection.', N'11', N'2000', N'20', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'95', N'0', N'2', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20056', N'Armor_MTV_01_Forest', N'MTV Forest', N'Limited edition MTV release Forest patterned gear with Level 2 protection.', N'11', N'3000', N'20', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'95', N'0', N'2', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20059', N'ARMOR_Light_Forest', N'Light Gear Forest', N'Light weight Level 1 protection in a Green Forest pattern.', N'11', N'2000', N'15', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'75', N'0', N'1', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20067', N'Hgear_KStyle_NVG_01', N'NVG Goggles', N'Standard K style helmet rigged with NVG set up for night ops.', N'13', N'1000', N'25', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'265', N'0', N'2', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20096', N'HGEAR_Boonie_hat_Leather_01', N'Boonie Hat Leather', N'This is the boonie hat that comes with a bit of sophistication. It is all leather, which is bound to be a hit, but it will not stop one!', N'13', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20097', N'HGEAR_Fireman_Helmet_01', N'Fireman Helmet', N'The traditional Firefighters helmet has been saving men for years. Give it a try if you want to be different in the battlezone.', N'13', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'55', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20098', N'HGEAR_HardHat_01', N'Hard Hat', N'The traditional construction hard hat is just the ticket for knocking around old buildings and showing your enemies that you are tough!', N'13', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20170', N'Zombie', N'Basic Zombie Character', N'', N'16', N'-1', N'0', N'0', N'5', N'5', N'5', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20171', N'UpperBody_Shirt_01', N'', N'', N'14', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20172', N'LowerBody_Jeans_01', N'', N'', N'14', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20173', N'Head_Bald_01', N'', N'', N'14', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20174', N'RegularGuy', N'Ex Military', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20175', N'gear_backpack_16slots', N'Medium Backpack', N'A medium sized backpack with plenty of space and durability.', N'12', N'0', N'0', N'0', N'18', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'4500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20176', N'Gear_Backpack_8slots', N'Small Backpack', N'A small backpack allowing some storage for essential items and equipment.', N'12', N'0', N'0', N'0', N'12', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20177', N'HGear_GasMask_01', N'Gas Mask', N'A mask put over your face to protect from inhaling airborn pollutants and toxic gasses', N'13', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20178', N'HGear_GasMask_02', N'Gas Mask 2', N'A mask put over your face to protect from inhaling airborn pollutants and toxic gasses', N'13', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'100', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20179', N'Gear_Backpack_Med_01', N'Large Backpack', N'24 item backpack. Big enough for a few weeks of adventuring', N'12', N'0', N'0', N'0', N'24', N'20', N'0', N'0', N'0', N'0', N'160', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20180', N'gear_backpack_32slots', N'Military Ruck', N'The mother of all backpacks. Carry 32 items at once!', N'12', N'0', N'0', N'0', N'32', N'30', N'0', N'0', N'0', N'0', N'250', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20181', N'gear_backpack_teddybear', N'Teddy Bear backpack', N'Roman''s favorite accessory', N'12', N'0', N'0', N'0', N'12', N'10', N'0', N'0', N'0', N'0', N'65', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20182', N'MohawkGuy', N'Ex cage fighter', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20183', N'Zombie_Woman', N'Zombie_Woman', N'', N'16', N'-1', N'0', N'0', N'5', N'5', N'5', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20184', N'AsianGirl', N'Hunter', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20185', N'Gear_Backpack_Med_01_black', N'ALICE Rucksack', N'Large backpack that fits everything you will need. The All-purpose Lightweight Individual Carrying Equipment.  Dont forget the poo tickets!', N'12', N'0', N'0', N'0', N'28', N'25', N'0', N'0', N'0', N'0', N'220', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20186', N'Zombie_man', N'Zombie man', N'', N'16', N'-1', N'0', N'0', N'5', N'5', N'5', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20187', N'HGEAR_NV_Mil_01', N'Night vision military', N'Otherwise known as NVD''s. These enhance light allowing the user to see in almost total darkness', N'13', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'270', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20188', N'HGEAR_NV_Civ_01', N'Night vision civilian', N'Night vision for everyone, these affordable goggles allow you to see at night while remaining hidden in the darkness', N'13', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'25400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20189', N'CharacterMale_01', N'Male Character', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20190', N'Zombie_Military', N'Zombie Military', N'', N'16', N'-1', N'0', N'0', N'5', N'5', N'5', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20191', N'Zombie_man_02', N'Zombie Man 2', N'', N'16', N'-1', N'0', N'0', N'5', N'5', N'5', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20192', N'HGear_Pumpkin_01', N'Halloween Special!', N'A unique mask to celebrate the eve of the hallows. Eat, Drink and be Scary! Wuhahahahaaa!', N'13', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20193', N'CharacterMale_02', N'Average Joe', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20194', N'CharacterFemale_01', N'CharacterFemale_01', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20195', N'CharacterFemale_02', N'CharacterFemale_02', N'', N'16', N'0', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20196', N'Gear_Backpack_GameSpot', N'Gear_Backpack_GameSpot', N'', N'12', N'0', N'0', N'0', N'20', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20197', N'HGear_Santa_Beard_01', N'Christmas Special', N'A yule tide treat', N'13', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20198', N'HGear_Xmas_Elf', N'Santa''s Lil Helper', N'Makin presents for all the good girls and boys!', N'13', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20199', N'HGear_Xmas_Snowman', N'Captain Jack Frost', N'With a corncob pipe and a button nose...', N'13', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20200', N'Gear_SantaBag_01', N'Santa''s Sack', N'With presents for everyone! Well, mostly zombies. And bandits.', N'12', N'0', N'0', N'0', N'28', N'25', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Gear] VALUES (N'20201', N'CharacterMale_Asian', N'Asian Male', N'', N'16', N'-1', N'0', N'0', N'4', N'4', N'4', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Items_Generic]
-- ----------------------------
DROP TABLE [dbo].[Items_Generic]
GO
CREATE TABLE [dbo].[Items_Generic] (
[ItemID] int NOT NULL ,
[FNAME] varchar(32) NOT NULL DEFAULT ('Item_Generic') ,
[Category] int NOT NULL ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[Description] nvarchar(512) NOT NULL DEFAULT '' ,
[Price1] int NOT NULL DEFAULT ((0)) ,
[Price7] int NOT NULL DEFAULT ((0)) ,
[Price30] int NOT NULL DEFAULT ((0)) ,
[PriceP] int NOT NULL DEFAULT ((0)) ,
[IsNew] int NOT NULL DEFAULT ((0)) ,
[LevelRequired] int NOT NULL DEFAULT ((0)) ,
[GPrice1] int NOT NULL DEFAULT ((0)) ,
[GPrice7] int NOT NULL DEFAULT ((0)) ,
[GPrice30] int NOT NULL DEFAULT ((0)) ,
[GPriceP] int NOT NULL DEFAULT ((0)) ,
[Weight] int NOT NULL DEFAULT ((0)) ,
[ResWood] int NOT NULL DEFAULT ((0)) ,
[ResStone] int NOT NULL DEFAULT ((0)) ,
[ResMetal] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Items_Generic
-- ----------------------------
INSERT INTO [dbo].[Items_Generic] VALUES (N'301152', N'Account_ClanUpg1', N'1', N'Clan Slots 1', N'', N'25', N'0', N'0', N'30', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301153', N'Account_ClanUpg2', N'1', N'Clan Slots 2', N'', N'25', N'0', N'0', N'50', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301154', N'Account_ClanUpg3', N'1', N'Clan Slots 3', N'', N'25', N'0', N'0', N'60', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301155', N'Account_ClanUpg4', N'1', N'Clan Slots 4', N'', N'25', N'0', N'0', N'70', N'0', N'0', N'0', N'0', N'0', N'40', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301156', N'Account_ClanUpg5', N'1', N'Clan Slots 5', N'', N'25', N'0', N'0', N'80', N'0', N'0', N'0', N'0', N'0', N'50', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301157', N'Account_ClanUpg6', N'1', N'Clan Slots 6', N'', N'25', N'0', N'0', N'90', N'0', N'0', N'0', N'0', N'0', N'60', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301159', N'Char_Revive', N'1', N'Revive Char', N'', N'0', N'0', N'0', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301257', N'Account_PremoumSubscribe', N'1', N'Premium Subscription', N'', N'0', N'0', N'0', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301399', N'Change_Name', N'1', N'Change Name', N'', N'0', N'0', N'0', N'50', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Generic] VALUES (N'301158', N'Lootbox', N'7', N'Lootbox', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Items_LootData]
-- ----------------------------
DROP TABLE [dbo].[Items_LootData]
GO
CREATE TABLE [dbo].[Items_LootData] (
[RecordID] int NOT NULL ,
[LootID] int NOT NULL ,
[Chance] float(53) NULL ,
[ItemID] int NULL ,
[GDMin] int NULL ,
[GDMax] int NULL 
)


GO

-- ----------------------------
-- Records of Items_LootData
-- ----------------------------
INSERT INTO [dbo].[Items_LootData] VALUES (N'3419', N'301158', N'110', N'101002', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3420', N'301158', N'110', N'101055', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3421', N'301158', N'100', N'101107', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3422', N'301158', N'100', N'101111', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3423', N'301158', N'100', N'101112', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3424', N'301158', N'100', N'101158', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3425', N'301158', N'100', N'101183', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3426', N'301158', N'100', N'101201', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3427', N'301158', N'100', N'20043', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3428', N'301158', N'100', N'20046', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3429', N'301158', N'100', N'20047', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3430', N'301158', N'100', N'20048', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3431', N'301158', N'100', N'20049', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3432', N'301158', N'100', N'20050', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3433', N'301158', N'100', N'20187', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3434', N'301158', N'100', N'20188', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3435', N'301158', N'100', N'101004', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3436', N'301158', N'110', N'101005', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3437', N'301158', N'100', N'101063', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3438', N'301158', N'100', N'101064', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3439', N'301158', N'100', N'101108', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3440', N'301158', N'100', N'101109', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3441', N'301158', N'100', N'101115', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3608', N'301158', N'50', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3609', N'301158', N'50', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3444', N'301158', N'100', N'101267', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3445', N'301158', N'100', N'101278', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3446', N'301158', N'100', N'101285', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3447', N'301158', N'100', N'101286', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3448', N'301158', N'100', N'101288', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3449', N'301158', N'100', N'101289', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3450', N'301158', N'100', N'101290', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3451', N'301158', N'100', N'101291', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3452', N'301158', N'100', N'101292', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3453', N'301158', N'100', N'101293', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3454', N'301158', N'100', N'101294', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3455', N'301158', N'100', N'101295', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3456', N'301158', N'100', N'101296', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3457', N'301158', N'100', N'101297', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3458', N'301158', N'100', N'101298', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3459', N'301158', N'100', N'101299', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3610', N'301158', N'50', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3461', N'301158', N'100', N'101302', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3462', N'301158', N'100', N'101307', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3463', N'301158', N'100', N'101309', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3464', N'301158', N'100', N'101313', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3465', N'301158', N'100', N'101314', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3466', N'301158', N'100', N'101315', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3467', N'301158', N'100', N'101316', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3468', N'301158', N'100', N'101321', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3469', N'301158', N'100', N'101322', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3470', N'301158', N'100', N'101330', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3471', N'301158', N'100', N'101332', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3472', N'301158', N'100', N'101332', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3473', N'301158', N'100', N'101340', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3474', N'301158', N'100', N'101341', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3475', N'301158', N'100', N'101343', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3476', N'301158', N'100', N'101344', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3477', N'301158', N'100', N'101345', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3478', N'301158', N'100', N'101346', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3479', N'301158', N'100', N'101381', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3480', N'301158', N'100', N'101382', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3481', N'301158', N'100', N'101383', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3482', N'301158', N'100', N'101384', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3483', N'301158', N'100', N'101385', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3484', N'301158', N'100', N'101386', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3485', N'301158', N'100', N'101388', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3486', N'301158', N'100', N'101390', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3487', N'301158', N'100', N'101391', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3488', N'301158', N'100', N'101392', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3489', N'301158', N'100', N'20023', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3490', N'301158', N'100', N'20025', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3491', N'301158', N'100', N'20032', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3492', N'301158', N'100', N'20033', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3493', N'301158', N'100', N'20034', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3494', N'301158', N'100', N'20035', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3495', N'301158', N'100', N'20036', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3496', N'301158', N'100', N'20041', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3497', N'301158', N'100', N'20042', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3498', N'301158', N'100', N'20096', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3499', N'301158', N'100', N'20098', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3500', N'301158', N'100', N'20181', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3501', N'301158', N'100', N'400016', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3502', N'301158', N'100', N'400034', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3503', N'301158', N'110', N'101022', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3504', N'301158', N'110', N'101032', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3505', N'301158', N'100', N'101060', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3506', N'301158', N'100', N'101106', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3507', N'301158', N'110', N'101173', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3508', N'301158', N'100', N'101308', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3509', N'301158', N'100', N'101319', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3510', N'301158', N'100', N'101324', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3511', N'301158', N'100', N'101389', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3512', N'301158', N'100', N'20185', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3513', N'301158', N'100', N'400000', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3514', N'301158', N'100', N'400001', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3515', N'301158', N'100', N'400029', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3516', N'301158', N'100', N'400032', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3517', N'301158', N'100', N'400033', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3518', N'301158', N'100', N'400046', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3519', N'301158', N'100', N'400047', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3520', N'301158', N'100', N'400048', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3521', N'301158', N'100', N'400049', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3522', N'301158', N'100', N'400050', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3523', N'301158', N'100', N'400069', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3524', N'301158', N'100', N'400079', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3525', N'301158', N'100', N'400084', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3526', N'301158', N'100', N'400085', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3527', N'301158', N'100', N'400086', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3528', N'301158', N'100', N'400087', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3529', N'301158', N'100', N'400101', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3530', N'301158', N'110', N'101172', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3531', N'301158', N'100', N'20022', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3532', N'301158', N'100', N'20097', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3533', N'301158', N'100', N'20175', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3534', N'301158', N'100', N'20178', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3535', N'301158', N'100', N'400071', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3526', N'301158', N'100', N'400073', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3527', N'301158', N'100', N'400136', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3529', N'301158', N'100', N'400140', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3530', N'301158', N'100', N'400141', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3532', N'301158', N'100', N'400143', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3533', N'301158', N'100', N'400144', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3534', N'301158', N'100', N'400145', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3535', N'301158', N'100', N'400146', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3536', N'301158', N'100', N'400147', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3537', N'301158', N'100', N'400148', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3538', N'301158', N'100', N'400150', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3539', N'301158', N'100', N'400153', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3540', N'301158', N'100', N'400154', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3541', N'301158', N'100', N'400157', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3542', N'301158', N'110', N'101035', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3543', N'301158', N'100', N'101093', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3544', N'301158', N'100', N'101095', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3545', N'301158', N'100', N'101120', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3546', N'301158', N'110', N'101169', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3547', N'301158', N'100', N'101180', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3548', N'301158', N'100', N'101197', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3549', N'301158', N'100', N'101200', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3550', N'301158', N'110', N'101210', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3551', N'301158', N'100', N'101246', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3552', N'301158', N'100', N'101284', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3553', N'301158', N'100', N'101310', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3554', N'301158', N'100', N'101318', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3555', N'301158', N'100', N'101336', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3556', N'301158', N'100', N'101337', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3557', N'301158', N'100', N'101338', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3558', N'301158', N'100', N'20054', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3559', N'301158', N'100', N'20056', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3560', N'301158', N'100', N'20067', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3561', N'301158', N'100', N'20180', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3562', N'301158', N'100', N'400003', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3563', N'301158', N'100', N'400004', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3564', N'301158', N'100', N'400005', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3565', N'301158', N'100', N'400007', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3566', N'301158', N'100', N'400008', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3567', N'301158', N'100', N'400009', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3568', N'301158', N'100', N'400012', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3569', N'301158', N'100', N'400013', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3570', N'301158', N'100', N'400017', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3571', N'301158', N'100', N'400018', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3572', N'301158', N'100', N'400019', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3573', N'301158', N'100', N'400020', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3574', N'301158', N'100', N'400021', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3575', N'301158', N'100', N'400022', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3576', N'301158', N'100', N'400023', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3577', N'301158', N'100', N'400030', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3578', N'301158', N'100', N'400031', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3579', N'301158', N'100', N'400038', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3580', N'301158', N'100', N'400039', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3581', N'301158', N'100', N'400043', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3582', N'301158', N'100', N'400088', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3583', N'301158', N'100', N'400099', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3584', N'301158', N'100', N'400100', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3585', N'301158', N'100', N'400133', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3586', N'301158', N'100', N'400156', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3587', N'301158', N'110', N'101040', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3588', N'301158', N'3', N'101068', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3589', N'301158', N'100', N'101098', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3590', N'301158', N'100', N'101103', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3591', N'301158', N'110', N'101193', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3611', N'301158', N'50', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3593', N'301158', N'100', N'101283', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3594', N'301158', N'100', N'101303', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3612', N'301158', N'50', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3596', N'301158', N'100', N'101331', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3596', N'301158', N'100', N'101339', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3597', N'301158', N'100', N'101347', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3598', N'301158', N'100', N'20179', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3599', N'301158', N'100', N'400010', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3600', N'301158', N'100', N'400015', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3601', N'301158', N'100', N'400070', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3602', N'301158', N'1', N'101084', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3603', N'301158', N'1', N'101085', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3604', N'301158', N'1', N'101087', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3605', N'301158', N'1', N'101088', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3606', N'301158', N'2', N'101217', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3607', N'301158', N'25', N'20006', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3613', N'301158', N'100', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3614', N'301158', N'100', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3615', N'301158', N'100', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3616', N'301158', N'100', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3617', N'301158', N'100', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3618', N'301158', N'100', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3619', N'301158', N'100', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3620', N'301158', N'100', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3621', N'301158', N'100', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3622', N'301158', N'100', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3623', N'301158', N'100', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3624', N'301158', N'100', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3625', N'301158', N'100', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3626', N'301158', N'100', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3627', N'301158', N'100', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3628', N'301158', N'100', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3629', N'301158', N'100', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3630', N'301158', N'100', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3631', N'301158', N'100', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3632', N'301158', N'100', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3633', N'301158', N'100', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3634', N'301158', N'100', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3635', N'301158', N'100', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3636', N'301158', N'100', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3637', N'301158', N'100', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3638', N'301158', N'100', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3639', N'301158', N'100', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3640', N'301158', N'100', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3641', N'301158', N'100', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3642', N'301158', N'100', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3643', N'301158', N'25', N'20015', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3644', N'301158', N'50', N'0', N'60', N'80');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3645', N'301158', N'30', N'0', N'70', N'100');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3646', N'301158', N'15', N'0', N'83', N'110');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3647', N'301158', N'5', N'0', N'90', N'350');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3648', N'301158', N'1', N'0', N'1000', N'1000');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3649', N'301158', N'20', N'101256', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3650', N'301158', N'25', N'101261', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3651', N'301158', N'15', N'101262', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3652', N'301158', N'25', N'101300', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3653', N'301158', N'10', N'101304', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3654', N'301158', N'3', N'101302', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3655', N'301158', N'2', N'101303', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3656', N'301158', N'100', N'101002', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3657', N'301158', N'100', N'101169', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3658', N'301158', N'100', N'101005', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3659', N'301158', N'100', N'101022', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3660', N'301158', N'100', N'101032', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3661', N'301158', N'100', N'101035', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3662', N'301158', N'100', N'101040', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3663', N'301158', N'100', N'101055', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3664', N'301158', N'100', N'101173', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3665', N'301158', N'100', N'101172', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3666', N'301158', N'100', N'101210', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3667', N'301158', N'100', N'101193', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3668', N'301158', N'100', N'101002', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3669', N'301158', N'100', N'101169', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3670', N'301158', N'100', N'101005', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3671', N'301158', N'100', N'101022', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3672', N'301158', N'100', N'101032', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3674', N'301158', N'100', N'101035', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3675', N'301158', N'100', N'101040', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3676', N'301158', N'100', N'101055', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3677', N'301158', N'100', N'101173', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3678', N'301158', N'100', N'101172', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3679', N'301158', N'100', N'101210', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3680', N'301158', N'100', N'101193', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3681', N'301158', N'100', N'20197', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3682', N'301158', N'100', N'20198', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3683', N'301158', N'100', N'20199', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3684', N'301158', N'100', N'20200', N'0', N'0');
GO
INSERT INTO [dbo].[Items_LootData] VALUES (N'3685', N'301158', N'100', N'101335', N'0', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Items_LootSrvModifiers]
-- ----------------------------
DROP TABLE [dbo].[Items_LootSrvModifiers]
GO
CREATE TABLE [dbo].[Items_LootSrvModifiers] (
[LootID] int NOT NULL ,
[SrvNormal] int NULL ,
[SrvTrial] int NULL ,
[SrvPremium] int NULL 
)


GO

-- ----------------------------
-- Records of Items_LootSrvModifiers
-- ----------------------------
INSERT INTO [dbo].[Items_LootSrvModifiers] VALUES (N'301158', N'100', N'100', N'200');
GO

-- ----------------------------
-- Table structure for [dbo].[Items_Weapons]
-- ----------------------------
DROP TABLE [dbo].[Items_Weapons]
GO
CREATE TABLE [dbo].[Items_Weapons] (
[ItemID] int NOT NULL ,
[FNAME] varchar(32) NOT NULL DEFAULT ('ITEM000') ,
[Category] int NOT NULL DEFAULT ((0)) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[Description] nvarchar(256) NOT NULL DEFAULT '' ,
[MuzzleOffset] varchar(32) NOT NULL DEFAULT ('0 0 0') ,
[MuzzleParticle] varchar(32) NOT NULL DEFAULT ('default') ,
[Animation] varchar(32) NOT NULL DEFAULT ('assault') ,
[BulletID] varchar(32) NOT NULL DEFAULT ((5.45)) ,
[Sound_Shot] varchar(255) NOT NULL DEFAULT ('Sounds/Weapons/AK74_7_62_Shot') ,
[Sound_Reload] varchar(255) NOT NULL DEFAULT ('Sounds/Weapons/AK74_Reload') ,
[Damage] float(53) NOT NULL DEFAULT ((20)) ,
[isImmediate] int NOT NULL DEFAULT ((1)) ,
[Mass] float(53) NOT NULL DEFAULT ((0.1)) ,
[Speed] float(53) NOT NULL DEFAULT ((300)) ,
[DamageDecay] float(53) NOT NULL DEFAULT ((0)) ,
[Area] float(53) NOT NULL DEFAULT ((0)) ,
[Delay] float(53) NOT NULL DEFAULT ((0)) ,
[Timeout] float(53) NOT NULL DEFAULT ((0)) ,
[NumClips] int NOT NULL DEFAULT ((10)) ,
[Clipsize] int NOT NULL DEFAULT ((30)) ,
[ReloadTime] float(53) NOT NULL DEFAULT ((2.5)) ,
[ActiveReloadTick] float(53) NOT NULL DEFAULT ((1.2)) ,
[RateOfFire] int NOT NULL DEFAULT ((600)) ,
[Spread] float(53) NOT NULL DEFAULT ((0.08)) ,
[Recoil] float(53) NOT NULL DEFAULT ((1)) ,
[NumGrenades] int NOT NULL DEFAULT ((0)) ,
[GrenadeName] varchar(32) NOT NULL DEFAULT ('asr_grenade') ,
[Firemode] varchar(3) NOT NULL DEFAULT ((101)) ,
[DetectionRadius] int NOT NULL DEFAULT ((30)) ,
[ScopeType] varchar(32) NOT NULL DEFAULT ('default') ,
[ScopeZoom] int NOT NULL DEFAULT ((0)) ,
[Price1] int NOT NULL DEFAULT ((0)) ,
[Price7] int NOT NULL DEFAULT ((0)) ,
[Price30] int NOT NULL DEFAULT ((0)) ,
[PriceP] int NOT NULL DEFAULT ((0)) ,
[IsNew] int NOT NULL DEFAULT ((0)) ,
[LevelRequired] int NOT NULL DEFAULT ((0)) ,
[GPrice1] int NOT NULL DEFAULT ((0)) ,
[GPrice7] int NOT NULL DEFAULT ((0)) ,
[GPrice30] int NOT NULL DEFAULT ((0)) ,
[GPriceP] int NOT NULL DEFAULT ((0)) ,
[ShotsFired] bigint NOT NULL DEFAULT ((0)) ,
[ShotsHits] bigint NOT NULL DEFAULT ((0)) ,
[KillsCQ] int NOT NULL DEFAULT ((0)) ,
[KillsDM] int NOT NULL DEFAULT ((0)) ,
[KillsSB] int NOT NULL DEFAULT ((0)) ,
[IsUpgradeable] int NOT NULL DEFAULT ((1)) ,
[IsFPS] int NOT NULL DEFAULT ((0)) ,
[FPSSpec0] int NOT NULL DEFAULT ((0)) ,
[FPSSpec1] int NOT NULL DEFAULT ((0)) ,
[FPSSpec2] int NOT NULL DEFAULT ((0)) ,
[FPSSpec3] int NOT NULL DEFAULT ((0)) ,
[FPSSpec4] int NOT NULL DEFAULT ((0)) ,
[FPSSpec5] int NOT NULL DEFAULT ((0)) ,
[FPSSpec6] int NOT NULL DEFAULT ((0)) ,
[FPSSpec7] int NOT NULL DEFAULT ((0)) ,
[FPSSpec8] int NOT NULL DEFAULT ((0)) ,
[FPSAttach0] int NOT NULL DEFAULT ((0)) ,
[FPSAttach1] int NOT NULL DEFAULT ((0)) ,
[FPSAttach2] int NOT NULL DEFAULT ((0)) ,
[FPSAttach3] int NOT NULL DEFAULT ((0)) ,
[FPSAttach4] int NOT NULL DEFAULT ((0)) ,
[FPSAttach5] int NOT NULL DEFAULT ((0)) ,
[FPSAttach6] int NOT NULL DEFAULT ((0)) ,
[FPSAttach7] int NOT NULL DEFAULT ((0)) ,
[FPSAttach8] int NOT NULL DEFAULT ((0)) ,
[AnimPrefix] varchar(32) NOT NULL DEFAULT '' ,
[Weight] int NOT NULL DEFAULT ((0)) ,
[DurabilityUse] float(53) NOT NULL DEFAULT ((0)) ,
[RepairAmount] float(53) NOT NULL DEFAULT ((0)) ,
[PremRepairAmount] float(53) NOT NULL DEFAULT ((0)) ,
[RepairPriceGD] float(53) NOT NULL DEFAULT ((0)) ,
[ResWood] int NOT NULL DEFAULT ((0)) ,
[ResStone] int NOT NULL DEFAULT ((0)) ,
[ResMetal] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of Items_Weapons
-- ----------------------------
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101002', N'ASR_M16', N'20', N'M16', N'The M16 rifle is a gas operated standard infantry assault rifle, chambered for 5.56x45mm NATO round.', N'0 0 0', N'muzzle_asr', N'assault', N'5.56', N'Sounds/NewWeapons/Assault/ColtM16', N'Sounds/Weapons/New Reloads/M16-Reload', N'27', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'625', N'9', N'7', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400127', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_M16', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101004', N'HG_FN57', N'25', N'FN FiveSeven', N'The FN Five Seven is a standard issue handgun that was designed to fire a 5.7 mm round. It is an effective weapon against close range targets.', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/Glock9mm', N'Sounds/Weapons/HG/HG_Generic_Reload', N'32', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'8', N'3', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'3002', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400087', N'0', N'0', N'0', N'0', N'HG_FN57', N'750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101005', N'ASR_G36', N'20', N'G36', N'The MTAC X36 assault rifle fires a 5.56 mm round. Its high rate of fire and medium recoil deliver a reasonably tight spread on impact of targets up to medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/HK_G36', N'Sounds/Weapons/New Reloads/G36-Reload', N'30', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'650', N'9', N'8', N'0', N'asr_grenade', N'111', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'23', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4100', N'0', N'0', N'0', N'0', N'0', N'400042', N'0', N'0', N'400029', N'0', N'0', N'0', N'0', N'ASR_G36', N'3300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101022', N'ASR_AK74M', N'20', N'AK-74M', N'The AK-74M assault rifle is an upgrade of the AK 74 design with a slightly increased rate of fire. It fires a 5.45 x 39 mm round accurately at medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/Kalashnikov_AK74', N'Sounds/Weapons/ASR/ASR_Generic_Reload', N'32', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'3', N'0', N'625', N'12', N'16', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4200', N'0', N'0', N'0', N'0', N'0', N'400040', N'0', N'0', N'400001', N'0', N'0', N'0', N'0', N'ASR_AK74m', N'3400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101032', N'ASR_AKM', N'20', N'AKM', N'The AKM is an assault rifle that was designed as a simplified version of the AK-47 rifle. It fires a 7.62 x 39 mm round and is relatively effective at medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'7.62', N'Sounds/NewWeapons/Assault/Kalashnikov_AKM', N'Sounds/Weapons/ASR/ASR_Generic_Reload', N'34', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'3', N'0', N'600', N'14', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'10', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400128', N'0', N'0', N'400101', N'0', N'0', N'0', N'0', N'ASR_AKM', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101035', N'ASR_AKS74U', N'26', N'AKS-74U', N'The AKS-74U is a shortened gas operated carbine version of the AKS-74 assault rifle. It fires a 5.45 x 39 mm round and is very effective at medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/AKS-74U', N'Sounds/Weapons/ASR/ASR_Generic_Reload', N'27', N'0', N'1', N'500', N'55', N'0', N'0', N'0', N'0', N'1', N'3', N'0', N'650', N'12', N'5', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'32', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4200', N'0', N'0', N'0', N'0', N'0', N'400129', N'0', N'0', N'400001', N'0', N'0', N'0', N'0', N'ASR_AKS74U', N'2700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101040', N'ASR_SIG516', N'20', N'M4 Semi', N'The civilian M4 semi auto rifle, chambered for 5.56x45mm NATO round.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/HK_416', N'Sounds/Weapons/New Reloads/M16-Reload', N'35', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'650', N'9', N'9', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'46', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400058', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_SIG516', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101055', N'ASR_M4FFH', N'20', N'M4', N'The M4 is a versitile, light weight, commando style assault rifle that is gas operated and fires a 5.56 x 45 mm round effectively in both close and medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/ColtM4', N'Sounds/Weapons/New Reloads/M16-Reload', N'34', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'625', N'9', N'12', N'0', N'asr_grenade', N'111', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'35', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400024', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_M4FFH', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101060', N'MG_PKM', N'23', N'PKM', N'The PKM machine gun was designed to fire a 7.62 mm rounds from a linked system and is reasonably accurate out to medium ranged targets.', N'0 0 0', N'muzzle_asr', N'assault', N'7.62', N'Sounds/NewWeapons/LightMachineGun/Kalashnikov_PKM', N'Sounds/Weapons/MG/MG_Generic_Reload', N'36', N'0', N'1', N'600', N'300', N'0', N'0', N'0', N'0', N'1', N'5', N'2', N'625', N'15', N'10', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'34', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400056', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MG_PKM', N'8000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101063', N'SMG_MP7', N'26', N'MP7', N'The RA TR7 submachine gun is a special issue weapon that fires a 4.6 mm standard cartridge from a 30 round magazine. It is effective at close range targets.', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/HK_UMP', N'Sounds/Weapons/New Reloads/M7-Reload', N'24', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'11', N'6', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'32', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1002', N'4003', N'0', N'0', N'0', N'0', N'0', N'400026', N'0', N'0', N'400033', N'0', N'0', N'0', N'0', N'SMG_MP7', N'2000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101064', N'SMG_UZI', N'26', N'UZI', N'The special issue UZI submachine gun is a open bolt, blow back design that fires 9 mm rounds from its magazine housed in the weapons pistol grip.', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/Uzi', N'Sounds/Weapons/New Reloads/Uzi-Reload', N'26', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'700', N'15', N'9', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'0', N'3001', N'0', N'4006', N'0', N'0', N'0', N'0', N'0', N'400134', N'0', N'0', N'400084', N'0', N'0', N'0', N'0', N'SMG_UZI', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101068', N'SNP_SVD_PSO', N'21', N'SVD ', N'The SVD sniper rifle was designed to fire a 7.62 mm round from a 10 round clip. Combined with an Optical Sniper Scope it is extremely accurate.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/SV98', N'Sounds/Weapons/New Reloads/SVD-Reload', N'70', N'0', N'1', N'800', N'600', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'80', N'3', N'3', N'0', N'asr_grenade', N'100', N'30', N'pso1', N'70', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'0', N'0', N'4004', N'0', N'0', N'0', N'0', N'0', N'400027', N'0', N'0', N'400048', N'0', N'0', N'0', N'0', N'SNP_SVD_PSO', N'5000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101084', N'SNP_Vintorez', N'21', N'VSS VINTOREZ', N'The VSS Vintorez sniper rifle was designed to fire a 9 x 39 mm round using a gas operated, rotating bolt firing system. It is designed to be effective at medium distances.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/VSS_Vintorez', N'Sounds/Weapons/ASR/ASR_Generic_Reload', N'125', N'0', N'2', N'700', N'200', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'200', N'2', N'5', N'0', N'asr_grenade', N'101', N'30', N'pso1', N'60', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'3001', N'0', N'4002', N'0', N'0', N'0', N'0', N'0', N'400027', N'0', N'0', N'400031', N'0', N'0', N'0', N'0', N'SNP_Vintorez', N'2500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101085', N'SNP_AW', N'21', N'MAUSER SP66', N'The Mauser SP66 sniper rifle was designed to fire a .308W round from a 5 round clip. It is highly accurate at long ranges when combined with a good scope.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/SNP_AW', N'Sounds/Weapons/New Reloads/SNP_AW_reload', N'105', N'0', N'1', N'1000', N'600', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'60', N'3', N'3', N'0', N'asr_grenade', N'100', N'30', N'aw50', N'80', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400008', N'0', N'0', N'400070', N'0', N'0', N'0', N'0', N'SNP_AW', N'6000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101087', N'SNP_AW50', N'21', N'AW Magnum', N'The AWM sniper rifle fires a custom .338W magnum round with devastating accuracy and effect. Each of its rounds deal a very high amount of damage.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/SNP_AW50', N'Sounds/Weapons/New Reloads/SNP_AW_reload', N'180', N'0', N'2', N'800', N'1000', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'30', N'3', N'4', N'0', N'asr_grenade', N'100', N'30', N's50hs', N'90', N'0', N'0', N'0', N'0', N'0', N'32', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400008', N'0', N'0', N'400043', N'0', N'0', N'0', N'0', N'SNP_AW50', N'6500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101088', N'SNP_M82', N'21', N'M107', N'The M107  sniper rifle fires a .50 caliber round that strikes with deadly effect at extreme ranges. It has a 10 round clip that allows for a high rate of fire.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/0.50Caliber', N'Sounds/Weapons/New Reloads/M107-Reload', N'150', N'0', N'2', N'800', N'900', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'60', N'5', N'7', N'0', N'asr_grenade', N'100', N'30', N'sniper', N'110', N'0', N'0', N'0', N'0', N'0', N'40', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400008', N'0', N'0', N'400133', N'0', N'0', N'0', N'0', N'SNP_M82', N'11000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101093', N'MG_RPK', N'23', N'RPK-74 ', N'The RPK-74 machine gun fires a 5.45 mm high velocity round that delivers a reasonably accurate rate of fire onto targets out to medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/LightMachineGun/Kalashnikov_RPK74', N'Sounds/Weapons/New Reloads/MG_RPK_reload', N'34', N'0', N'1', N'600', N'300', N'0', N'0', N'0', N'0', N'1', N'4', N'2', N'600', N'14', N'10', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'4200', N'0', N'0', N'0', N'0', N'0', N'400060', N'0', N'0', N'400100', N'0', N'0', N'0', N'0', N'MG_RPK', N'5000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101095', N'MG_M249_SAW', N'23', N'FN M249 ', N'The FN M249 machine gun fires a 5.56 mm round from a belt fed system. It is highly effective against targets at close and medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/LightMachineGun/FN_M249', N'Sounds/Weapons/New Reloads/MG_M240_SAW_Reload', N'31', N'0', N'1', N'600', N'300', N'0', N'0', N'0', N'0', N'1', N'6', N'2', N'600', N'14', N'5', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'25', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400035', N'0', N'0', N'400143', N'0', N'0', N'0', N'0', N'MG_M249', N'10000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101098', N'SHG_Saiga', N'22', N'SAIGA', N'The Saiga was developed as a 12 gauge shotgun with a 8 round storage tube. It inflicts a substancial amount of damage on targets at a close range.', N'0 0 0', N'muzzle_sh1', N'assault', N'buckshot', N'Sounds/NewWeapons/Shotgun/Shotgun', N'Sounds/Weapons/SHOTGUN/SHG_Generic_Reload', N'27', N'0', N'1', N'300', N'10', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'100', N'20', N'15', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'25', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400080', N'0', N'0', N'400073', N'0', N'0', N'0', N'0', N'SHG_SAIGA', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101103', N'SMG_MP5A4', N'26', N'MP5/10', N'The MP5/10 submachine gun was designed to fire a 10 mm Auto rounds from a 30 round clip effectively against close ranged targets.', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/HK_MP5', N'Sounds/Weapons/New Reloads/G36-Reload', N'23', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'700', N'11', N'7', N'0', N'asr_grenade', N'111', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400081', N'0', N'0', N'400079', N'0', N'0', N'0', N'0', N'SMG_MP5A4', N'2800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101106', N'SMG_AacHoneyBadger_01', N'26', N'Honey Badger', N'The Honey Badger submachine gun fires a .300 round at a medium rate of fire causing a good amount of damage on close range targets.', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/HK_MP5SD', N'Sounds/Weapons/New Reloads/M16-Reload', N'26', N'0', N'1', N'500', N'45', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'780', N'12', N'7', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'52', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'400074', N'400066', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'SMG_AacHoneyBadger_01', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101107', N'SMG_P90', N'26', N'FN P90 ', N'The FN P90 submachine gun was designed to fire 9 mm rounds from a large 50 round magazine. It is very effective on close range targets.', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/FN_P90', N'Sounds/Weapons/New Reloads/G36-Reload', N'26', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'900', N'10', N'8', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'36', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400054', N'0', N'0', N'400046', N'0', N'0', N'0', N'0', N'smg_p90', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101108', N'SMG_ScorpionEVO3', N'26', N'EVO-3', N'The EVO-3 submachine gun was designed to effectively fire 9 mm rounds from a 25 round magazine at close ranged targets at a very high rate of fire..', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/Scorpion_EVO3', N'Sounds/Weapons/New Reloads/G36-Reload', N'26', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'11', N'10', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'24', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400051', N'0', N'0', N'400049', N'0', N'0', N'0', N'0', N'SMG_ScorpionEVO3', N'3250', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101109', N'SMG_Bizon', N'26', N'BIZON', N'The Bizon submachine gun was designed to fire a 9 mm round from a 64 round magazine delivering accurate fire on close range targets.', N'0 0 0', N'muzzle_asr', N'smg', N'5.45', N'Sounds/NewWeapons/SMG/Bizon', N'Sounds/Weapons/New Reloads/G36-Reload', N'26', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'900', N'11', N'8', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'43', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400052', N'0', N'0', N'400047', N'0', N'0', N'0', N'0', N'SMG_Bizon', N'2000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101111', N'HG_Beretta92F', N'25', N'B92', N'The B92 handgun was specially designed to fire a 9mm round and is reasonably effective agains close range targets.', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/Beretta92', N'Sounds/Weapons/HG/HG_Generic_Reload', N'33', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'8', N'3', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'3002', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400071', N'0', N'0', N'0', N'0', N'HG_beretta92f', N'750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101112', N'HG_Beretta93R', N'25', N'B93R ', N'The B93R handgun was designed to fire a 9mm parabellum round from a 20 round clip. It is a relatively effective weapon against close ranged targets.', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/Beretta93R', N'Sounds/Weapons/HG/HG_Generic_Reload', N'30', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'8', N'5', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'3002', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400071', N'0', N'0', N'0', N'0', N'HG_Beretta93R', N'750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101115', N'HG_Jericho', N'25', N'Jericho 9mm', N'The Jericho was designed as a universal self-loading pistol which fires a 9mm Parabellum round and is highly effective at close range.', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/H&K_USP', N'Sounds/Weapons/HG/HG_Generic_Reload', N'35', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'9', N'3', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'17', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'3002', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400071', N'0', N'0', N'0', N'0', N'HG_Jericho', N'750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101120', N'HG_SigP226', N'25', N'Sig Sauer P226', N'The SIG P226 is a full-sized, service-type pistol made by SIG Sauer. It been designed to fire a 9 x 19 mm round that makes it an effective weapon against close ranged targets.', N'0 0 0', N'muzzle_hg', N'pistol', N'9mm', N'Sounds/NewWeapons/Handgun/Beretta92', N'Sounds/Weapons/HG/HG_Generic_Reload', N'35', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'8', N'3', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'26', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'3002', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400034', N'0', N'0', N'0', N'0', N'HG_SIGP226', N'750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101158', N'SHG_Mossberg590_01', N'22', N'MOSSBERG 590', N'The Mossberg 590 is a 12 gauge shotgun which has a 8 round storage tube. It is known to do an extremely high amount of damage at close range.', N'0 0 0', N'muzzle_sh1', N'assault', N'buckshot', N'Sounds/NewWeapons/Shotgun/Mossberg', N'Sounds/Weapons/New Reloads/Mossberg_reload', N'24', N'0', N'1', N'300', N'12', N'0', N'0', N'0', N'0', N'1', N'8', N'1', N'60', N'20', N'15', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400082', N'0', N'0', N'400136', N'0', N'0', N'0', N'0', N'SHG_Mossberg590_01', N'2500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101169', N'ASR_Mossada', N'20', N'MASADA', N'The Masada was designed for close combat operations and is a gas operated assault rifle that fires a chambered for 5.56x45mm NATO round. It is highly effective at close ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/AEK971', N'Sounds/Weapons/New Reloads/G36-Reload', N'28', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'700', N'9', N'5', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'43', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400119', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_Mossada', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101172', N'ASR_SIG_SG556', N'20', N'SIG SAUER 556', N'The 556 is a gas operated, rotating bolt assault rifle that fires a 5.56 x 45 mm round and was designed for special operations. It is very effective out to medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/SIG_551', N'Sounds/Weapons/New Reloads/ASR_SIG_SG556_Reload', N'27', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'650', N'6', N'6', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'15', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400025', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_SIG_SG556', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101173', N'ASR_tar21', N'20', N'IMI TAR-21', N'The TAR-21 is an unique gas operated, rotating bolt, bullpup design assault rifle that fires a 5.56 x 45 mm round. It is extremely effective at close and medium range.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/HK_G11', N'Sounds/Weapons/New Reloads/G36-Reload', N'33', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'700', N'6', N'7', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'39', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'0', N'0', N'4001', N'0', N'0', N'0', N'0', N'0', N'400059', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_tar21', N'3300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101180', N'HG_Desert_Eagle', N'25', N'Desert Eagle', N'The Desert Eagle handgun was designed to fire a .50 caliber round and deals a substancial amount of damage to targets at close ranges.', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/DesertEagle', N'Sounds/Weapons/HG/HG_Generic_Reload', N'50', N'0', N'1', N'500', N'40', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'12', N'22', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400086', N'0', N'0', N'0', N'0', N'HG_Desert_Eagle', N'1750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101183', N'SHG_Keltech', N'22', N'KT DECIDER', N'The KT Decider is a bull-pup shotgun design that has two magazine feed tubes, each side capable of holding 7 shells, for a total capacity of 14+1.', N'0 0 0', N'muzzle_sh1', N'assault', N'buckshot', N'Sounds/NewWeapons/Shotgun/SHG_Keltech', N'Sounds/Weapons/New Reloads/SHG_Keltech_reload', N'25', N'0', N'1', N'300', N'15', N'0', N'0', N'0', N'0', N'1', N'8', N'1', N'50', N'20', N'15', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'35', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400036', N'0', N'0', N'400136', N'0', N'0', N'0', N'0', N'SHG_Keltech', N'4000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101193', N'ASR_Fn_scar', N'20', N'FN SCAR CQC', N'The SCAR 16 CQC is an advanced assault rifle that fires standard 5.56 x 45 mm rounds effectively out to medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.56', N'Sounds/NewWeapons/Assault/FN_SCAR', N'Sounds/Weapons/New Reloads/M16-Reload', N'30', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'1', N'625', N'7', N'3', N'0', N'asr_grenade', N'111', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400006', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'ASR_Scar', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101197', N'MG_G36MG', N'23', N'RA H23', N'The RA LMG36 was designed to fire a 7.62 mm standard round. This machine gun delivers a reasonable amount of accurate fire onto targets at medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/HK_G36_CMag', N'Sounds/Weapons/New Reloads/MG_G36MG_Reload', N'31', N'0', N'1', N'600', N'300', N'0', N'0', N'0', N'0', N'1', N'4', N'2', N'650', N'15', N'5', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'49', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400042', N'0', N'0', N'400017', N'0', N'0', N'0', N'0', N'MG_G36MG', N'6000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101200', N'SHG_Usas12', N'22', N'AA-12', N'The AA-12 gauge automatic shotgun was designed to fire 12 gauge rounds from a 20 round storage system. It causes a reasonable amount of damage per round.', N'0 0 0', N'muzzle_sh1', N'assault', N'buckshot', N'Sounds/NewWeapons/Shotgun/Shotgun', N'Sounds/Weapons/SHOTGUN/SHG_Generic_Reload', N'22', N'0', N'1', N'300', N'10', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'150', N'20', N'25', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'45', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'3001', N'1001', N'0', N'0', N'0', N'0', N'0', N'0', N'400121', N'0', N'0', N'400050', N'0', N'0', N'0', N'0', N'SHG_Usas12', N'5000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101201', N'SMG_SR-1_Veresk', N'26', N'VERESK SR-2', N'The MTAC Flasher submachine gun was designed to fire a standard 9 mm round at a high rate of fire with reasonable accuracy at close range targets.', N'0 0 0', N'muzzle_asr', N'assault', N'9mm', N'Sounds/NewWeapons/Assault/Kalashnikov_AK74', N'Sounds/Weapons/New Reloads/M7-Reload', N'23', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'11', N'5', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'27', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'4006', N'0', N'0', N'0', N'0', N'0', N'400083', N'0', N'0', N'400084', N'0', N'0', N'0', N'0', N'SMG_SR-1_Veresk', N'1600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101210', N'ASR_Fn_scar_NightCamo', N'20', N'FN SCAR NIGHT STALKER', N'The Scar 17 CQC Nightstalker is a assault rifle that fires standard 5.56 x 45 mm rounds effectively out to medium ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/FN_SCAR', N'Sounds/Weapons/New Reloads/M16-Reload', N'32', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'625', N'7', N'3', N'0', N'asr_grenade', N'111', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'58', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'1001', N'4001', N'0', N'0', N'0', N'0', N'0', N'400006', N'0', N'0', N'400016', N'0', N'0', N'0', N'0', N'asr_scar', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101217', N'SNP_AW_Des', N'21', N'MAUSER SRG DESERT', N'The Mauser SP66 Desert sniper rifle fires a .308W round.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/SNP_AW', N'Sounds/Weapons/New Reloads/SNP_AW_reload', N'110', N'0', N'1', N'800', N'600', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'60', N'3', N'3', N'0', N'asr_grenade', N'100', N'30', N'sv98', N'90', N'0', N'0', N'0', N'0', N'0', N'28', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400008', N'0', N'0', N'400070', N'0', N'0', N'0', N'0', N'SNP_AW', N'7000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101224', N'HG_Jericho', N'25', N'STI Eagle Elite .45 ACP', N'The STI Eagle Elite handgun is an upgraded version of the STI Eagle and is designed to fire a .45 ACP round effectively at close ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Handgun/DesertEagle', N'Sounds/Weapons/HG/HG_Generic_Reload', N'36', N'0', N'1', N'500', N'45', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'9', N'9', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'HG_Jericho', N'1500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101246', N'SMG_PS90', N'26', N'FN P90 S', N'The FN P90S submachine gun is a highly effective weapon that carries a unique 50 round magazine. It fires a standard 5.56 mm round.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/SMG/FN_P90', N'Sounds/Weapons/New Reloads/G36-Reload', N'26', N'0', N'1', N'500', N'40', N'0', N'0', N'0', N'0', N'1', N'2', N'2', N'900', N'11', N'8', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'58', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400054', N'0', N'0', N'400046', N'0', N'0', N'0', N'0', N'smg_p90', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101247', N'SNP_Blaser_LRS2_01', N'21', N'BLASER R93', N'The Blaser is a bolt action sniper rifle, designed to fire a .308W round from a 5 round clip. It is a highly accurate weapon at longer ranges.', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Sniper/SNP_Blaser', N'Sounds/Weapons/New Reloads/SNP_Blaser_reload', N'125', N'0', N'1', N'800', N'800', N'0', N'0', N'0', N'0', N'1', N'3', N'2', N'45', N'3', N'2', N'0', N'asr_grenade', N'100', N'30', N'psg1', N'70', N'0', N'0', N'0', N'0', N'0', N'38', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'6001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400008', N'0', N'0', N'400070', N'0', N'0', N'0', N'0', N'snp_blaser_lrs2_01', N'6000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101256', N'Consumables_Med_01', N'28', N'Antibiotics', N'Over the counter antibiotics that aid in curing colds and other minor ailments.', N'0 0 0', N'muzzle_asr', N'mine', N'5.45', N'', N'', N'25', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'4500', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101261', N'Item_bandage_01', N'28', N'Bandages ', N'Common bandages which heal minor wounds and stops excessive bleeding.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'10', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'20', N'20', N'20', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'4000', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101262', N'Item_bandage_02', N'28', N'Bandages DX', N'Medical bandages which heal moderate wounds and stops excessive bleeding.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'45', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'5', N'4', N'2', N'30', N'20', N'20', N'0', N'asr_grenade', N'101', N'30', N'default', N'0', N'0', N'0', N'0', N'250', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101267', N'MEL_Knife_01', N'29', N'Tactical Knife', N'A standard issue knife with an 8" fixed blade, this knife was first designed in 1985 for the United States Army and was later adapted by several other countries as well as mercenary groups throughout the world due to its sturdy design and stopping power.', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'75', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Knife', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101278', N'MEL_BaseballBat_01', N'29', N'Bat', N'Handy for those times when you need to beat the crap outta something or somebody.', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'25', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3000', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Knife', N'750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101283', N'consumables_bag_chips_01', N'30', N'Bag of Chips', N'A bag of potato chips.  Relieves minor hunger. BBQ Flavor!', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'-5', N'10', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101284', N'Consumables_Bag_MRE_01', N'30', N'Bag MRE', N'Meals Ready-to-Eat.  Extremely convenient! An MRE can be eaten cold, right out of the pouch but they always taste better hot. Each serving size substantially relieves hunger and thirst', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'25', N'0', N'0', N'60', N'100', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'115', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101285', N'Consumables_Bag_Oat_01', N'30', N'Instant Oatmeal', N'A heart warming way to start your day. Classic Maple and Brown Sugar. Relieves a moderate amount of hunger.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'5', N'15', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'220', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101286', N'Consumables_Coconutwater_01', N'33', N'Coconut Water', N'A bottle of delicious coconut water that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'5', N'5', N'0', N'0', N'55', N'0', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101288', N'Consumables_Bar_Chocolate_01', N'30', N'Chocolate Bar', N'A milk chocolate candy bar. The finest in gourmet chocolate. Each serving size provides minor sustenance.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'220', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101289', N'Consumables_Bar_Granola_01', N'30', N'Granola Bar', N'An organic granola bar.  Each serving size helps relieve moderate hunger.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'25', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'10', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'220', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101290', N'Consumables_Can_Pasta_01', N'30', N'Can of Pasta', N'A can of delicious Pasta-O''s. Fortified with iron and vitamins. Low sugar and low fat. Suitable for Vegetarians. \r\nGluten Free', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'35', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1450', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101291', N'Consumables_Can_Soup_01', N'30', N'Can of Soup', N'A can of creamy tomato soup. No need to add water. Relieves moderate hunger.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'10', N'0', N'0', N'10', N'35', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'78', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101292', N'Consumables_Can_Spam_01', N'30', N'Can of Ham', N'Mechanically separated Spiced Ham in a 5-ounce cans. May contain pig parts. Relieves moderate hunger.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'5', N'0', N'0', N'0', N'35', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1950', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101293', N'Consumables_Can_Tuna_01', N'30', N'Can of Tuna', N'Chunk lite savory tuna in water.  Firm, flaky, fresh tasting that you can really tear into. Each serving relieves moderate hunger.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'5', N'0', N'0', N'10', N'35', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'64', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101294', N'Consumables_Energydrink_01', N'33', N'Energy drink', N'A caffeine jump-start that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'20', N'0', N'0', N'0', N'5', N'10', N'0', N'0', N'20', N'-5', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'95', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'220', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101295', N'Consumables_gatorade_01', N'33', N'Electro-AID', N'A flavored drink with electrolytes that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'50', N'0', N'0', N'0', N'5', N'5', N'0', N'0', N'60', N'5', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'113', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101296', N'Consumables_soda_01', N'33', N'Can of soda', N'A carbonated beverage that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'6', N'0', N'0', N'0', N'15', N'5', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'98', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101297', N'Consumables_Tetrapack_Juice_01', N'33', N'Juice', N'A healthy drink that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'5', N'0', N'0', N'30', N'10', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101298', N'Consumables_water_L_01', N'33', N'Water 1L', N'A large bottle of water that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'50', N'0', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101299', N'Consumables_water_S_01', N'33', N'Water 375ml', N'A small bottle of water that when consumed quenches moderate thirst.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'25', N'0', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'2000', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'375', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101300', N'Consumables_PainKiller_01', N'28', N'Pain killers', N'Over the counter pain killers that counter-act the effects of pain on the body.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'15', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'6000', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101301', N'Consumables_ZombieRepellent_01', N'28', N'Zombie Repellent', N'A spray on solution that when applied to the skin, it enters the blood stream and masks the smell of fresh blood.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'20', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101302', N'Item_Syringe_01_Vaccine', N'28', N'C01-Vaccine', N'An early prototype vaccine that when injected into your bloodstream fights off the infection and lowers blood toxicity levels. Its effectiveness is low however in comparison to later developed vaccines.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'20', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'12500', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101303', N'Item_Syringe_01_GC_Vaccine', N'28', N'C04-Vaccine', N'A cure to the infection that was developed only weeks after the initial signs of the infection.   Having had only a few weeks of production before the infected had taken over, supply is very low and demand is extremely high for these valuable vaccines.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'100', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'160', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101304', N'item_medkit_01', N'28', N'Medkit', N'A standard field medical kit commonly used by Medics to heal wounded soldiers on the battlefield. Very effective', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'100', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'150', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101305', N'Item_MsgBottle', N'28', N'Time Capsule', N'Write a message and leave it anywhere in the world for others to find', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'20', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'5', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'450', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101306', N'MEL_Flashlight', N'29', N'Flashlight', N'Flashlight for night time, also blinds other players and doubles as a last resort blunt object to bash in the heads of the infected', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'15', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'35', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Flashlight', N'650', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101307', N'MEL_Hammer', N'29', N'Hammer', N'Go with the funk, it is said. If you cant groove to this then you probably are dead. Stop, Hammer time.', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'35', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'70', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Hammer', N'700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101308', N'MEL_Hatchet', N'29', N'Hatchet', N'Cold-Steel, drop forged head with differential heat treatment. American Hickory Handle.  Sharp corners will easily pierce the thickest skull and the razor sharp edge will shear through flesh and bone like it was white bread.', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'120', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Hatchet', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101309', N'MEL_Pickaxe', N'29', N'Pickaxe', N'Spiked head, flat chisel. Has a good chance of getting stuck in the skull. Awkward to use in tight quarters.', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'85', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Pickaxe', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101310', N'EXP_M26', N'27', N'Frag Grenade', N'The fragmentation grenade is used to spray shrapnel upon exploding. Pull the pin and dont forget to throw it far.. Fire in the hole!', N'0 0 0', N'', N'grenade', N'grenade', N'', N'', N'50', N'0', N'10', N'20', N'50', N'10', N'4', N'0', N'1', N'1', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'EXP_M26', N'180', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101311', N'Item_Chemlight', N'27', N'Chemlight White', N'A white glow stick', N'0 0 0', N'', N'grenade', N'ChemLight', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Chemlight', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101312', N'EXP_Flare', N'27', N'Flare', N'Throw these to light up an area for a few minutes, also handy as a way to occupy the infected', N'0 0 0', N'', N'grenade', N'Flare', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'58', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'EXP_Flare', N'50', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101313', N'MEL_BaseballBat_Spikes_01', N'29', N'Spiked Bat', N'Just your traditional baseball bat. With spikes. Razor sharp, sure to leave a mark.', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'45', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'95', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_BaseballBat_Spikes_01', N'900', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101314', N'MEL_BaseballBat_02', N'29', N'Metal Bat', N'Aluminum, will never rust. Heads bounce off faster. Not suitable for major league destruction.', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'6500', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_BaseballBat_02', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101315', N'Item_Binocular', N'28', N'Binoculars', N'A great way to checkout if an area is safe before entering, keep an eye out for infected and bandits', N'0 0 0', N'', N'assault', N'5.45', N'', N'', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'60', N'0', N'0', N'0', N'asr_grenade', N'100', N'30', N'binoculars', N'80', N'0', N'0', N'0', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Binocular', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101316', N'Item_Barricade_BarbWire', N'28', N'Barb wire barricade', N'Drag this across a doorway to barricade the entrance leaving you safe inside, unless something is already inside with you!', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'500', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Barricade_BarbWire', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101317', N'Item_Barricade_WoodShield', N'28', N'Wood shield barricade', N'Great for blocking doorways to keep out those pesky infected', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'20', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Barricade_WoodShield', N'700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101318', N'Item_Riot_Shield_Crate_01', N'28', N'Riot Shield', N'Its a riot shield! Hide behind it for safety', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'400', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Riot_Shield_Crate_01', N'900', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101319', N'Item_RangeFinder', N'28', N'Range Finder', N'Need to know how far away something is? The range finder can be your best friend when sneaking around searching for survival items', N'0 0 0', N'', N'assault', N'5.45', N'', N'', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'60', N'0', N'0', N'0', N'asr_grenade', N'100', N'30', N'rangefinder', N'80', N'0', N'0', N'0', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_RangeFinder', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101320', N'HG_FlareGun', N'25', N'Flare Gun', N'', N'0 0 0', N'muzzle_hg', N'pistol', N'Flare', N'Sounds/NewWeapons/SMG/HK_MP5SD', N'Sounds/Weapons/HG/HG_Generic_Reload', N'5', N'0', N'10', N'50', N'50', N'0', N'180', N'0', N'0', N'1', N'2', N'2', N'60', N'15', N'5', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400152', N'0', N'0', N'0', N'0', N'HG_FlareGun', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101321', N'SHG_DoubleBarrel', N'22', N'Double Barrel', N'Also known as Doubles or Broomsticks, this powerful shotgun allows two shots to be fired in quick succession before reloading', N'0 0 0', N'muzzle_sh1', N'assault', N'buckshot', N'Sounds/NewWeapons/Shotgun/Shotgun', N'Sounds/Weapons/New Reloads/SH_Double_barrel_reload', N'20', N'0', N'1', N'300', N'10', N'0', N'0', N'0', N'0', N'1', N'2', N'1', N'120', N'20', N'25', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400141', N'0', N'0', N'0', N'0', N'SHG_DoubleBarrel', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101322', N'SNP_CrossBow', N'20', N'Compound Crossbow', N'String drawn compound hunting crossbow for silent kills. Uses bow arrows for ammo', N'0 0 0', N'', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Special/Crossbow', N'Sounds/Weapons/New Reloads/Crossbow-Reload', N'20', N'1', N'1', N'600', N'50', N'0', N'0', N'0', N'0', N'1', N'2', N'2', N'60', N'2', N'2', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'5001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400140', N'0', N'0', N'0', N'0', N'SNP_CrossBow', N'3500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101323', N'Item_Airhorn', N'28', N'Air horn', N'Do your friends keep getting attacked?  Be the hero and blow your air horn to make the infected come after you instead.', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'0', N'1', N'1', N'1', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'60', N'0', N'0', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Airhorn', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101324', N'item_barricade_sandbag', N'28', N'Sandbag barricade', N'These should keep out the undead.. until they learn to climb that is', N'0 0 0', N'', N'assault', N'5.45', N'', N'', N'500', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'0', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'item_barricade_sandbag', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101325', N'Item_Chemlight_blue', N'27', N'Chemlight blue', N'A blue glowstick', N'0 0 0', N'', N'grenade', N'ChemLight_blue', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'46', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Chemlight', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101326', N'Item_Chemlight_green', N'27', N'Chemlight green', N'A green glowstick. Ravers favorite color', N'0 0 0', N'', N'grenade', N'ChemLight_green', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'46', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Chemlight', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101327', N'Item_Chemlight_orange', N'27', N'Chemlight orange', N'An orange glowstick', N'0 0 0', N'', N'grenade', N'ChemLight_orange', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'46', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Chemlight', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101328', N'Item_Chemlight_red', N'27', N'Chemlight red', N'A red glowstick', N'0 0 0', N'', N'grenade', N'ChemLight_red', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'46', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Chemlight', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101329', N'Item_Chemlight_yellow', N'27', N'Chemlight yellow', N'A yellow glowstick', N'0 0 0', N'', N'grenade', N'ChemLight_yellow', N'', N'', N'0', N'0', N'10', N'20', N'50', N'0', N'180', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1500', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Chemlight', N'30', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101330', N'HG_Ruger', N'25', N'Ruger', N'Reliable and relatively common, the lower powered Kruger .22 is a household staple, allowing for low cost practice with firm control', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/Ruger22', N'Sounds/Weapons/HG/HG_Generic_Reload', N'20', N'0', N'1', N'500', N'35', N'0', N'0', N'0', N'0', N'1', N'2', N'2', N'800', N'9', N'3', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400144', N'0', N'0', N'0', N'0', N'HG_Ruger', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101331', N'HG_Colt_Anaconda', N'25', N'Colt Anaconda', N'Introduced in 1990, the Colt Anaconda is a large double action .44 caliber revolver featuring a six round cylinder, designed and produced by the Colt''s Manufacturing Company', N'0 0 0', N'muzzle_hg', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/DesertEagle', N'Sounds/Weapons/HG/HG_Generic_Reload', N'45', N'0', N'1', N'500', N'40', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'10', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400145', N'0', N'0', N'0', N'0', N'HG_Colt_Anaconda', N'1750', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101332', N'ASR_Ruger_Rifle', N'20', N'Kruger .22 Rifle', N'Semi-automatic .22 Long Rifle with removable rotary magazine', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/Ruger22', N'Sounds/Weapons/New Reloads/ASR_Ruger_rifle_reload', N'25', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'650', N'9', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'7001', N'0', N'0', N'0', N'0', N'0', N'400149', N'0', N'0', N'400148', N'0', N'0', N'0', N'0', N'ASR_Ruger_Rifle', N'2500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101334', N'ASR_Mini14', N'20', N'Kruger Mini-14', N'The Kruger''s short size makes it ideal for all situations where ease of maneuverability is a priority, whether it be on the ranch or the deep woods.', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'Sounds/NewWeapons/Assault/Ruger22', N'Sounds/Weapons/New Reloads/ASR_Mini14_reload', N'25', N'0', N'1', N'500', N'300', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'650', N'9', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'3001', N'0', N'7020', N'0', N'0', N'0', N'0', N'0', N'400151', N'0', N'0', N'400150', N'0', N'0', N'0', N'0', N'ASR_Mini14', N'3100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101335', N'MEL_CandyCane_01', N'29', N'Kandy Kane', N'For yuletide slaughtering in style!', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'15', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'65', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_CandyCane_01', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101336', N'mel_katana_01', N'29', N'Katana', N'Ancient deadly sharp Samurai weapon, hand made to cleave your foe cleanly in two. Or three...or four....', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'120', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'mel_katana_01', N'1200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101337', N'mel_katana_01_special', N'29', N'Jokoto Katana', N'Among the most ancient blades, the Jokoto Katana''s were manufactured for only the most elite and honorable of warriors. Carrying such a blade imparts great responsibility.', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'mel_katana_01', N'1200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101338', N'MEL_katana_02_special', N'29', N'Wakizashi', N'Shorter than its counterpart, the wakizashi is designed for closer combat and even ritual suicide.', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'mel_katana_01', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101339', N'MEL_Machete_01', N'29', N'Machete', N'A rough but sharp blade used for clearing brush', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'120', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'mel_machete_01', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101340', N'Consumables_MiniSaints_01', N'30', N'MiniSaints', N'Creamy, moist and delectable, MiniSaints are a delicious treat the whole family can enjoy! Best consumed while watching family movies, possibly involving snow and dogs.', N'', N'', N'', N'', N'', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'5', N'0', N'0', N'0', N'5', N'15', N'0', N'', N'', N'30', N'', N'0', N'0', N'0', N'0', N'41', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101341', N'ASR_Mosin_Rifle', N'20', N'Mosin', N'A Russian bolt action rifle with an internally fed magazine, this reliable rifle has been in popular use through countless wars since 1891', N'0 0 0', N'muzzle_asr', N'assault', N'Sniper5.45', N'Sounds/NewWeapons/Assault/Mosin', N'Sounds/Weapons/New Reloads/Mosin-reload', N'50', N'0', N'1', N'500', N'500', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'40', N'2', N'8', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'2001', N'5001', N'0', N'0', N'7030', N'0', N'0', N'0', N'0', N'0', N'400155', N'0', N'0', N'400153', N'0', N'0', N'0', N'0', N'ASR_Mosin_Rifle', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101342', N'HG_colt_1911', N'25', N'1911', N'Standard US service pistol known for its minimal recoil and light weight', N'0 0 0', N'muzzle_hg', N'pistol', N'Sniper5.45', N'Sounds/NewWeapons/Handgun/9mmGeneric', N'Sounds/Weapons/HG/HG_Generic_Reload', N'35', N'0', N'1', N'500', N'40', N'0', N'0', N'0', N'0', N'1', N'2', N'0', N'800', N'4', N'2', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'8001', N'0', N'3002', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400154', N'0', N'0', N'0', N'0', N'HG_colt_1911', N'650', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101343', N'MEL_BrassKnuckles', N'29', N'Brass Knuckles', N'A tried and true classic. Pummel your enemies into submission!', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'30', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'mel_machete', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101344', N'MEL_Canoe_paddle', N'29', N'Canoe Paddle', N'Wooden canoe paddle', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'30', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Canoe_paddle', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101345', N'MEL_Cricket_bat', N'29', N'Cricket bat', N'Score some runs and crush some skulls!', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'35', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Cricket_bat', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101346', N'MEL_Shovel', N'29', N'Shovel', N'Practical AND deadly', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'30', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Shovel', N'700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101347', N'MEL_Chainsaw', N'29', N'Chainsaw', N'Tear through undead and living alike with this fearsome household tool', N'0 0 0', N'', N'melee', N'melee', N'', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Chainsaw', N'1200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101348', N'Item_Lockbox_01_Crate', N'28', N'Personal locker', N'Placeable personal storage unit', N'0 0 0', N'muzzle_asr', N'assault', N'5.45', N'', N'', N'20', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'0', N'1', N'4', N'2', N'10', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Lockbox_01_Crate', N'5000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101352', N'Block_Door_Wood_2M_01', N'28', N'Wooden door block', N'2 meters high', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'250', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101353', N'Block_Wall_Metal_2M_01', N'28', N'Metal wall block', N'2 meters high', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'500', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101354', N'Block_Wall_Brick_Tall_01', N'28', N'Tall brick wall block', N'Large brick wall piece', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'250', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101355', N'Block_Wall_Wood_2M_01', N'28', N'Wooden wall piece, 2M', N'2 meter tall wooden wall piece', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'250', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101356', N'Block_Wall_Brick_Short_01', N'28', N'Short brick wall piece', N'Short brick wall block', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'500', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101357', N'Block_Farm_01', N'28', N'Farm Block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'250', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101358', N'Block_PowerGen_Indust_01', N'28', N'Industrial power generator', N'Industrial strength power generator', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101359', N'Block_PowerGen_01_Small', N'28', N'Small Power Generator', N'Small Power Generator', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'200', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101360', N'Block_SolarWater_01', N'28', N'Solar Water Purifier', N'Small solar powered water purifier', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'200', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101361', N'Block_Light_01', N'28', N'Placeable light', N'Moveable, placeable light source', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'200', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101362', N'Block_Farm_ChipBag_01', N'28', N'Bag of Chips farm block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'200', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101363', N'Block_Veg_Apple_01', N'28', N'Apple farm block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'200', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101364', N'Block_Veg_Banana_01', N'28', N'Banana farm block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101365', N'Block_Veg_Carrot_01', N'28', N'Carrot farm block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101366', N'Block_Veg_Lettuce', N'28', N'Lettuce farm block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101367', N'Block_Veg_PineApple_01', N'28', N'Pineapple farm block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101368', N'Block_Veg_Potato_01', N'28', N'Potato Farm Block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101369', N'Block_Veg_Tomato_01', N'28', N'Tomato Farm Block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101370', N'Block_Veg_WaterMelon_01', N'28', N'Watermelon Farm Block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101371', N'Block_Door_Wood_2M_01_Crate', N'28', N'Wood Door Crate 2M', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'350', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101372', N'Block_Farm_01_Crate', N'28', N'Farm Block Crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101373', N'Block_Light_01_Crate', N'28', N'Light block crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101374', N'Block_PowerGen_01_Crate', N'28', N'Power Generator Block Crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101375', N'Block_PowerGen_Indust_01_Crate', N'28', N'Industrial Power Generator block', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101376', N'Block_SolarWater_01_Crate', N'28', N'Solar Water Power block crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101377', N'Block_Wall_Brick_Short_01_Crate', N'28', N'Short Brick Wall crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101378', N'Block_Wall_Brick_Tall_01_Crate', N'28', N'Tall Brick wall crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101379', N'Block_Wall_Metal_2M_01_Crate', N'28', N'Tall 2M Metal Wall Block crate', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101380', N'Block_Wall_Wood_2M_01_Crate', N'28', N'Wood Wall block crate, 2M', N'', N'0 0 0', N'', N'assault', N'melee', N'', N'', N'300', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101381', N'Mel_ButterflyKnife', N'29', N'Butterfly Knife', N'A folding knife with two handles counter rotating around the blade so that when its closed the blade concealed', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_ButterflyKnife', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101382', N'Mel_Crowbar', N'29', N'Crowbar', N'A multi use household tool, useful for construction or surviving an apocalyptic event', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'30', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_Crowbar', N'600', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101383', N'Mel_FireAxe', N'29', N'Fire Axe', N'Standard issue axe used by firefighters to enter buildings and remove dangerous debris', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_FireAxe', N'1200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101384', N'Mel_FryingPan', N'29', N'Frying Pan', N'Whether frying an egg or flattening a face, the common household frying pan has many uses', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'20', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_FryingPan', N'1100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101385', N'Mel_GardenShears', N'29', N'Garden Shears', N'Whether shortening hedges or heads these shears are sure to come in handy', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_GardenShears', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101386', N'Mel_Golf_Club', N'29', N'Golf Club', N'Best used for long drives. FORE!', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'30', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_Golf_Club', N'800', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101388', N'Mel_Pitchfork', N'29', N'Pitchfork', N'Designed to move hay economically, its intimidating design suits it well to sticking some undead', N'0 0 0', N'', N'melee', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Mel_Pitchfork', N'1400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101389', N'Mel_PoliceBaton', N'29', N'Police Baton', N'Used by law enforcement as an aid in hand to hand combat, often to subdue unruly or resistant suspects', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'30', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101390', N'Mel_Power_Drill', N'29', N'Power Drill', N'Battery powered and unconventional, the drill is quite effective at dispatching enemies in the grisliest way', N'0 0 0', N'', N'melee', N'melee_sharp', N'', N'', N'40', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'120', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'900', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101391', N'Mel_Wrench', N'29', N'Wrench', N'Loved by plumbers around the world, this hefty tool can easily collapse the skulls of your foes', N'0 0 0', N'', N'melee', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'20', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'90', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'1200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101392', N'Mel_NailGun', N'25', N'Nail Gun', N'Commonly used in construction', N'0 0 0', N'', N'pistol', N'5.45', N'Sounds/NewWeapons/Handgun/Nailgun', N'Sounds/Weapons/New Reloads/Nailgun-reload', N'10', N'0', N'10', N'300', N'5', N'0', N'0', N'0', N'0', N'1', N'3', N'1', N'120', N'15', N'5', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'400157', N'0', N'0', N'0', N'0', N'Mel_NailGun', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101398', N'MEL_UNARMED', N'29', N'MELEE_UNARMED', N'', N'0 0 0', N'', N'assault', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'10', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101399', N'Item_repairKit_01', N'28', N'Repair Kit', N'', N'0 0 0', N'', N'assault', N'5.45', N'', N'', N'0', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'30', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101400', N'Item_repairKit_Premium_01', N'28', N'Premium Repair Kit', N'', N'0 0 0', N'default', N'assault', N'5.45', N'', N'', N'0', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'30', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'200', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101401', N'MEL_CanoePaddle_Knife', N'29', N'CanoePaddle Knife', N'Crafted Item!', N'0 0 0', N'', N'assault', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'100', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'80', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Canoe_paddle', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101402', N'Mel_Shiv', N'29', N'Shiv', N'Crafted item', N'0 0 0', N'default', N'assault', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'140', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'MEL_Knife', N'100', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101403', N'EXP_SharpnelBomb', N'27', N'Sharpnel Bomb', N'Crafted item', N'0 0 0', N'default', N'assault', N'grenade', N'', N'', N'150', N'0', N'10', N'20', N'50', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'EXP_M26', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101404', N'EXP_SharpnelBomb_TripWire', N'27', N'TripWire Bomb', N'Crafted item', N'0 0 0', N'default', N'assault', N'grenade', N'', N'', N'140', N'0', N'10', N'20', N'50', N'0', N'0', N'0', N'1', N'1', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'EXP_M26', N'400', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101405', N'Item_Bandage_Improvised', N'28', N'Crafted Bandage', N'Crafted Item', N'0 0 0', N'default', N'assault', N'5.45', N'', N'', N'40', N'1', N'10', N'300', N'50', N'0', N'0', N'0', N'1', N'1', N'4', N'2', N'20', N'20', N'20', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'300', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101406', N'Mel_PoliceBaton_Wire', N'29', N'Police Baton with Wire', N'Crafted item', N'0 0 0', N'default', N'assault', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'130', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'900', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101407', N'mel_spear', N'29', N'Spear', N'Crafted item', N'0 0 0', N'default', N'assault', N'melee', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'50', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'130', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'1000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101408', N'Mel_pickaxe_craft', N'29', N'Resource Collection Tool', N'Special melee item to collect resources!', N'0 0 0', N'default', N'assault', N'melee_sharp', N'Sounds/NewWeapons/Melee/Melee_Whoosh', N'', N'0', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'60', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'3000', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101409', N'Mel_pickaxe_craft_premium', N'29', N'Premium Resource Collection Tool', N'Special melee item to collect resources', N'0 0 0', N'default', N'assault', N'melee_sharp', N'', N'', N'0', N'1', N'10', N'300', N'1', N'0', N'0', N'0', N'0', N'1', N'0', N'0', N'60', N'0', N'0', N'0', N'asr_grenade', N'001', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'', N'2500', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101416', N'Item_Riot_Shield_Crate_ZB', N'28', N'RiotShield ZB', N'used different final model', N'0 0 0', N'default', N'assault', N'melee', N'', N'', N'400', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Riot_Shield_Crate_01', N'900', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO
INSERT INTO [dbo].[Items_Weapons] VALUES (N'101417', N'Item_Barricade_WoodShield_ZB', N'0', N'Wood shield barricade ZB', N'uses different mesh', N'0 0 0', N'default', N'assault', N'melee', N'', N'', N'250', N'1', N'10', N'60', N'1', N'0', N'0', N'0', N'1', N'5', N'1', N'0', N'60', N'1', N'1', N'0', N'asr_grenade', N'100', N'30', N'default', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'1', N'1', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'0', N'Item_Barricade_WoodShield', N'700', N'0', N'0', N'0', N'0', N'0', N'0', N'0');
GO

-- ----------------------------
-- Table structure for [dbo].[Leaderboard00]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard00]
GO
CREATE TABLE [dbo].[Leaderboard00] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard00
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard01]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard01]
GO
CREATE TABLE [dbo].[Leaderboard01] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard01
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard02]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard02]
GO
CREATE TABLE [dbo].[Leaderboard02] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard02
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard03]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard03]
GO
CREATE TABLE [dbo].[Leaderboard03] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard03
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard04]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard04]
GO
CREATE TABLE [dbo].[Leaderboard04] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard04
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard05]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard05]
GO
CREATE TABLE [dbo].[Leaderboard05] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard05
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard06]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard06]
GO
CREATE TABLE [dbo].[Leaderboard06] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard06
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard50]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard50]
GO
CREATE TABLE [dbo].[Leaderboard50] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard50
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard51]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard51]
GO
CREATE TABLE [dbo].[Leaderboard51] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard51
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard52]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard52]
GO
CREATE TABLE [dbo].[Leaderboard52] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard52
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard53]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard53]
GO
CREATE TABLE [dbo].[Leaderboard53] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard53
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard54]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard54]
GO
CREATE TABLE [dbo].[Leaderboard54] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard54
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard55]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard55]
GO
CREATE TABLE [dbo].[Leaderboard55] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard55
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Leaderboard56]
-- ----------------------------
DROP TABLE [dbo].[Leaderboard56]
GO
CREATE TABLE [dbo].[Leaderboard56] (
[Pos] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[Alive] int NOT NULL ,
[XP] int NOT NULL ,
[TimePlayed] int NOT NULL ,
[Reputation] int NOT NULL ,
[Stat00] int NOT NULL ,
[Stat01] int NOT NULL ,
[Stat02] int NOT NULL ,
[Stat03] int NOT NULL ,
[Stat04] int NOT NULL ,
[Stat05] int NOT NULL ,
[GameServerId] int NOT NULL ,
[ClanID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Leaderboard56
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[LoginBadIPs]
-- ----------------------------
DROP TABLE [dbo].[LoginBadIPs]
GO
CREATE TABLE [dbo].[LoginBadIPs] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[IP] varchar(32) NULL ,
[CustomerID] int NULL ,
[Attempts] int NULL 
)


GO

-- ----------------------------
-- Records of LoginBadIPs
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[LoginIPs]
-- ----------------------------
DROP TABLE [dbo].[LoginIPs]
GO
CREATE TABLE [dbo].[LoginIPs] (
[CustomerID] int NOT NULL ,
[LoginIP] varchar(32) NULL 
)


GO

-- ----------------------------
-- Records of LoginIPs
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Logins]
-- ----------------------------
DROP TABLE [dbo].[Logins]
GO
CREATE TABLE [dbo].[Logins] (
[LoginID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL DEFAULT ((0)) ,
[LoginTime] datetime NOT NULL DEFAULT (((12)/(1))/(1973)) ,
[IP] varchar(16) NOT NULL DEFAULT ('1.1.1.1') ,
[LoginSource] int NOT NULL DEFAULT ((0)) ,
[Country] varchar(50) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Records of Logins
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[LoginSessions]
-- ----------------------------
DROP TABLE [dbo].[LoginSessions]
GO
CREATE TABLE [dbo].[LoginSessions] (
[CustomerID] int NOT NULL ,
[SessionKey] varchar(50) NOT NULL ,
[SessionID] int NOT NULL DEFAULT ((0)) ,
[LoginIP] varchar(16) NOT NULL ,
[TimeLogged] datetime NOT NULL ,
[TimeUpdated] datetime NOT NULL ,
[GameSessionID] bigint NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of LoginSessions
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[MasterServerInfo]
-- ----------------------------
DROP TABLE [dbo].[MasterServerInfo]
GO
CREATE TABLE [dbo].[MasterServerInfo] (
[ServerID] int NOT NULL DEFAULT ((0)) ,
[LastUpdated] datetime NOT NULL DEFAULT (((1)/(1))/(1970)) ,
[CreateGameKey] int NOT NULL DEFAULT ((0)) ,
[IP] varchar(64) NOT NULL DEFAULT ('0.0.0.0') 
)


GO

-- ----------------------------
-- Records of MasterServerInfo
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[SecurityLog]
-- ----------------------------
DROP TABLE [dbo].[SecurityLog]
GO
CREATE TABLE [dbo].[SecurityLog] (
[ID] int NOT NULL ,
[EventID] int NOT NULL IDENTITY(1,1) ,
[Date] datetime NOT NULL ,
[IP] varchar(64) NOT NULL DEFAULT ('0.0.0.0') ,
[CustomerID] int NOT NULL DEFAULT ((0)) ,
[EventData] varchar(256) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Records of SecurityLog
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ServerObjects]
-- ----------------------------
DROP TABLE [dbo].[ServerObjects]
GO
CREATE TABLE [dbo].[ServerObjects] (
[ServerObjectID] int NOT NULL IDENTITY(1,1) ,
[GameServerId] int NULL ,
[ObjClassName] varchar(64) NULL ,
[ObjType] int NULL ,
[ItemID] int NULL ,
[px] float(53) NULL ,
[py] float(53) NULL ,
[pz] float(53) NULL ,
[rx] float(53) NULL ,
[ry] float(53) NULL ,
[rz] float(53) NULL ,
[CreateUtcDate] datetime NULL ,
[ExpireUtcDate] datetime NULL ,
[CustomerID] int NULL ,
[CharID] int NULL ,
[Var1] nvarchar(4000) NULL ,
[Var2] nvarchar(4000) NULL ,
[Var3] nvarchar(4000) NULL 
)


GO

-- ----------------------------
-- Records of ServerObjects
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ServerSavedState]
-- ----------------------------
DROP TABLE [dbo].[ServerSavedState]
GO
CREATE TABLE [dbo].[ServerSavedState] (
[GameServerId] int NOT NULL ,
[UpdateTime] datetime NULL ,
[IsRetrieved] int NULL ,
[SavedState] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of ServerSavedState
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ServersList]
-- ----------------------------
DROP TABLE [dbo].[ServersList]
GO
CREATE TABLE [dbo].[ServersList] (
[GameServerID] int NOT NULL IDENTITY(1,1) ,
[OwnerCustomerID] int NULL ,
[PriceGP] int NULL ,
[CreateTimeUtc] datetime NULL ,
[AdminKey] int NULL ,
[ServerRegion] int NULL ,
[ServerType] int NULL ,
[ServerFlags] int NULL ,
[ServerMap] int NULL ,
[ServerSlots] int NULL ,
[ServerName] nvarchar(64) NULL ,
[ServerPwd] nvarchar(16) NULL ,
[ReservedSlots] int NULL ,
[RentHours] int NULL ,
[WorkHours] int NULL ,
[LastUpdated] datetime NULL ,
[NumRents] int NOT NULL DEFAULT ((1)) ,
[GameTimeLimit] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of ServersList
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[SteamConversionKeys]
-- ----------------------------
DROP TABLE [dbo].[SteamConversionKeys]
GO
CREATE TABLE [dbo].[SteamConversionKeys] (
[ConversionKey] varchar(32) NOT NULL ,
[CustomerID] int NOT NULL 
)


GO

-- ----------------------------
-- Records of SteamConversionKeys
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[SteamDLC]
-- ----------------------------
DROP TABLE [dbo].[SteamDLC]
GO
CREATE TABLE [dbo].[SteamDLC] (
[RecordID] int NOT NULL ,
[CustomerID] int NOT NULL ,
[AppID] int NOT NULL ,
[ActivateDate] datetime NOT NULL ,
[OwnershipXML] varchar(8000) NULL ,
[AuthSteamUserID] bigint NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of SteamDLC
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[SteamGPOrders]
-- ----------------------------
DROP TABLE [dbo].[SteamGPOrders]
GO
CREATE TABLE [dbo].[SteamGPOrders] (
[OrderID] bigint NOT NULL ,
[CustomerID] int NULL ,
[SteamID] bigint NULL ,
[InitTxnTime] datetime NULL ,
[Price] float(53) NULL ,
[GP] int NULL ,
[WalletCountry] varchar(16) NULL ,
[WalletCurrency] varchar(16) NULL ,
[WalletPrice] float(53) NULL ,
[IsCompleted] int NOT NULL DEFAULT ((0)) ,
[transid] varchar(32) NULL 
)


GO

-- ----------------------------
-- Records of SteamGPOrders
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[UsersChars]
-- ----------------------------
DROP TABLE [dbo].[UsersChars]
GO
CREATE TABLE [dbo].[UsersChars] (
[CharID] int NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[Hardcore] int NOT NULL ,
[Gamertag] nvarchar(64) NOT NULL ,
[HeroItemID] int NOT NULL DEFAULT ((20170)) ,
[HeadIdx] int NOT NULL ,
[BodyIdx] int NOT NULL ,
[LegsIdx] int NOT NULL ,
[Alive] int NOT NULL DEFAULT ((3)) ,
[DeathUtcTime] datetime NOT NULL DEFAULT ('1/1/1973') ,
[XP] int NOT NULL DEFAULT ((0)) ,
[TimePlayed] int NOT NULL DEFAULT ((0)) ,
[GameMapId] int NOT NULL DEFAULT ((0)) ,
[GameServerId] bigint NOT NULL DEFAULT ((0)) ,
[GamePos] varchar(128) NOT NULL DEFAULT '' ,
[GameFlags] int NOT NULL DEFAULT ((0)) ,
[Health] float(53) NOT NULL DEFAULT ((100)) ,
[Food] float(53) NOT NULL DEFAULT ((0)) ,
[Water] float(53) NOT NULL DEFAULT ((0)) ,
[Toxic] float(53) NOT NULL DEFAULT ((0)) ,
[Reputation] int NOT NULL DEFAULT ((0)) ,
[BackpackID] int NOT NULL DEFAULT ((20176)) ,
[BackpackSize] int NOT NULL DEFAULT ((12)) ,
[Attachment1] varchar(256) NOT NULL DEFAULT '' ,
[Attachment2] varchar(256) NOT NULL DEFAULT '' ,
[Stat00] int NOT NULL DEFAULT ((0)) ,
[Stat01] int NOT NULL DEFAULT ((0)) ,
[Stat02] int NOT NULL DEFAULT ((0)) ,
[Stat03] int NOT NULL DEFAULT ((0)) ,
[Stat04] int NOT NULL DEFAULT ((0)) ,
[Stat05] int NOT NULL DEFAULT ((0)) ,
[LastUpdateDate] datetime NULL ,
[CreateDate] datetime NULL ,
[ClanID] int NOT NULL DEFAULT ((0)) ,
[ClanRank] int NOT NULL DEFAULT ((99)) ,
[ClanContributedXP] int NOT NULL DEFAULT ((0)) ,
[ClanContributedGP] int NOT NULL DEFAULT ((0)) ,
[SpendXP] int NOT NULL DEFAULT ((0)) ,
[Skills] char(128) NOT NULL DEFAULT '' ,
[ClanJoinDate] datetime NOT NULL DEFAULT ('1970-1-1') ,
[CharData] varchar(8000) NOT NULL DEFAULT '' ,
[MissionsData] varchar(8000) NOT NULL DEFAULT '' ,
[CharRenameTime] datetime NOT NULL DEFAULT ('2000-1-1') 
)


GO

-- ----------------------------
-- Records of UsersChars
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[UsersData]
-- ----------------------------
DROP TABLE [dbo].[UsersData]
GO
CREATE TABLE [dbo].[UsersData] (
[CustomerID] int NOT NULL ,
[IsDeveloper] int NOT NULL DEFAULT ((0)) ,
[AccountType] int NOT NULL DEFAULT ((99)) ,
[AccountStatus] int NOT NULL DEFAULT ((100)) ,
[GamePoints] int NOT NULL DEFAULT ((0)) ,
[GameDollars] int NOT NULL DEFAULT ((0)) ,
[dateregistered] datetime NOT NULL DEFAULT ('1/1/1973') ,
[lastjoineddate] datetime NOT NULL DEFAULT ('1/1/1973') ,
[lastgamedate] datetime NOT NULL DEFAULT ('1/1/1973') ,
[ClanID] int NOT NULL DEFAULT ((0)) ,
[ClanRank] int NOT NULL DEFAULT ((99)) ,
[GameServerId] bigint NULL ,
[CharsCreated] int NOT NULL DEFAULT ((0)) ,
[TimePlayed] int NOT NULL DEFAULT ((0)) ,
[DateActiveUntil] datetime NOT NULL DEFAULT ('2030-1-1') ,
[BanTime] datetime NULL ,
[BanReason] nvarchar(512) NULL ,
[BanCount] int NOT NULL DEFAULT ((0)) ,
[BanExpireDate] datetime NULL ,
[PremiumExpireTime] datetime NOT NULL DEFAULT ('2013-01-01') ,
[PremiumLastBonus] datetime NOT NULL DEFAULT ('1973-1-1') ,
[ResWood] int NOT NULL DEFAULT ((0)) ,
[ResStone] int NOT NULL DEFAULT ((0)) ,
[ResMetal] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of UsersData
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[UsersInventory]
-- ----------------------------
DROP TABLE [dbo].[UsersInventory]
GO
CREATE TABLE [dbo].[UsersInventory] (
[InventoryID] bigint NOT NULL IDENTITY(1,1) ,
[CustomerID] int NOT NULL ,
[CharID] int NOT NULL DEFAULT ((0)) ,
[BackpackSlot] int NOT NULL DEFAULT ((0)) ,
[ItemID] int NOT NULL ,
[LeasedUntil] datetime NOT NULL ,
[Quantity] int NOT NULL DEFAULT ((1)) ,
[Var1] int NOT NULL DEFAULT ((-1)) ,
[Var2] int NOT NULL DEFAULT ((-1)) ,
[Var3] int NOT NULL DEFAULT ((10000)) 
)


GO

-- ----------------------------
-- Records of UsersInventory
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[Vitalstats_BankReserves]
-- ----------------------------
DROP TABLE [dbo].[Vitalstats_BankReserves]
GO
CREATE TABLE [dbo].[Vitalstats_BankReserves] (
[TimeStamp] datetime NULL ,
[GCBalance] bigint NULL ,
[GDBalance] bigint NULL ,
[GCIntake] bigint NULL ,
[GDIntake] bigint NULL ,
[GCSpend_Store] bigint NULL ,
[GCSpend_Premium] bigint NULL ,
[GCSpend_ServerRent] bigint NULL ,
[GCSpend_GDExchange] bigint NULL ,
[GDSpend] bigint NULL ,
[AccountSales] bigint NULL 
)


GO

-- ----------------------------
-- Records of Vitalstats_BankReserves
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[VitalStats_Economy_V1]
-- ----------------------------
DROP TABLE [dbo].[VitalStats_Economy_V1]
GO
CREATE TABLE [dbo].[VitalStats_Economy_V1] (
[timestamp] datetime NULL ,
[GC_CashSales] float(53) NULL ,
[GC_NewAccounts] float(53) NULL ,
[GC_Spent] float(53) NULL ,
[GC_Survivor] float(53) NULL ,
[GC_Pioneer] float(53) NULL ,
[GC_Legend] float(53) NULL ,
[GC_15] float(53) NULL ,
[GC_25] float(53) NULL ,
[GC_50] float(53) NULL 
)


GO

-- ----------------------------
-- Records of VitalStats_Economy_V1
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[VitalStats_Inventory]
-- ----------------------------
DROP TABLE [dbo].[VitalStats_Inventory]
GO
CREATE TABLE [dbo].[VitalStats_Inventory] (
[RecordID] int NOT NULL IDENTITY(1,1) ,
[Timestamp] datetime NULL ,
[ItemID] int NULL ,
[Category] int NULL ,
[Name] varchar(128) NULL ,
[InBackpack] int NULL ,
[InInventory] int NULL 
)


GO

-- ----------------------------
-- Records of VitalStats_Inventory
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[VitalStats_Retention1]
-- ----------------------------
DROP TABLE [dbo].[VitalStats_Retention1]
GO
CREATE TABLE [dbo].[VitalStats_Retention1] (
[timestamp] date NULL ,
[Survivor] int NULL ,
[Pioneer] int NULL ,
[Legend] int NULL ,
[Guests] int NULL ,
[Pack15] int NULL ,
[Pack25] int NULL ,
[Pack50] int NULL ,
[Steam] int NULL ,
[Rus] int NULL ,
[Active-S] int NULL ,
[Active-P] int NULL ,
[Active-L] int NULL ,
[Active-G] int NULL ,
[Active-15] int NULL ,
[Active-25] int NULL ,
[Active-50] int NULL ,
[Active-Steam] int NULL ,
[Active-RU] int NULL 
)


GO

-- ----------------------------
-- Records of VitalStats_Retention1
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[VitalStats_V1]
-- ----------------------------
DROP TABLE [dbo].[VitalStats_V1]
GO
CREATE TABLE [dbo].[VitalStats_V1] (
[Timestamp] datetime NULL ,
[MAU] int NULL ,
[TotalUsers] int NULL ,
[DAU] int NULL ,
[CCU] int NULL ,
[Revenues] int NULL ,
[MAU_1] int NULL 
)


GO

-- ----------------------------
-- Records of VitalStats_V1
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[XsollaOrders]
-- ----------------------------
DROP TABLE [dbo].[XsollaOrders]
GO
CREATE TABLE [dbo].[XsollaOrders] (
[xOrderID] int NOT NULL IDENTITY(1,1) ,
[xOrderDate] datetime NULL ,
[CustomerID] int NULL ,
[x_id] varchar(128) NOT NULL ,
[x_v1] varchar(255) NULL ,
[x_v2] varchar(255) NULL ,
[x_v3] varchar(255) NULL ,
[x_sum] float(53) NULL ,
[x_date] varchar(32) NULL ,
[IsCancelled] int NOT NULL DEFAULT ((0)) ,
[CancelTime] datetime NULL ,
[Region] int NOT NULL DEFAULT ((0)) ,
[IsBonus] int NOT NULL DEFAULT ((0)) ,
[user_sum] float(53) NOT NULL DEFAULT ((0)) ,
[user_currency] varchar(64) NOT NULL DEFAULT '' ,
[transfer_sum] float(53) NOT NULL DEFAULT ((0)) ,
[transfer_currency] varchar(64) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Records of XsollaOrders
-- ----------------------------

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_BanBySteamChargeback]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_BanBySteamChargeback]
GO
CREATE PROCEDURE [dbo].[ADMIN_BanBySteamChargeback]
	@in_SteamID bigint,
	@in_OrderID int
AS
BEGIN
	SET NOCOUNT ON;

	declare @CustomerID int
	declare @SteamOrderGP int
	select @CustomerID=CustomerID, @SteamOrderGP=GP from SteamGPOrders where OrderID = @in_OrderID and SteamID = @in_SteamID
	if(@@ROWCOUNT = 0) begin
		select @in_OrderID as 'Order not found'
		return
	end
	
	declare @AccountStatus int
	select @AccountStatus=AccountStatus from UsersData where CustomerID=@CustomerID
	if(@AccountStatus <> 100)
		return

	declare @AlterGP int = -@SteamOrderGP
	declare @GPAlterDesc nvarchar(512) = 'CANCEL of STEAM Order ' + convert(varchar(128), @in_OrderID)
	exec FN_AlterUserGP @CustomerID, @AlterGP, 'STEAM_CANCEL', @GPAlterDesc
	
	-- get current balance
	declare @GamePoints int
	select @GamePoints=GamePoints from UsersData where CustomerID=@CustomerID

	-- ban if negative
	if(@GamePoints < 0)
	begin
		declare @BanReason varchar(512) = 'Refunded Steam OrderID:' + convert(varchar(128), @in_OrderID)
		print 'CustomerID:' + convert(varchar(128), @CustomerID) + ' ' + @BanReason
		exec ADMIN_BanUser @CustomerID, @BanReason
	end

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_BanPunkBusters1]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_BanPunkBusters1]
GO
CREATE PROCEDURE [dbo].[ADMIN_BanPunkBusters1]
AS  
BEGIN  
	SET NOCOUNT ON;  
	
	declare @dt1 date = DATEADD(day, -14, GETDATE())

	--
	-- main ban loop
	--
	declare @CustomerID int
	
	DECLARE t_cursor CURSOR FOR 
		select l.CustomerID from DBG_SrvLogInfo l
			join UsersData d on d.CustomerID=l.CustomerID
			where cheatid=31 and ReportTime>=@dt1 and data like '%permanent%' and d.AccountStatus<200
			group by l.CustomerID

	OPEN t_cursor
	FETCH NEXT FROM t_cursor into @CustomerID
	while @@FETCH_STATUS = 0 
	begin
		declare @AccountStatus int
		
		-- start banning
		select @AccountStatus=AccountStatus from dbo.UsersData where CustomerID=@CustomerID

		if(@AccountStatus = 100)
		begin
			declare @BanReason varchar(512) = ''
			set @BanReason = 'PunkBuster permanent ban'
			
			print @CustomerID
			print @BanReason
			exec ADMIN_BanUser @CustomerID, @BanReason
		end
		
		FETCH NEXT FROM t_cursor into @CustomerID
	end
	close t_cursor
	deallocate t_cursor

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_BanPunkBusters2]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_BanPunkBusters2]
GO
CREATE PROCEDURE [dbo].[ADMIN_BanPunkBusters2]
AS  
BEGIN  
	SET NOCOUNT ON;  
	
	declare @dt1 date = DATEADD(day, -14, GETDATE())

	--
	-- main ban loop
	--
	declare @CustomerID int
	
	DECLARE t_cursor CURSOR FOR 
		select l.CustomerID from DBG_SrvLogInfo l
			join UsersData d on d.CustomerID=l.CustomerID
			where cheatid=31 and ReportTime>=@dt1 and data like '%2880%violation%' and d.AccountStatus<200
			group by l.CustomerID
			having count(*) > 30

	OPEN t_cursor
	FETCH NEXT FROM t_cursor into @CustomerID
	while @@FETCH_STATUS = 0 
	begin
		declare @AccountStatus int
		
		-- start banning
		select @AccountStatus=AccountStatus from dbo.UsersData where CustomerID=@CustomerID

		if(@AccountStatus = 100)
		begin
			declare @BanReason varchar(512) = ''
			set @BanReason = '30 PunkBuster violation (48hrs) kicks'
			
			--print @CustomerID
			--print @BanReason
			exec ADMIN_BanUser @CustomerID, @BanReason
		end
		
		FETCH NEXT FROM t_cursor into @CustomerID
	end
	close t_cursor
	deallocate t_cursor

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_BanUser]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_BanUser]
GO
CREATE PROCEDURE [dbo].[ADMIN_BanUser]
	@in_CustomerID int,
	@in_BanReason nvarchar(256),
	@in_OptPermaBan int=1, -- by default we now perma ban
	@in_OptBanFromGameblocks int=0 -- if this ban is coming from gameblocks system
AS
BEGIN
	SET NOCOUNT ON;
	if(LEN(@in_BanReason) < 4) begin
		select 'GIVE PROPER REASON'
		return
	end

	set @in_OptPermaBan = 1 -- always perma ban (workaround for bug on server that wasn't perma banning players)

	declare @email varchar(128)
	select @email=email from dbo.Accounts where CustomerID=@in_CustomerID

	-- do not ban multiple times
	declare @AccountStatus int = 0
	declare @AccountType int = 0
	declare @BanCount int = 0
	declare @BanReason nvarchar(512)
	select 
		@AccountStatus=AccountStatus, 
		@accountType=AccountType,
		@BanCount=BanCount, 
		@BanReason=BanReason 
	from UsersData where CustomerID=@in_CustomerID
	if(@AccountStatus = 200 or (@AccountStatus = 201 and @in_OptPermaBan=0)) begin
		select 0 as ResultCode, 'already banned' as ResultMsg, @email as 'email'
		return
	end
	
	-- do not allow gameblocks to ban russian players, they will only kick them from US\EU servers
	--if(@in_OptBanFromGameblocks=1 AND (@AccountType>=50 AND @AccountType<=59)) begin
	--	select 0 as ResultCode, 'cannot ban USSR player' as ResultMsg
	--	return
	--end
	

	-- clear his login session
	update dbo.LoginSessions set SessionID=0 where CustomerID=@in_CustomerID
	
	-- set his all alive chars to respawned mode
	update dbo.UsersChars set Alive=2 where CustomerID=@in_CustomerID and Alive=1

	if(@BanReason is null) set @BanReason = @in_BanReason
	else                   set @BanReason = @in_BanReason + ', ' + @BanReason

	-- guest ban, permament
	if(@AccountType	= 3) begin
		set @BanReason = '[GUEST_BAN] ' + @BanReason
		set @BanCount  = 99;
	end
	
	-- ban
	if(@BanCount > 0 or @in_OptPermaBan=1) 
	begin
		insert into dbo.DBG_BanLog values (@in_CustomerID, GETDATE(), 2000, @in_BanReason)

		update UsersData set 
			AccountStatus=200, 
			BanReason=@BanReason, 
			BanTime=GETDATE(),
			BanCount=(BanCount+1),
			BanExpireDate='2030-1-1'
			where CustomerID=@in_CustomerID
			
		select 0 as ResultCode, 'Permanent BAN' as ResultMsg, @email as 'email', @BanReason as 'BanReason'

		-- change leadership of clan if customer had chars who was clan leaders
		exec WZ_ClanFN_OnCustomerBanned @in_CustomerID

		return
	end
	else
	begin
		declare @BanTime int = 72

		insert into dbo.DBG_BanLog values (@in_CustomerID, GETDATE(), @BanTime, @in_BanReason)

		update UsersData set 
			AccountStatus=201, 
			BanReason=@BanReason, 
			BanTime=GETDATE(),
			BanCount=(BanCount+1),
			BanExpireDate=DATEADD(hour, @BanTime, GETDATE())
			where CustomerID=@in_CustomerID

		select 0 as ResultCode, 'temporary ban' as ResultMsg, @email as 'email', @BanReason as 'BanReason'
		return
	end
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_BanWeaponHackers1]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_BanWeaponHackers1]
GO
CREATE PROCEDURE [dbo].[ADMIN_BanWeaponHackers1]
AS  
BEGIN  
	SET NOCOUNT ON;  
	declare @hacks TABLE 
	(
		CustomerID int,
		data varchar(512)
	)
	
	declare @dt1 date = DATEADD(day, -7, GETDATE())

	-- select all hack attempts to table
	insert into @hacks 
		select CustomerID, data from DBG_SrvLogInfo where 
			ReportTime >= @dt1 and IsProcessed=0 and CheatID=5 and (data like 'id:%')

	-- clear them
	update DBG_SrvLogInfo set IsProcessed=1 where
		ReportTime >= @dt1 and IsProcessed=0 and CheatID=5

	--
	-- main ban loop
	--
	declare @CustomerID int
	declare @HackData varchar(512)
	
	DECLARE t_cursor CURSOR FOR 
		select customerid, data from @hacks 

	OPEN t_cursor
	FETCH NEXT FROM t_cursor into @CustomerID, @HackData
	while @@FETCH_STATUS = 0 
	begin
		declare @AccountStatus int
		
		-- start banning
		select @AccountStatus=AccountStatus from dbo.UsersData where CustomerID=@CustomerID

		if(@AccountStatus = 100)
		begin
			declare @BanReason varchar(512) = ''
			set @BanReason = 'WH[' + 
				convert(varchar(128), MONTH(GETDATE())) + 
				'/' + 
				convert(varchar(128), DAY(GETDATE())) + 
				'] ' + @HackData
			
			print @CustomerID
			print @BanReason
			exec ADMIN_BanUser @CustomerID, @BanReason
		end
		
		FETCH NEXT FROM t_cursor into @CustomerID, @HackData
	end
	close t_cursor
	deallocate t_cursor

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_BanWeaponHackers2]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_BanWeaponHackers2]
GO
CREATE PROCEDURE [dbo].[ADMIN_BanWeaponHackers2]
AS  
BEGIN  
	SET NOCOUNT ON;  
	declare @hacks TABLE 
	(
		CustomerID int,
		data varchar(512)
	)
	
	declare @dt1 date = DATEADD(day, -7, GETDATE())

	-- select all hack attempts to table
	insert into @hacks 
		select CustomerID, data from DBG_SrvLogInfo where 
			ReportTime >= @dt1 and IsProcessed=0 and CheatID=27

	-- clear them
	update DBG_SrvLogInfo set IsProcessed=1 where
		ReportTime >= @dt1 and IsProcessed=0 and CheatID=27

	--
	-- main ban loop
	--
	declare @CustomerID int
	declare @HackData varchar(512)
	
	DECLARE t_cursor CURSOR FOR 
		select customerid, data from @hacks 

	OPEN t_cursor
	FETCH NEXT FROM t_cursor into @CustomerID, @HackData
	while @@FETCH_STATUS = 0 
	begin
		declare @AccountStatus int
		
		-- start banning
		select @AccountStatus=AccountStatus from dbo.UsersData where CustomerID=@CustomerID

		if(@AccountStatus = 100)
		begin
			declare @BanReason varchar(512) = ''
			set @BanReason = 'ReloadHack[' + 
				convert(varchar(128), MONTH(GETDATE())) + 
				'/' + 
				convert(varchar(128), DAY(GETDATE())) + 
				'] ' + @HackData
			
			print @CustomerID
			print @BanReason
			-- NOPENOPENOPE - there is a bug with reload. exec ADMIN_BanUser @CustomerID, @BanReason
		end
		
		FETCH NEXT FROM t_cursor into @CustomerID, @HackData
	end
	close t_cursor
	deallocate t_cursor

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_CharAddEXP]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_CharAddEXP]
GO
CREATE PROCEDURE [dbo].[ADMIN_CharAddEXP]
	@in_CharID int,
	@in_XP int
AS
BEGIN
	SET NOCOUNT ON;

	-- add xp
	update UsersChars set XP=XP+@in_XP where CharID=@in_CharID
	if(@@ROWCOUNT = 0) begin
		select 'No such gamertag found' as ResultMsg
		return
	end
	
	declare @XP int
	declare @Gamertag nvarchar(64)
	select @XP=XP, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID

	declare @msg varchar(512) = 'Gamertag: "' + @Gamertag + '", Current XP: ' + convert(varchar(512), @XP)
	select @msg as ResultMsg
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_CharRename]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_CharRename]
GO
CREATE PROCEDURE [dbo].[ADMIN_CharRename] 
	@in_currentName nvarchar(64),
	@in_newName nvarchar(64)
AS
BEGIN
	SET NOCOUNT ON;

	if(@in_newName like '%sergey%titov%') begin
		select 'no impersonation' as ResultMsg
		return
	end

	if(@in_newName like '%sergi%titov%') begin
		select 'no impersonation' as ResultMsg
		return
	end

	if(@in_newName like '%titov%sergey%') begin
		select 'no impersonation' as ResultMsg
		return
	end
	
	if(@in_newName like '%\[dev\]%' escape '\') begin
		select 'no dev' as ResultMsg
		return
	end
	
	-- check if gamertag is unique
	if exists (select CharID from UsersChars where Gamertag=@in_newName)
	begin
		select 'Gamertag already exists' as ResultMsg
		return
	end

	if not exists (select CharID from UsersChars where Gamertag=@in_currentName)
	begin
		select 'No such gamertag found' as ResultMsg
		return
	end

	update UsersChars 
	set Gamertag=@in_newName
	where Gamertag=@in_currentName

	select 'Gamertag was changed' as ResultMsg
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[ADMIN_UnbanUser]
-- ----------------------------
DROP PROCEDURE [dbo].[ADMIN_UnbanUser]
GO
CREATE PROCEDURE [dbo].[ADMIN_UnbanUser]
	@in_CustomerID int,
	@in_UnbanReason nvarchar(256)
AS
BEGIN
	SET NOCOUNT ON;
	
	if(LEN(@in_UnbanReason) < 4) begin
		select 'GIVE PROPER REASON'
		return
	end

	-- do not update ban reason, to be able to see later that he was unbanned previously
	UPDATE [dbo].[UsersData]
		SET [AccountStatus] = 100
		,[BanTime] = null
		,[BanCount] = 0
		,[BanExpireDate] = null
	WHERE [CustomerID]=@in_CustomerID

	-- log unban as well
	insert into dbo.DBG_BanLog values (@in_CustomerID, GETDATE(), -1, @in_UnbanReason)

	select 0 as ResultCode
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[DB_PurgeServerObjects]
-- ----------------------------
DROP PROCEDURE [dbo].[DB_PurgeServerObjects]
GO
CREATE PROCEDURE [dbo].[DB_PurgeServerObjects]
AS
BEGIN
	SET NOCOUNT ON;

	-- expired not-used server objects
	delete from ServerObjects where DATEDIFF(day, ExpireUtcDate, GETUTCDATE()) > 14
	
	-- lockboxes from banned players
	declare @ServerObjectID int
	
	DECLARE t_cursor CURSOR FOR 
		select o.ServerObjectID from ServerObjects o
		join UsersData d on d.CustomerID=o.CustomerID
		where o.ItemID=101348 and d.AccountStatus>=200 and DATEDIFF(day, d.BanTime, GETDATE()) > 7

	OPEN t_cursor
	FETCH NEXT FROM t_cursor into @ServerObjectID
	while @@FETCH_STATUS = 0 
	begin
		print @ServerObjectID
		delete from ServerObjects where ServerObjectID=@ServerObjectID
		
		FETCH NEXT FROM t_cursor into @ServerObjectID
	end
	close t_cursor
	deallocate t_cursor
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[DB_PurgeUnusedUserData]
-- ----------------------------
DROP PROCEDURE [dbo].[DB_PurgeUnusedUserData]
GO
-- =============================================
-- Author:		Denis Zhulitov
-- Create date: 03/15/2011
-- Description:	deleting unused records from tables if user record was deleted
-- =============================================
CREATE PROCEDURE [dbo].[DB_PurgeUnusedUserData]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	delete from Profile_Chars
	where not exists (select * from LoginID where LoginID.CustomerID = Profile_Chars.CustomerID)
	select @@RowCount as Deleted, 'Profile_Chars' as FromTable

	delete from ProfileData
	where not exists (select * from LoginID where LoginID.CustomerID = ProfileData.CustomerID)
	select @@RowCount as Deleted, 'ProfileData' as FromTable

	delete from Stats
	where not exists (select * from LoginID where LoginID.CustomerID = Stats.CustomerID)
	select @@RowCount as Deleted, 'Stats' as FromTable

	delete from Logins
	where not exists (select * from LoginID where LoginID.CustomerID = Logins.CustomerID)
	select @@RowCount as Deleted, 'Logins' as FromTable

	delete from Inventory
	where not exists (select * from LoginID where LoginID.CustomerID = Inventory.CustomerID)
	select @@RowCount as Deleted, 'Inventory' as FromTable

	delete from Inventory_FPS
	where not exists (select * from LoginID where LoginID.CustomerID = Inventory_FPS.CustomerID)
	select @@RowCount as Deleted, 'Inventory_FPS' as FromTable

	--delete from SteamUserIDMap
	--where not exists (select * from LoginID where LoginID.CustomerID = SteamUserIDMap.CustomerID)
	--select @@RowCount as Deleted, 'SteamUserIDMap' as FromTable

	--delete from GamersfirstUserIDMap
	--where not exists (select * from LoginID where LoginID.CustomerID = GamersfirstUserIDMap.CustomerID)
	--select @@RowCount as Deleted, 'GamersfirstUserIDMap' as FromTable
	
	-- purge inventory
	declare @InvCleanDate datetime = DATEADD(day, -30, GETDATE())
	delete from Inventory where LeasedUntil<@InvCleanDate
	delete from Inventory_FPS where LeasedUntil<@InvCleanDate
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[DBG_RegisterIISCall]
-- ----------------------------
DROP PROCEDURE [dbo].[DBG_RegisterIISCall]
GO
CREATE PROCEDURE [dbo].[DBG_RegisterIISCall]
	@in_API	varchar(128),
	@in_BytesIn int,
	@in_BytesOut int
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode
	/*
	update DBG_IISApiStats set Hits=Hits+1, BytesIn=BytesIn+@in_BytesIn, BytesOut=BytesOut+@in_BytesOut where API=@in_API
	if(@@ROWCOUNT = 0) begin
		insert into DBG_IISApiStats	values (
			@in_API,
			1,
			@in_BytesIn,
			@in_BytesOut
		)
	end
	*/

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[DBG_StoreApiCall]
-- ----------------------------
-- ----------------------------
-- Procedure structure for [dbo].[DBG_StoreApiCall]
-- ----------------------------
DROP PROCEDURE [dbo].[DBG_StoreApiCall]
GO
CREATE PROCEDURE [dbo].[DBG_StoreApiCall]
	@in_API	varchar(128),
	@in_Failed int,
	@in_CustomerID int,
	@in_CharID int,
	@in_Var1 bigint = -1,
	@in_Var2 bigint = -1,
	@in_Var3 bigint = -1,
	@in_Var4 bigint = -1,
	@in_Var5 bigint = -1,
	@in_Var6 bigint = -1
AS
BEGIN
	SET NOCOUNT ON;

	if(@in_Failed = 0)
		return
	insert into DBG_ApiCalls (RecordDate, Func, IsError, CustomerID, CharID, Var1, Var2, Var3, Var4, Var5, Var6) values (
		GETDATE(), @in_API, @in_Failed, @in_CustomerID, @in_CharID, 
		@in_Var1, @in_Var2, @in_Var3, @in_Var4, @in_Var5, @in_Var6
	)

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_ADD_SECURITY_LOG]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_ADD_SECURITY_LOG]
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[FN_ADD_SECURITY_LOG] 
	-- Add the parameters for the stored procedure here
	@EventID int,
	@IP varchar(64),
	@CustomerID int,
	@EventData varchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO SecurityLog
		(EventID, Date, IP, CustomerID, EventData) 
	VALUES 
		(@EventID, GETDATE(), @IP, @CustomerID, @EventData)

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_AddFullItemToUser]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_AddFullItemToUser]
GO
CREATE PROCEDURE [dbo].[FN_AddFullItemToUser]
	@in_CustomerID int,
	@in_ItemID int,
	@in_Quantity int,
	@in_Var1 int,
	@in_Var2 int,
	@in_Var3 int
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO UsersInventory (
		CustomerID,
		CharID,
		ItemID, 
		LeasedUntil, 
		Quantity,
		Var1,
		Var2,
		Var3
	)
	VALUES (
		@in_CustomerID,
		0,
		@in_ItemID,
		DATEADD(day, 2000, GETDATE()),
		@in_Quantity,
		@in_Var1,
		@in_Var2,
		@in_Var3
	)
	
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_AddItemToUser]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_AddItemToUser]
GO
CREATE PROCEDURE [dbo].[FN_AddItemToUser]
	@in_CustomerID int,
	@in_ItemID int,
	@in_ExpDays int
AS
BEGIN
	SET NOCOUNT ON;

	declare @InventoryID bigint = 0
	declare @LeasedUntil datetime
	declare @CurDate datetime = GETDATE()
	
	-- check if this is stackable item, if so - get buying stack size.
	-- stackable item defined where NumClips>0, Quantity is ClipSize
	declare @BuyStackSize int = 1
	select @BuyStackSize=ClipSize from Items_Weapons where ItemID=@in_ItemID and NumClips>0
	
	-- see if we already have that item in inventory without modification vars
	select @InventoryID=InventoryID, @LeasedUntil=LeasedUntil from UsersInventory 
		where (CustomerID=@in_CustomerID and CharID=0 and ItemID=@in_ItemID and Var1<0 and Var2<0 and Var3=10000)
	if(@InventoryID = 0) 
	begin
		INSERT INTO UsersInventory (
			CustomerID,
			CharID,
			ItemID, 
			LeasedUntil, 
			Quantity
		)
		VALUES (
			@in_CustomerID,
			0,
			@in_ItemID,
			DATEADD(day, @in_ExpDays, @CurDate),
			@BuyStackSize
		)
		return
	end
       
	if(@LeasedUntil < @CurDate)
		set @LeasedUntil = DATEADD(day, @in_ExpDays, @CurDate)
	else
		set @LeasedUntil = DATEADD(day, @in_ExpDays, @LeasedUntil)
		
	if(@LeasedUntil > '2020-1-1')
		set @LeasedUntil = '2020-1-1'

	-- all items is stackable by default
	UPDATE UsersInventory SET 
		LeasedUntil=@LeasedUntil,
		Quantity=(Quantity+@BuyStackSize)
	WHERE InventoryID=@InventoryID
	
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_AlterUserGP]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_AlterUserGP]
GO
CREATE PROCEDURE [dbo].[FN_AlterUserGP]
	@in_CustomerID int,
	@in_GP int,
	@in_Reason varchar(64),
	@in_Description nvarchar(512) = N''
AS
BEGIN
	SET NOCOUNT ON;
	
	--GP can be 0 (xsolla bonus items, for example), so we just store transaction into the log
	--if(@in_GP = 0)
	--	return
		
	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@in_CustomerID
	
	if(@in_Description = N'') set @in_Description = @in_Reason

	insert into DBG_GPTransactions (
		CustomerID,
		TransactionTime,
		Amount,
		Reason,
		Previous,
		TransactionDesc
	) values (
		@in_CustomerID,
		GETDATE(),
		@in_GP,
		@in_Reason,
		@GamePoints,
		@in_Description
	)
	
	update UsersData set GamePoints=(GamePoints + @in_GP) where CustomerID=@in_CustomerID

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_BackpackValidateItem]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_BackpackValidateItem]
GO
CREATE PROCEDURE [dbo].[FN_BackpackValidateItem] 
	@in_CharID int,
	@in_ItemID int,
	@in_EquipIdx int
AS
BEGIN
	SET NOCOUNT ON;
	
	if @in_ItemID = 0
		return 0

	if not exists (SELECT ItemID from UsersBackpack WHERE CharID=@in_CharID and ItemID=@in_ItemID and LeasedUntil>GETDATE()) begin
		return 0
	end

	-- item is valid
	return @in_ItemID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_CreateMD5Password]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_CreateMD5Password]
GO
CREATE PROCEDURE [dbo].[FN_CreateMD5Password]
	@in_Password varchar(100),
	@out_MD5 varchar(32) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	declare @PASSWORD_SALT varchar(100) = 'g5sc4gs1fz0h'
	set @out_MD5 = SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('md5', @PASSWORD_SALT + @in_Password)), 3, 999)
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_IsItemStackable]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_IsItemStackable]
GO
CREATE PROCEDURE [dbo].[FN_IsItemStackable]
	@in_ItemID int,
	@in_movingToGI int
AS
BEGIN
	SET NOCOUNT ON;

	-- find item category
	declare @Category int = 0
	declare @WpnAttachType int = 0
	if(@in_ItemID >= 20000 and @in_ItemID < 99999)
		SELECT @Category=Category FROM Items_Gear where ItemID=@in_ItemID
	else
	if(@in_ItemID >= 100000 and @in_ItemID < 190000)
		SELECT @Category=Category FROM Items_Weapons where ItemID=@in_ItemID
	else 
	if(@in_ItemID >= 300000 and @in_ItemID < 390000) 
		SELECT @Category=Category FROM Items_Generic where ItemID=@in_ItemID
	else 
	if(@in_ItemID >= 400000 and @in_ItemID < 490000) 
		SELECT @Category=Category, @WpnAttachType=Type FROM Items_Attachments where ItemID=@in_ItemID
		
	
	-- everything except weapons is stackable in GI
	if(@in_movingToGI > 0)
	begin
		-- itm->category >= storecat_ASR && itm->category <= storecat_SMG
		--if(@Category >= 20 and @Category <= 26)
		--	return 0
		return 1
	end
	
	--
	-- moving to backpack
	--
	
	--  case storecat_FPSAttachment and WPN_ATTM_CLIP
	if(@Category = 19 and @WpnAttachType = 4) return 1
	--	case storecat_UsableItem:
	if(@Category = 28) return 1
	--	case storecat_Food:
	if(@Category = 30) return 1
	--	case storecat_Water:
	if(@Category = 33) return 1
	--	case storecat_GRENADE:
	if(@Category = 27) return 1
	--	case storecat_Components:
	if(@Category = 50) return 1
	--	case storecat_CraftRecipe:
	if(@Category = 51) return 1

	return 0
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[FN_LevelUpBonus]
-- ----------------------------
DROP PROCEDURE [dbo].[FN_LevelUpBonus]
GO
CREATE PROCEDURE [dbo].[FN_LevelUpBonus] 
       @in_CustomerID int,
       @in_LevelUp int
AS
BEGIN
	SET NOCOUNT ON;

	declare @gd int = 0 -- level up bonus
	declare @sp int = 1 -- always give at least one SP

	-- not implemented yet

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[TEMP_AddGPToUser]
-- ----------------------------
DROP PROCEDURE [dbo].[TEMP_AddGPToUser]
GO
CREATE PROCEDURE [dbo].[TEMP_AddGPToUser]
	@in_email varchar(128),
	@in_GP int
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	-- used in account.thewarz.com/admin/gpadd
	-- 
	
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from dbo.Accounts where email=@in_email
	if(@@ROWCOUNT = 0) begin
		select 0 as 'CustomerID'
		return
	end
		
	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@CustomerID

	insert into DBG_GPTransactions (
		CustomerID,
		TransactionTime,
		Amount,
		Reason,
		Previous
	) values (
		@CustomerID,
		GETDATE(),
		@in_GP,
		'ADMIN_ADD',
		@GamePoints
	)
	
	update UsersData set GamePoints=(GamePoints + @in_GP) where CustomerID=@CustomerID
	select @CustomerID as 'CustomerID', (@GamePoints+@in_GP) as 'GamePoints'

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_APPLYKEY]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_APPLYKEY]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_APPLYKEY]
	@in_CustomerID int,
	@in_SerialKey varchar(128)
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @AccountType int = -1
	select @AccountType=AccountType from dbo.UsersData where CustomerID=@in_CustomerID
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'no user' as ResultMsg;
		return
	end
	
	-- only guest accounts can be extended
	if(@AccountType <> 3 and @AccountType <> 7 and @AccountType <> 50 and @AccountType <> 20 and @AccountType <> 21) begin
		select 2 as ResultCode, 'bad account type' as ResultMsg;
		return
	end
	
	--
	-- add new return codes in CUpdater::DoApplyNewKey
	--
	
-- check for serial key
	declare @keyResultCode int = 99
	declare @keyCustomerID int = 99
	declare @keySerialType int = 99
	exec [BreezeNet].[dbo].[BN_WarZ_SerialGetInfo]
		@in_SerialKey,
		'email@not.used',
		@keyResultCode out,
		@keyCustomerID out,
		@keySerialType out

	if(@keyResultCode <> 0) begin
		select 3 as ResultCode, 'Serial not valid' as ResultMsg;
		return
	end
	if(@keyCustomerID > 0) begin
		select 4 as ResultCode, 'Serial already used' as ResultMsg;
		return
	end

-- we can't use guest keys for upgrade
	if(@keySerialType = 3 or @keySerialType = 50) begin
		select 4 as ResultCode, 'no guest upgrade' as ResultMsg;
		return
	end
	
-- update account type and expiration time
	declare @DateActiveUntil datetime = '2030-1-1'
	if(@keySerialType = 3 or @keySerialType = 50) begin
		-- guest accounts have 24hrs play time (sync with [WZ_ACCOUNT_CREATE])
		set @DateActiveUntil = DATEADD(hour, 24, GETDATE())
	end
	if(@keySerialType = 7) begin
		-- warinc guest accounts have 7days play time (sync with [WZ_ACCOUNT_CREATE])
		set @DateActiveUntil = DATEADD(hour, 168, GETDATE())
	end
	update UsersData set DateActiveUntil=@DateActiveUntil, AccountType=@keySerialType where CustomerID=@in_CustomerID
	
-- register CustomerID in BreezeNet
	exec [BreezeNet].[dbo].[BN_WarZ_SerialSetCustomerID] @in_SerialKey, @in_CustomerID
	
	-- log upgrade
	insert into DBG_AccountsUpgrade (CustomerID, PrevAccountType, AccountType, UpgradeTime)
		values (@in_CustomerID, @AccountType, @keySerialType, GETDATE())

	-- BONUSES
	exec WZ_ACCOUNT_FN_GiveBonus @in_CustomerID, @keySerialType
	
	-- success
	select 0 as ResultCode
	select @in_CustomerID as CustomerID, @keySerialType as 'AccountType'

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_ChangeEmail]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_ChangeEmail]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_ChangeEmail]
	@in_OldEmail varchar(128),
	@in_NewEmail varchar(128)
AS
BEGIN
	SET NOCOUNT ON;
	
	if(exists(select email from Accounts where email=@in_NewEmail)) begin
		select 6 as ResultCode, 'new email already in use' as ResultMsg
		return
	end

	declare @CustomerID int = 0
	select @CustomerID=CustomerID from Accounts where email=@in_OldEmail
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'customer email is not found' as ResultMsg
		return
	end

	-- replace email
	update Accounts set email=@in_NewEmail where CustomerID=@CustomerID
	
	select 0 as ResultCode, 'email changed successfully' as ResultMsg
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_ChangePassword]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_ChangePassword]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_ChangePassword]
	@in_CustomerID int, 
	@in_NewPassword varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @email varchar(128) = ''
	select @email=email from Accounts where CustomerID=@in_CustomerID

	-- update new password
	declare @MD5FromPwd varchar(100)
	exec FN_CreateMD5Password @in_NewPassword, @MD5FromPwd OUTPUT
	update Accounts set MD5Password=@MD5FromPwd where CustomerID=@in_CustomerID
	
	insert into DBG_PasswordResets (
		CustomerID,
		ResetDate,
		NewPassword
	) values (
		@in_CustomerID,
		GETDATE(),
		@in_NewPassword
	)

	select 0 as ResultCode, @email as 'email'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_CREATE]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_CREATE]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_CREATE]
	@in_IP varchar(64),
	@in_Email varchar(128),
	@in_Password varchar(64),
	@in_ReferralID int,
	@in_SerialKey varchar(128),
	@in_SerialEmail varchar(128)
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	-- NOTE: add new ResultCodes to updater CUpdater::CreateAccThreadEntry
	--
	

-- check for serial key
	--declare @keyResultCode int = 99
	--declare @keyCustomerID int = 99
	--declare @keySerialType int = 99
	--exec [BreezeNet].[dbo].[BN_WarZ_SerialGetInfo]
		--@in_SerialKey,
		--@in_SerialEmail,
		--@keyResultCode out,
		--@keyCustomerID out,
		--@keySerialType out
		
	--if(@keyResultCode <> 0 or @keyCustomerID > 0) begin
		--select 3 as ResultCode, 'Serial not valid' as ResultMsg;
		--return
	--end
	
	declare @keySerialType int = 2

-- check if that account was created and refunded before (status 999)
	declare @RefundCustomerID int = 0
	select @RefundCustomerID=CustomerID from Accounts WHERE email=@in_Email and AccountStatus=999
	if(@RefundCustomerID > 0) begin
		-- change email to some unique one so it can be used again.
		declare @dateTime varchar(128)
		set @dateTime = REPLACE(CONVERT(VARCHAR, GETDATE(),111),'/','') + REPLACE(CONVERT(VARCHAR, GETDATE(),108),':','')
		declare @refundedEmail varchar(128) = '(' + @dateTime + ') ' + @in_Email
		update Accounts set email=@refundedEmail where CustomerID=@RefundCustomerID
	end
	
-- validate that email is unique
	if exists (SELECT CustomerID from Accounts WHERE email=@in_Email) begin
		select 2 as ResultCode, 'Email already in use' as ResultMsg;
		return;
	end
	
-- create user
	declare @MD5FromPwd varchar(100)
	exec FN_CreateMD5Password @in_Password, @MD5FromPwd OUTPUT
	INSERT INTO Accounts ( 
		email,
		MD5Password,
		dateregistered,
		ReferralID,
		lastlogindate,
		lastloginIP
	) VALUES (
		@in_EMail,
		@MD5FromPwd,
		GETDATE(),
		@in_ReferralID,
		GETDATE(),
		@in_IP
	)

	-- get new CustomerID
	declare @CustomerID int
	SELECT @CustomerID=CustomerID from Accounts where email=@in_Email

-- create all needed user tables
	INSERT INTO UsersData (
		CustomerID,
		AccountType,
		dateregistered
	) VALUES (
		@CustomerID,
		@keySerialType,
		GETDATE()
	)
	
	if(@keySerialType = 3 or @keySerialType = 50) begin
		-- guest accounts have 24hrs play time (sync with WZ_ACCOUNT_APPLYKEY also)
		declare @DateActiveUntil datetime = DATEADD(hour, 24, GETDATE())
		update UsersData set DateActiveUntil=@DateActiveUntil where CustomerID=@CustomerID
	end
	if(@keySerialType = 7) begin
		-- warinc guest accounts have 7days play time (sync with WZ_ACCOUNT_APPLYKEY also)
		set @DateActiveUntil = DATEADD(hour, 168, GETDATE())
		update UsersData set DateActiveUntil=@DateActiveUntil where CustomerID=@CustomerID
	end
	
-- register CustomerID in BreezeNet
	exec [BreezeNet].[dbo].[BN_WarZ_SerialSetCustomerID] @in_SerialKey, @CustomerID

-- default items and bonuses for account types

	exec FN_AddItemToUser @CustomerID, 20174, 2000 -- hero: regular guy
	exec FN_AddItemToUser @CustomerID, 20184, 2000 -- hero: girl

	-- CBT TEST HEROES
	--exec FN_AddItemToUser @CustomerID, 20182, 2000
	--exec FN_AddItemToUser @CustomerID, 20184, 2000
	--exec FN_AddItemToUser @CustomerID, 20189, 2000
	--exec FN_AddItemToUser @CustomerID, 20193, 2000
	--exec FN_AddItemToUser @CustomerID, 20194, 2000
	--exec FN_AddItemToUser @CustomerID, 20195, 2000

	-- 10 of each
	--declare @i int = 0
	--while(@i < 10) begin
	--	set @i = @i + 1

	--	exec FN_AddItemToUser @CustomerID, 101306, 2000 -- Flashlight
	--	exec FN_AddItemToUser @CustomerID, 101261, 2000 -- Bandages
	--	exec FN_AddItemToUser @CustomerID, 101296, 2000 -- Can of Soda
	--	exec FN_AddItemToUser @CustomerID, 101289, 2000 -- Granola Bar
	--end

	-- BONUSES for packages
	exec WZ_ACCOUNT_FN_GiveBonus @CustomerID, @keySerialType

	-- STEAM accounts
	--if(@keySerialType = 10) begin
	--	-- basic STEAM account - no bonuses
	--end
	
	-- success
	select 0 as ResultCode
	select @CustomerID as CustomerID, @keySerialType as 'AccountType'

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_CREATE_TRIAL]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_CREATE_TRIAL]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_CREATE_TRIAL]
	@in_IP varchar(64),
	@in_Email varchar(128),
	@in_Password varchar(64),
	@in_ReferralID int = 0,
	@in_AccType int = 20
AS
BEGIN
	SET NOCOUNT ON;
	
	if(@in_AccType <> 20 and @in_AccType <> 21) begin
		select 6 as ResultCode, 'invalid acctype' as ResultMsg;
		return;
	end
	
-- validate that email is unique
	if exists (SELECT CustomerID from Accounts WHERE email=@in_Email) begin
		select 2 as ResultCode, 'Email already in use' as ResultMsg;
		return;
	end
	
-- create user
	declare @MD5FromPwd varchar(100)
	exec FN_CreateMD5Password @in_Password, @MD5FromPwd OUTPUT
	INSERT INTO Accounts ( 
		email,
		MD5Password,
		dateregistered,
		ReferralID,
		lastlogindate,
		lastloginIP
	) VALUES (
		@in_EMail,
		@MD5FromPwd,
		GETDATE(),
		@in_ReferralID,
		GETDATE(),
		@in_IP
	)

	-- get new CustomerID
	declare @CustomerID int
	SELECT @CustomerID=CustomerID from Accounts where email=@in_Email

-- create all needed user tables
	INSERT INTO UsersData (
		CustomerID,
		AccountType,
		dateregistered
	) VALUES (
		@CustomerID,
		@in_AccType,
		GETDATE()
	)
	
-- default items and bonuses for account types
	exec FN_AddItemToUser @CustomerID, 20174, 2000 -- hero: regular guy
	exec FN_AddItemToUser @CustomerID, 20184, 2000 -- hero: girl

-- success
	select 0 as ResultCode
	select @CustomerID as CustomerID, @in_AccType as 'AccountType'

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_DELETE]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_DELETE]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_DELETE]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- success
	select 0 as ResultCode
	
	delete from dbo.UsersChars where CustomerID=@in_CustomerID
	delete from dbo.UsersData where CustomerID=@in_CustomerID
	delete from dbo.UsersInventory where CustomerID=@in_CustomerID
	
	update dbo.Accounts set AccountStatus=999 where CustomerID=@in_CustomerID

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_FN_GiveBonus]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_FN_GiveBonus]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_FN_GiveBonus]
	@in_CustomerID int,
	@in_SerialType int
AS
BEGIN
	SET NOCOUNT ON;

-- BONUSES for packages
	if(@in_SerialType = 0) begin
		-- legend package, 30$ 1GC=142
		update UsersData set GamePoints=(GamePoints+4260) where CustomerID=@in_CustomerID
	end
	if(@in_SerialType = 1) begin
		-- pioneer package, 15$ 1GC=142
		update UsersData set GamePoints=(GamePoints+2139) where CustomerID=@in_CustomerID
	end

	if(@in_SerialType = 5) begin
		-- 05-12-2013 $40 package, 3750 GC
		exec FN_AlterUserGP @in_CustomerID, 3750, '25$ worth in Gold Credits'
	end
	if(@in_SerialType = 6) begin
		-- 05-12-2013 $60 package, 7500 GC
		exec FN_AlterUserGP @in_CustomerID, 8000, '$50 worth in Gold Credits'
	end

	-- STEAM accounts
	--if(@in_SerialType = 10) begin
	--	-- basic STEAM account - no bonuses
	--end

	if(@in_SerialType = 52) begin
		-- RUS Pack2
		exec FN_AlterUserGP @in_CustomerID, 4000, 'RUS Pack2'
	end
	if(@in_SerialType = 53) begin
		-- RUS Pack3
		exec FN_AlterUserGP @in_CustomerID, 6600, 'RUS Pack3'
	end
	if(@in_SerialType = 54) begin
		-- RUS Pack4
		exec FN_AlterUserGP @in_CustomerID, 18000, 'RUS Pack4'
		exec FN_AddItemToUser @in_CustomerID, 400031, 2000
		exec FN_AddItemToUser @in_CustomerID, 400031, 2000
		exec FN_AddItemToUser @in_CustomerID, 400031, 2000
		exec FN_AddItemToUser @in_CustomerID, 101084, 2000
		exec FN_AddItemToUser @in_CustomerID, 101210, 2000
		exec FN_AddItemToUser @in_CustomerID, 400016, 2000
		exec FN_AddItemToUser @in_CustomerID, 400016, 2000
		exec FN_AddItemToUser @in_CustomerID, 400016, 2000
		update UsersData set PremiumExpireTime=DATEADD(month, 1, GETDATE()) where CustomerID=@in_CustomerID
	end

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_LOGIN]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_LOGIN]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_LOGIN]
	@in_IP varchar(100),
	@in_EMail varchar(100), 
	@in_Password varchar(100),
	@in_Country varchar(50)=''
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @CustomerID int
	declare @MD5Password varchar(100)
	declare @AccAccountStatus int = 0	-- this is Accounts.AccountStatus
	declare @BadLoginCount int
	declare @BadLoginIP varchar(128)
	declare @BadLoginTime datetime

	-- this call is always valid
	select 0 as ResultCode
	
	-- search for record with username
	SELECT 
		@CustomerID=CustomerID,
		@MD5Password=MD5Password,
		@AccAccountStatus=AccountStatus,
		@BadLoginCount=BadLoginCount,
		@BadLoginIP=BadLoginIP,
		@BadLoginTime=BadLoginTime
	FROM Accounts
	WHERE email=@in_Email
	if (@@RowCount = 0) begin
		select
			1 as LoginResult,
			0 as CustomerID,
			0 as AccountStatus,
			0 as SteamUserID
		return
	end
	
	-- if there was 10 unsuccessful attempts from KNOWN ips, block user for 60min
	if(@BadLoginCount >= 10 and exists (select RecordID from LoginBadIPs where IP=@in_IP and CustomerID=@CustomerID))
	begin
		declare @MinsAfterBadLogin int = DATEDIFF(minute, @BadLoginTime, GETDATE())
		if(@MinsAfterBadLogin < 60) begin
			select
				5 as LoginResult,
				@CustomerID as CustomerID,
				210 as AccountStatus,
				0 as SessionID,
				0 as IsDeveloper,
				0 as SteamUserID
			return
		end
	end

	-- check MD5 password
	declare @MD5FromPwd varchar(100)
	exec FN_CreateMD5Password @in_Password, @MD5FromPwd OUTPUT
	if(@MD5Password <> @MD5FromPwd) 
	begin
		-- increase bad login count
		update Accounts set BadLoginCount=(BadLoginCount+1), BadLoginIP=@in_IP, BadLoginTime=GETDATE() where CustomerID=@CustomerID

		declare @RecordID int = 0
		select @RecordID=RecordID from LoginBadIPs where IP=@in_IP and CustomerID=@CustomerID
		if(@@ROWCOUNT > 0) begin
			update LoginBadIPs set Attempts=Attempts+1 where RecordID=@RecordID
		end
		else begin
			insert into LoginBadIPs (IP, CustomerID, Attempts) values (@in_IP, @CustomerID, 1)
		end

		select
			2 as LoginResult,
			0 as CustomerID,
			0 as AccountStatus,
			0 as SteamUserID
		return
	end
	
	update Accounts set BadLoginCount=0 where CustomerID=@CustomerID
	delete from LoginBadIPs where IP=@in_IP and CustomerID=@CustomerID
	
	-- check if deleted account because of refund (sync with WZ_SteamLogin)
	if(@AccAccountStatus = 999) begin
		select
			3 as LoginResult,
			0 as CustomerID,
			999 as AccountStatus,
			0 as SteamUserID
		return
	end

	-- perform actual login
	exec WZ_ACCOUNT_LOGIN_EXEC @in_IP, @CustomerID, @in_Country, 0
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_LOGIN_EXEC]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_LOGIN_EXEC]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_LOGIN_EXEC]
	@in_IP varchar(100),
	@CustomerID int,
	@in_Country varchar(50)='',
	@in_IsSteamLogin int = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	-- helper function that perform actual user login
	--
	
	-- Account.AccountStatus - used for account lock
	declare @AccAccountStatus int = 0
	select @AccAccountStatus=AccountStatus from Accounts where CustomerID=@CustomerID
	
	-- UsersData data
	declare @IsDeveloper int = 0
	declare @AccountStatus int
	declare @AccountType int
	declare @DateActiveUntil datetime
	declare @BanExpireDate datetime
	declare @lastgamedate datetime
	declare @GameServerId int
	declare @PremiumExpireTime datetime
	declare @PremiumLastBonus datetime
	select
		@AccountStatus=AccountStatus,
		@AccountType=AccountType,
		@IsDeveloper=IsDeveloper, 
		@DateActiveUntil=DateActiveUntil,
		@BanExpireDate=BanExpireDate,
		@GameServerId=GameServerId, 
		@lastgamedate=lastgamedate,
		@PremiumExpireTime=PremiumExpireTime,
		@PremiumLastBonus=PremiumLastBonus
		from UsersData where CustomerID=@CustomerID
	if(@@ROWCOUNT = 0) begin
		select
			5 as LoginResult,
			@CustomerID as CustomerID,
			0 as AccountStatus,
			0 as SessionID,
			0 as IsDeveloper,
			0 as SteamUserID
		return
	end

	-- status equal to 201 means temporary ban
	if (@AccountStatus = 201) begin
		declare @BanExpireMin int = DATEDIFF(mi, GETDATE(), @BanExpireDate)
		if(@BanExpireMin > 0) begin
			select
				3 as LoginResult,
				@CustomerID as CustomerID,
				@AccountStatus as AccountStatus,
				@BanExpireMin as SessionID,
				0 as IsDeveloper,
				0 as SteamUserID
			return
		end
		else
		begin
			-- unban player
			set @AccountStatus = 100
			update dbo.UsersData set AccountStatus=@AccountStatus where CustomerID=@CustomerID
		end
	end

	if (@AccountStatus >= 200) begin
		select
			3 as LoginResult,
			@CustomerID as CustomerID,
			@AccountStatus as AccountStatus,
			0 as SessionID,
			0 as IsDeveloper,
			0 as SteamUserID
		return
	end

	-- check if account time expired
	if(GETDATE() > @DateActiveUntil) begin
		select
			4 as LoginResult,
			@CustomerID as CustomerID,
			300 as AccountStatus,	-- special 'TimeExpired' code
			0 as SessionID,
			0 as IsDeveloper,
			0 as SteamUserID
		return
	end 

	-- security locked (does not apply if login from steam)
	if(@AccAccountStatus = 102 and @in_IsSteamLogin=0) begin
		select
			10 as LoginResult,
			@CustomerID as CustomerID,
			102 as AccountStatus,
			0 as SessionID,
			@IsDeveloper as IsDeveloper,
			0 as SteamUserID
		return
	end
	
	-- do not lock steam logins
	if(@in_IsSteamLogin = 0)
	begin
		declare @out_NeedLock int
		exec WZ_ACCOUNT_SecurityCheckForLock @CustomerID, @in_IP, @in_Country, @out_NeedLock out
		if(@out_NeedLock > 0)
		begin
			declare @LockToken varchar(32) = ''
			select @LockToken=token from AccountLocks where CustomerID=@CustomerID and IsUnlocked=0

			select
				10 as LoginResult,
				@CustomerID as CustomerID,
				103 as AccountStatus,	-- 103 is first time lock
				0 as SessionID,
				@IsDeveloper as IsDeveloper,
				0 as SteamUserID,
				@LockToken as 'LockToken'
			return
		end
	end
	
	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	if(@GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 120 and @IsDeveloper = 0) begin
		select
			0 as LoginResult,
			@CustomerID as CustomerID,
			70 as AccountStatus,	-- game still active code
			0 as SessionID,
			0 as IsDeveloper,
			0 as SteamUserID
		return
	end
	
	-- update session key/id
	declare @SessionKey varchar(50) = NEWID()
	declare @SessionID int = checksum(@SessionKey)
	if exists (SELECT CustomerID FROM LoginSessions WHERE CustomerID = @CustomerID)
	begin
		UPDATE LoginSessions SET 
			SessionKey=@SessionKey, 
			SessionID=@SessionID,
			LoginIP=@in_IP, 
			TimeLogged=GETDATE(), 
			TimeUpdated=GETDATE()
		WHERE CustomerID=@CustomerID
	end
	else
	begin
		INSERT INTO LoginSessions
			(CustomerID, SessionKey, SessionID, LoginIP, TimeLogged, TimeUpdated)
		VALUES 
			(@CustomerID, @SessionKey, @SessionID, @in_IP, GETDATE(), GETDATE())
	end

	-- update other tables
	UPDATE Accounts SET 
		lastlogindate=GETDATE(), 
		lastloginIP=@in_IP,
		lastloginCountry=@in_Country
	WHERE CustomerID=@CustomerID
	
	INSERT INTO Logins 
		(CustomerID, LoginTime, IP, LoginSource, Country) 
	VALUES 
		(@CustomerID, GETDATE(), @in_IP, @in_IsSteamLogin, @in_Country)


	-- give premium GC bonuses every 24hrs (actually every 23:30)
	if(@PremiumExpireTime > GETDATE() and DATEDIFF(minute, @PremiumLastBonus, GETDATE()) > 1410) begin
		exec FN_AlterUserGP @CustomerID, 30, 'Daily Premium Bonus'
		update UsersData set PremiumLastBonus=GETDATE() where CustomerID=@CustomerID
	end

	-- get SteamUserID for refunded customer checks
	declare @SteamUserID bigint = 0
	select @SteamUserID=SteamUserID from Accounts where CustomerID=@CustomerID
	
	-- return session info
	SELECT 
		0 as LoginResult,
		@CustomerID as CustomerID,
		@AccountStatus as AccountStatus,
		@SessionID as SessionID,
		@IsDeveloper as IsDeveloper,
		@SteamUserID as SteamUserID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_PwdReplaceWithSerial]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_PwdReplaceWithSerial]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_PwdReplaceWithSerial]
	@in_IP varchar(64),
	@in_SerialKey varchar(64),
	@in_PurchaseEmail varchar(128),
	@in_NewPassword varchar(128)
AS
BEGIN
	SET NOCOUNT ON
	
	declare @CustomerID int = 0
	declare @email varchar(128) = 'non found'
	declare @IsCompleted int = 0
	
	-- search for serial key
	exec BreezeNet.dbo.BN_WarZ_SerialCheckWithEmail @in_SerialKey, @in_PurchaseEmail, @CustomerID out
	if(@CustomerID > 0)
	begin
		select @email=email from Accounts where CustomerID=@CustomerID
		set @IsCompleted = 1
	end
	
	-- log
	insert into AccountPwdReplace
		(RequestTime, IP,     SerialKey,     PurchaseEmail,     IsCompleted,  CustomerID)
		values 
		(GETDATE(),   @in_IP, @in_SerialKey, @in_PurchaseEmail, @IsCompleted, @CustomerID)
	
	-- change pwd
	if(@IsCompleted = 0)
	begin
		select 1 as ResultCode, @email as 'not found'
		return
	end

	-- create MD5 password
	declare @MD5FromPwd varchar(100)
	exec FN_CreateMD5Password @in_NewPassword, @MD5FromPwd OUTPUT
	-- and set it
	update Accounts set MD5Password=@MD5FromPwd where CustomerID=@CustomerID

	-- check if account was locked, then unlock it. COPY-PASTE to WZ_ACCOUNT_PwdResetExec
	declare @AccAccountStatus int
	select @AccAccountStatus=AccountStatus from Accounts where CustomerID=@CustomerID
	if(@AccAccountStatus = 102)
	begin
		-- search for that lock
		declare @IP varchar(32)
		declare @Country varchar(32)
		select @IP=IP, @Country=Country from AccountLocks where CustomerID=@CustomerID and IsUnlocked=0
		if(@@ROWCOUNT > 0) begin
			-- unlock with special IP and country, so first successful login attempt will not be checked
			update Accounts set AccountStatus=100, lastloginIP='0.0.0.0', lastloginCountry='' where CustomerID=@CustomerID
			update AccountLocks set IsUnlocked=2, UnlockTime=GETDATE() where CustomerID=@CustomerID and IsUnlocked=0
		end
	end

	-- finish
	select 0 as ResultCode, @email as 'email', @CustomerID as 'CustomerID'

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_PwdResetExec]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_PwdResetExec]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_PwdResetExec]
	@in_token varchar(128),
	@in_NewPassword varchar(100)
AS
BEGIN
	SET NOCOUNT ON
	
	declare @CustomerID int
	declare @RequestTime datetime
	declare @email varchar(100)
	select 
		@CustomerID=CustomerID, 
		@RequestTime=RequestTime,
		@email=email
	from AccountPwdReset where token=@in_token and IsCompleted=0
	if(@@ROWCOUNT = 0) begin
		select 1 as ResultCode, 'Bad Token' as ResultMsg
		return
	end
	
	-- check if token expired
	if(GETDATE() > DATEADD(hour, 24, @RequestTime)) begin
		select 2 as ResultCode, 'Token Expired' as ResultMsg
		return
	end

	-- create MD5 password
	declare @MD5FromPwd varchar(100)
	exec FN_CreateMD5Password @in_NewPassword, @MD5FromPwd OUTPUT
	-- and set it
	update Accounts set MD5Password=@MD5FromPwd where CustomerID=@CustomerID
	
	-- clear that token
	update AccountPwdReset set IsCompleted=1 where token=@in_token
	
	-- check if account was locked, then unlock it. COPY-PASTE to WZ_ACCOUNT_PwdReplaceWithSerial
	declare @AccAccountStatus int
	select @AccAccountStatus=AccountStatus from Accounts where CustomerID=@CustomerID
	if(@AccAccountStatus = 102)
	begin
		-- search for that lock
		declare @IP varchar(32)
		declare @Country varchar(32)
		select @IP=IP, @Country=Country from AccountLocks where CustomerID=@CustomerID and IsUnlocked=0
		if(@@ROWCOUNT > 0) begin
			-- unlock with special IP and country, so first successful login attempt will not be checked
			update Accounts set AccountStatus=100, lastloginIP='0.0.0.0', lastloginCountry='' where CustomerID=@CustomerID
			update AccountLocks set IsUnlocked=2, UnlockTime=GETDATE() where CustomerID=@CustomerID and IsUnlocked=0
		end
	end
	
	select 0 as ResultCode, @email as 'email'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_PwdResetRequest]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_PwdResetRequest]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_PwdResetRequest]
	@in_IP varchar(100),
	@in_email varchar(128)
AS
BEGIN
	SET NOCOUNT ON
	
	declare @CustomerID int
	select @CustomerID=CustomerID from Accounts where email=@in_email
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'No email' as ResultMsg
		return
	end
	
	-- generate password reset token
	declare @token varchar(100) = CONVERT(varchar(100), NEWID())
	set @token = SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('md5', @token)), 3, 999)
	
	DELETE FROM AccountPwdReset where token=@token
	INSERT INTO AccountPwdReset
		(RequestTime, IP, token, CustomerID, email)
		VALUES
		(GETDATE(), @in_IP, @token, @CustomerID, @in_email)

	select 0 as ResultCode, @token as 'token'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_RegisterLoginIP]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_RegisterLoginIP]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_RegisterLoginIP]
	@in_CustomerID int,
	@in_IP varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- this call is always valid
	select 0 as ResultCode
	
	if exists(select LoginIP from LoginIPs where CustomerID=@in_CustomerID and LoginIP=@in_IP) begin
		select 0 as 'IsNew', '' as 'email'
		return
	end
	
	insert into LoginIPs values(@in_CustomerID, @in_IP)
	
	declare @email varchar(128)
	select @email=email from Accounts where CustomerID=@in_CustomerID
	select 1 as 'IsNew', @email as 'email'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_SecurityCheckForLock]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_SecurityCheckForLock]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_SecurityCheckForLock]
	@in_CustomerID int,
	@in_IP varchar(100),
	@in_Country varchar(50),
	@out_NeedLock int out
AS
BEGIN
	SET NOCOUNT ON;

	-- this procedure is local to SQL
	-- select 0 as ResultCode

	-- account is fine by default
	set @out_NeedLock = 0
	
	-- get last login info
	declare @lastloginIP varchar(32)
	declare @lastloginCountry varchar(32) = ''
	select @lastloginIP=lastloginIP, @lastloginCountry=lastloginCountry from Accounts where CustomerID=@in_CustomerID

	-- decouple IPs
	declare @ip1 varchar(32)	-- last login ip 'X.y.z.w'
	declare @ip2 varchar(32)	-- last login ip 'x.Y.z.w'
	declare @ip3 varchar(32)	-- last login ip 'x.y.Z.w'
	declare @ip4 varchar(32)	-- last login ip 'x.y.z.W'
	declare @ip5 varchar(32)	-- same for @in_IP
	declare @ip6 varchar(32)
	declare @ip7 varchar(32)
	declare @ip8 varchar(32)
	declare @n1 int
	declare @n2 int
	declare @n3 int

	set @n1  = charindex('.', @lastloginIP)
	set @ip1 = substring(@lastloginIP, 1, @n1 - 1)
	set @n2  = charindex('.', @lastloginIP, @n1 + 1)
	set @ip2 = substring(@lastloginIP, @n1 + 1, @n2 - 1 - @n1)
	set @n3  = charindex('.', @lastloginIP, @n2 + 1)
	set @ip3 = substring(@lastloginIP, @n2 + 1, @n3 - 1 - @n2)
	set @ip4 = substring(@lastloginIP, @n3 + 1, 999)

	set @n1  = charindex('.', @in_IP)
	set @ip5 = substring(@in_IP, 1, @n1 - 1)
	set @n2  = charindex('.', @in_IP, @n1 + 1)
	set @ip6 = substring(@in_IP, @n1 + 1, @n2 - 1 - @n1)
	set @n3  = charindex('.', @in_IP, @n2 + 1)
	set @ip7 = substring(@in_IP, @n2 + 1, @n3 - 1 - @n2)
	set @ip8 = substring(@in_IP, @n3 + 1, 999)

	declare @Network varchar(32) = @ip5 + '.' + @ip6

	-- do not lock if we have that IP whitelisted
	if exists (select CustomerID from AccountIpWhitelist where CustomerID=@in_CustomerID and IP=@Network) begin
		return
	end
	
	-- lock if country changed
	if(@lastloginCountry <> '' and @in_Country <> '' and @lastloginCountry <> @in_Country)
	begin
		set @out_NeedLock = 1
		exec WZ_ACCOUNT_SecurityLock @in_CustomerID, @in_IP, @in_Country
		return
	end
	
	-- lock if first 2 octets is changed
	if(@ip1 <> @ip5 or @ip2 <> @ip6) 
	begin
		-- special case - we ignore first login attempt if password was reset and add that network to whitelist
		if(@lastloginIP = '0.0.0.0')
		begin
			insert into AccountIpWhitelist values (@in_CustomerID, GETDATE(), @Network, @in_Country)
			return
		end

		-- ip changed, block
		set @out_NeedLock = 1
		exec WZ_ACCOUNT_SecurityLock @in_CustomerID, @in_IP, @in_Country
		return
	end
	
	-- for first time logins - if there was no whitelist entries - add current IP there
	declare @NumEntries int = 0
	select @NumEntries=COUNT(*) from AccountIpWhitelist where CustomerID=@in_CustomerID
	if(@NumEntries = 0) begin
		insert into AccountIpWhitelist values (@in_CustomerID, GETDATE(), @Network, @in_Country)
	end

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_SecurityLock]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_SecurityLock]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_SecurityLock]
	@in_CustomerID int,
	@in_IP varchar(100),
	@in_Country varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- this procedure is local to SQL
	-- select 0 as ResultCode

	-- get last login info
	declare @AccountStatus int
	declare @lastloginIP varchar(32)
	declare @lastloginCountry varchar(32)
	select @AccountStatus=AccountStatus, @lastloginIP=lastloginIP, @lastloginCountry=lastloginCountry from Accounts where CustomerID=@in_CustomerID
	if(@AccountStatus = 102) begin
		-- already locked
		return
	end

	-- generate token
	declare @token varchar(100) = CONVERT(varchar(100), NEWID())
	set @token = SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('md5', @token)), 3, 999)
	
	-- lock account
	update Accounts set AccountStatus=102 where CustomerID=@in_CustomerID
	
	insert into AccountLocks (
		LockTime,
		CustomerID,
		PrevIP,
		PrevCountry,
		IP,
		Country,
		Token,
		IsUnlocked
	) values (
		GETDATE(),
		@in_CustomerID,
		@lastloginIP,
		@lastloginCountry,
		@in_IP,
		@in_Country,
		@token,
		0
	)

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ACCOUNT_SecurityUnlock]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ACCOUNT_SecurityUnlock]
GO
CREATE PROCEDURE [dbo].[WZ_ACCOUNT_SecurityUnlock]
	@in_token varchar(32)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- search for that lock
	declare @CustomerID int
	declare @IP varchar(32)
	declare @Country varchar(32)
	select @CustomerID=CustomerID, @IP=IP, @Country=Country from AccountLocks where Token=@in_token and IsUnlocked=0
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'bad token' as ResultMsg
		return
	end
	
	-- unlock account
	declare @AccAccountStatus int = 0
	select @AccAccountStatus=AccountStatus from Accounts where CustomerID=@CustomerID
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'account not found' as ResultMsg
		return
	end
	if(@AccAccountStatus <> 102) begin
		select 6 as ResultCode, 'account not locked' as ResultMsg
		return
	end
	
	-- unlock
	update Accounts set AccountStatus=100, lastloginIP=@IP, lastloginCountry=@Country where CustomerID=@CustomerID
	update AccountLocks set IsUnlocked=1, UnlockTime=GETDATE() where Token=@in_token
	
	-- decouple IP, create class B network
	declare @ip1 varchar(32)	-- last login ip 'X.y.z.w'
	declare @ip2 varchar(32)	-- last login ip 'x.Y.z.w'
	declare @n1 int
	declare @n2 int
	set @n1  = charindex('.', @IP)
	set @ip1 = substring(@IP, 1, @n1 - 1)
	set @n2  = charindex('.', @IP, @n1 + 1)
	set @ip2 = substring(@IP, @n1 + 1, @n2 - 1 - @n1)

	-- whitelist that network
	declare @Network varchar(32) = @ip1 + '.' + @ip2
	insert into AccountIpWhitelist values (@CustomerID, GETDATE(), @Network, @Country)

	select 0 as ResultCode
	return
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Backpack_SRV_AddItem]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Backpack_SRV_AddItem]
GO
CREATE PROCEDURE [dbo].[WZ_Backpack_SRV_AddItem] 
	@in_CustomerID int,
	@in_CharID int,
	@in_Slot int,
	@in_ItemID int,
	@in_Amount int,
	@in_Var1 int,
	@in_Var2 int,
	@in_Var3 int = -1
AS
BEGIN
	SET NOCOUNT ON;

	-- sanity check: input
	if(@in_ItemID = 0) begin
		select 6 as ResultCode, 'add item failed#1' as ResultMsg
		return
	end

	-- sanity check, we must not have item in that slot
	declare @InventoryID bigint = 0
	select @InventoryID=InventoryID from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_Slot
	if(@InventoryID > 0) begin
		select 6 as ResultCode, 'add item failed#2' as ResultMsg
		exec DBG_StoreApiCall 'AddItem#Fail', 1, @in_CustomerID, @in_CharID, @in_Slot, @in_ItemID, @in_Amount
		return
	end

	INSERT INTO UsersInventory (
		CustomerID,
		CharID,
		BackpackSlot,
		ItemID,
		LeasedUntil, 
		Quantity,
		Var1,
		Var2,
		Var3
	)
	VALUES (
		@in_CustomerID,
		@in_CharID,
		@in_Slot,
		@in_ItemID,
		DATEADD(day, 2000, GETDATE()),
		@in_Amount,
		@in_Var1,
		@in_Var2,
		@in_Var3
	)
	set @InventoryID = SCOPE_IDENTITY()
	
	select 0 as ResultCode
	select @InventoryID as 'InventoryID'

	exec DBG_StoreApiCall 'AddItem', 0, @in_CustomerID, @in_CharID, @in_Slot, @in_ItemID, @in_Amount, @InventoryID
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Backpack_SRV_AlterItem]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Backpack_SRV_AlterItem]
GO
CREATE PROCEDURE [dbo].[WZ_Backpack_SRV_AlterItem] 
	@in_CustomerID int,
	@in_CharID int,
	@in_Slot int,
	@in_ItemID int,
	@in_Amount int,
	@in_Var1 int,
	@in_Var2 int,
	@in_Var3 int = -1
AS
BEGIN
	SET NOCOUNT ON;

	-- sanity check: input
	if(@in_ItemID = 0) begin
		select 6 as ResultCode, 'alter item failed#1' as ResultMsg
		return
	end
	
	declare @PrevItemID int = 0
	declare @PrevQuantity int = 0
	select @PrevItemID=ItemID, @PrevQuantity=Quantity from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_Slot

	update UsersInventory set 
		ItemID=@in_ItemID,
		Quantity=@in_Amount,
		Var1=@in_Var1,
		Var2=@in_Var2,
		Var3=@in_Var3
	where CharID=@in_CharID and BackpackSlot=@in_Slot
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'alter item failed' as ResultMsg
		exec DBG_StoreApiCall 'AlterItem#Fail', 1, @in_CustomerID, @in_CharID, @in_Slot, @in_ItemID, @in_Amount, @PrevItemID, @PrevQuantity
		return
	end
	
	select 0 as ResultCode
	exec DBG_StoreApiCall 'AlterItem', 0, @in_CustomerID, @in_CharID, @in_Slot, @in_ItemID, @in_Amount, @PrevItemID, @PrevQuantity
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Backpack_SRV_Change]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Backpack_SRV_Change]
GO
CREATE PROCEDURE [dbo].[WZ_Backpack_SRV_Change]
	@in_CustomerID int,
	@in_CharID int,
	@in_BackpackID int,
	@in_BackpackSize int
AS
BEGIN
	SET NOCOUNT ON;

	--
	-- _SRV_ function - no validity checks
	--
	
	-- replace backpack size/id
	update UsersChars set BackpackID=@in_BackpackID, BackpackSize=@in_BackpackSize where CharID=@in_CharID
	
	select 0 as ResultCode
	select 0 as 'InventoryID'

	exec DBG_StoreApiCall 'BackpackChange_Srv', 0, @in_CustomerID, @in_CharID, @in_BackpackID, @in_BackpackSize
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Backpack_SRV_DeleteItem]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Backpack_SRV_DeleteItem]
GO
CREATE PROCEDURE [dbo].[WZ_Backpack_SRV_DeleteItem] 
	@in_CustomerID int,
	@in_CharID int,
	@in_Slot int,
	@in_ItemID int = 0, -- not used
	@in_Amount int = 0, -- not used
	@in_Var1 int = 0, -- not used
	@in_Var2 int = 0, -- not used
	@in_Var3 int = 0 -- not used
AS
BEGIN
	SET NOCOUNT ON;

	declare @BackpackInventoryID bigint = 0
	declare @BackpackItemID int = 0
	declare @BackpackQuantity int = 0
	select 
		@BackpackInventoryID=InventoryID, 
		@BackpackItemID=ItemID, 
		@BackpackQuantity=Quantity
	from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_Slot
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'delete item failed' as ResultMsg
		exec DBG_StoreApiCall 'DeleteItem#Fail', 1, @in_CustomerID, @in_CharID, @in_Slot
		return
	end

	delete from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_Slot
	
	select 0 as ResultCode
	exec DBG_StoreApiCall 'DeleteItem', 0, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @BackpackQuantity, @BackpackInventoryID
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BackpackChange]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BackpackChange]
GO
CREATE PROCEDURE [dbo].[WZ_BackpackChange]
	@in_CustomerID int,
	@in_CharID int,
	@in_InventoryID bigint
AS
BEGIN
	SET NOCOUNT ON;

	-- check if CustomerID/CharID pair is valid
	declare @CustomerID int
	declare @BackpackSize int
	declare @GameFlags int
	select @CustomerID=CustomerID, @BackpackSize=BackpackSize, @GameFlags=GameFlags FROM UsersChars WHERE CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- do not allow operations outside safe zone
	if((@GameFlags & 1) = 0) begin
		select 9 as ResultCode, 'outside safe zone' as ResultMsg
		return
	end
	
	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	if(@GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 360) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'BackpackChange#InGame', 2, @in_CustomerID, @in_CharID, -1, -1, -1, @GameServerId
		return
	end
	
	-- validate that we own that item
	declare @InvItemID int = 0
	declare @InvCustomerID int = 0
	declare @InvCharID int = 0
	declare @InvQuantity int = 0
	select @InvItemID=ItemID, @InvQuantity=Quantity, @InvCustomerID=CustomerID from UsersInventory where InventoryID=@in_InventoryID
	if(@InvCustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad inventoryid #1' as ResultMsg
		return
	end
	if(@InvCharID > 0 and @InvCharID <> @in_CharID) begin
		select 6 as ResultCode, 'bad inventoryid #2' as ResultMsg
		return
	end

	-- validate that this is actually a backpack
	declare @MaxSlots int = 0
	select @MaxSlots=Bulkiness from Items_Gear where ItemID=@InvItemID and Category=12
	if(@MaxSlots = 0) begin
		select 6 as ResultCode, 'no backpack' as ResultMsg
		exec DBG_StoreApiCall 'BackpackChange', 1, @in_CustomerID, @in_CharID, @InvItemID
		return
	end
	
	-- move everything above current slots to inventory
	update UsersInventory set CharID=0, BackpackSlot=-1 where CharID=@in_CharID and BackpackSlot>=@MaxSlots

	-- remove single backpack from inventory
	set @InvQuantity = @InvQuantity - 1
	if(@InvQuantity <= 0) begin
		delete from UsersInventory where InventoryID=@in_InventoryID
	end 
	else begin
		update UsersInventory set Quantity=@InvQuantity where InventoryID=@in_InventoryID
	end
	
	-- place old backpack to inventory
	declare @OldBackpackID int
	select @OldBackpackID=BackpackID from UsersChars where CharID=@in_CharID
	exec dbo.FN_AddItemToUser @CustomerID, @OldBackpackID, 2000
	
	-- replace backpack size/id
	update UsersChars set BackpackID=@InvItemID, BackpackSize=@MaxSlots where CharID=@in_CharID
	
	select 0 as ResultCode
	select 0 as 'InventoryID'

	declare @DiffSec int = DATEDIFF(second, @lastgamedate, GETDATE())
	exec DBG_StoreApiCall 'BackpackChange', 0, @in_CustomerID, @in_CharID, @InvItemID, @MaxSlots, @GameServerId, @DiffSec
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BackpackFromInv]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BackpackFromInv]
GO
CREATE PROCEDURE [dbo].[WZ_BackpackFromInv] 
	@in_CustomerID int,
	@in_CharID int,
	@in_InventoryID bigint,
	@in_Slot int,
	@in_Amount int,
	@in_ServerCall int = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	if(@in_Amount <= 0) begin
		select 6 as ResultCode, 'bad amount' as ResultMsg
		exec DBG_StoreApiCall 'FromInv#1', 1, @in_CustomerID, @in_CharID, @in_Slot, -1, @in_Amount
		return
	end

	-- check if CustomerID/CharID pair is valid
	declare @CustomerID int
	declare @BackpackSize int
	declare @GameFlags int
	select @CustomerID=CustomerID, @BackpackSize=BackpackSize, @GameFlags=GameFlags FROM UsersChars WHERE CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- must be in safe zone
	if(@in_ServerCall = 0 and (@GameFlags & 1) = 0) begin
		select 6 as ResultCode, 'not in safezone' as ResultMsg
		return
	end
	
	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	if(@in_ServerCall = 0 and @GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 360) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'FromInv#InGame', 2, @in_CustomerID, @in_CharID, @in_Slot, -1, @in_Amount, @GameServerId
		return
	end
	
	-- check if we have that item in inventory
	declare @InvCustomerID int
	declare @InvInventoryID bigint
	declare @InvItemID int
	declare @InvLeasedUntil datetime
	declare @InvQuantity int
	declare @InvVar1 int
	declare @InvVar2 int
	declare @InvVar3 int
	select 
		@InvCustomerID=CustomerID,
		@InvInventoryID=InventoryID,
		@InvItemID=ItemID, 
		@InvQuantity=Quantity,
		@InvLeasedUntil=LeasedUntil,
		@InvVar1=Var1,
		@InvVar2=Var2,
		@InvVar3=Var3
	from UsersInventory where InventoryID=@in_InventoryID
	if(@@ROWCOUNT = 0 or @InvCustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad inventoryid' as ResultMsg
		return
	end
	
	if(@in_Amount > @InvQuantity) begin
		select 6 as ResultCode, 'bad quantity' as ResultMsg
		return
	end
	
	-- validate backpack slot number
	if(@in_Slot < 0 or @in_Slot >= @BackpackSize) begin
		select 6 as ResultCode, 'bad slot' as ResultMsg
		return
	end
	-- validate if we can move to that slot
	declare @BackpackInventoryID bigint = 0
	declare @BackpackItemID int = 0
	declare @BackpackVar1 int = 0
	declare @BackpackVar2 int = 0
	declare @BackpackVar3 int = 0
	select 
		@BackpackInventoryID=InventoryID,
		@BackpackItemID=ItemID,
		@BackpackVar1=Var1,
		@BackpackVar2=Var2,
		@BackpackVar3=Var3
	from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_Slot
	if(@@ROWCOUNT > 0) begin
		if(@BackpackItemID <> @InvItemID) begin
			select 6 as ResultCode, 'bad inventory id 2' as ResultMsg
			return
		end
		if(@BackpackVar1 <> @InvVar1 or @BackpackVar2 <> @InvVar2 or @BackpackVar3 <> @InvVar3) begin
			exec DBG_StoreApiCall 'FromInv_BadStack', 3, @in_CustomerID, @in_CharID, @in_Slot, @InvItemID, @in_Amount, @InvInventoryID, @BackpackInventoryID
			select 6 as ResultCode, 'bad stacking' as ResultMsg
			return
		end
		declare @CanStackWith int = 0
		exec @CanStackWith = FN_IsItemStackable @BackpackItemID, 0
		if(@CanStackWith = 0) begin
			exec DBG_StoreApiCall 'FromInv_NoStack', 3, @in_CustomerID, @in_CharID, @in_Slot, @InvItemID, @in_Amount, @InvInventoryID, @BackpackInventoryID
			select 6 as ResultCode, 'not stackable' as ResultMsg
			return
		end
	end

	-- clear attachments if moved item was in weapon slot
	if(@in_Slot = 0) update UsersChars set Attachment1='' where CharID=@in_CharID
	if(@in_Slot = 1) update UsersChars set Attachment2='' where CharID=@in_CharID

	-- check for easy case, unmodified item, no such item in backpack
	if(@BackpackInventoryID = 0 and @InvQuantity = @in_Amount) 
	begin
		update UsersInventory set BackpackSlot=@in_Slot, CharID=@in_CharID where InventoryID=@InvInventoryID

		select 0 as ResultCode
		select @InvInventoryID as 'InventoryID'

		if(@in_ServerCall > 0)	exec DBG_StoreApiCall 'FromInv_Srv', 0, @in_CustomerID, @in_CharID, @in_Slot, @InvItemID, @in_Amount, @InvInventoryID, @BackpackInventoryID
		else		            exec DBG_StoreApiCall 'FromInv', 0, @in_CustomerID, @in_CharID, @in_Slot, @InvItemID, @in_Amount, @InvInventoryID, @BackpackInventoryID
		return
	end

	if(@BackpackInventoryID = 0)
	begin
		-- modified (won't stack) or new backpack item
		INSERT INTO UsersInventory (
			CustomerID,
			CharID,
			ItemID,
			BackpackSlot,
			LeasedUntil, 
			Quantity,
			Var1,
			Var2,
			Var3
		)
		VALUES (
			@in_CustomerID,
			@in_CharID,
			@InvItemID,
			@in_Slot,
			@InvLeasedUntil,
			@in_Amount,
			@InvVar1,
			@InvVar2,
			@InvVar3
		)
		set @BackpackInventoryID = SCOPE_IDENTITY()
	end
	else
	begin
		update UsersInventory set Quantity=(Quantity+@in_Amount) where InventoryID=@BackpackInventoryID
	end
	
	-- from inventory
	set @InvQuantity = @InvQuantity - @in_Amount
	if(@InvQuantity <= 0) begin
		delete from UsersInventory where InventoryID=@InvInventoryID
	end 
	else begin
		update UsersInventory set Quantity=@InvQuantity where InventoryID=@InvInventoryID
	end
	
	select 0 as ResultCode;
	select @BackpackInventoryID as 'InventoryID'

	if(@in_ServerCall > 0) exec DBG_StoreApiCall 'FromInv_Srv', 0, @in_CustomerID, @in_CharID, @in_Slot, @InvItemID, @in_Amount, @InvInventoryID, @BackpackInventoryID
	else                   exec DBG_StoreApiCall 'FromInv',     0, @in_CustomerID, @in_CharID, @in_Slot, @InvItemID, @in_Amount, @InvInventoryID, @BackpackInventoryID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BackpackGridJoin]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BackpackGridJoin]
GO
CREATE PROCEDURE [dbo].[WZ_BackpackGridJoin]
	@in_CustomerID int,
	@in_CharID int,
	@in_SlotFrom int,
	@in_SlotTo int
AS
BEGIN
	SET NOCOUNT ON;

	-- check if CustomerID/CharID pair is valid
	declare @CustomerID int
	declare @BackpackSize int
	select @CustomerID=CustomerID, @BackpackSize=BackpackSize FROM UsersChars WHERE CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end

	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	if(@GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 360) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'GridJoin#InGame', 2, @in_CustomerID, @in_CharID, @in_SlotFrom, @in_SlotTo
		return
	end
	
	-- check from slot
	declare @FromItemID int
	declare @FromQuantity int
	declare @FromVar1 int
	declare @FromVar2 int
	declare @FromVar3 int
	select 
		@FromItemID=ItemID, 
		@FromQuantity=Quantity,
		@FromVar1=Var1,
		@FromVar2=Var2,
		@FromVar3=Var3
	from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_SlotFrom
	if(@@ROWCOUNT = 0 or @FromItemID = 0) begin
		select 6 as ResultCode, 'bad slot1' as ResultMsg
		return
	end
	
	-- check to slot
	declare @ToItemID int
	declare @ToQuantity int
	declare @ToVar1 int
	declare @ToVar2 int
	declare @ToVar3 int
	select 
		@ToItemID=ItemID, 
		@ToQuantity=Quantity,
		@ToVar1=Var1,
		@ToVar2=Var2,
		@ToVar3=Var3
	from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_SlotTo
	if(@@ROWCOUNT = 0 or @ToItemID = 0) begin
		select 6 as ResultCode, 'bad slot2' as ResultMsg
		return
	end
	
	if(@ToItemID <> @FromItemID or @FromVar1 <> @ToVar1 or @FromVar2 <> @ToVar2 or @FromVar3 <> @ToVar3) begin
		exec DBG_StoreApiCall 'GridJoin_BadStack', 3, @in_CustomerID, @in_CharID, @in_SlotFrom, @in_SlotTo, @ToItemID
		select 6 as ResultCode, 'bad join' as ResultMsg
		return
	end
	declare @CanStackWith int = 0
	exec @CanStackWith = FN_IsItemStackable @FromItemID, 0
	if(@CanStackWith = 0) begin
		exec DBG_StoreApiCall 'GridJoin_NoStack', 3, @in_CustomerID, @in_CharID, @in_SlotFrom, @in_SlotTo, @ToItemID
		select 6 as ResultCode, 'not stackable' as ResultMsg
		return
	end
	if(@in_SlotTo = 0 or @in_SlotTo = 1) begin
		-- can't join weapons
		select 6 as ResultCode, 'bad slot in join' as ResultMsg
		return
	end
	
	-- join slots
	update UsersInventory set Quantity=Quantity+@FromQuantity where CharID=@in_CharID and BackpackSlot=@in_SlotTo
	delete from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_SlotFrom
	
	select 0 as ResultCode
	select 0 as 'InventoryID'
	exec DBG_StoreApiCall 'GridJoin', 0, @in_CustomerID, @in_CharID, @in_SlotFrom, @in_SlotTo, @ToItemID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BackpackGridSwap]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BackpackGridSwap]
GO
CREATE PROCEDURE [dbo].[WZ_BackpackGridSwap] 
	@in_CustomerID int,
	@in_CharID int,
	@in_SlotFrom int,
	@in_SlotTo int
AS
BEGIN
	SET NOCOUNT ON;

	-- check if CustomerID/CharID pair is valid
	declare @CustomerID int
	declare @BackpackSize int
	select @CustomerID=CustomerID, @BackpackSize=BackpackSize FROM UsersChars WHERE CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	if(@GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 360) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'GridSwap#InGame', 2, @in_CustomerID, @in_CharID, @in_SlotFrom, @in_SlotTo
		return
	end
	
	-- validate backpack slot number
	if(@in_SlotFrom < 0 or @in_SlotFrom >= @BackpackSize) begin
		select 6 as ResultCode, 'bad slot' as ResultMsg
		return
	end
	if(@in_SlotTo < 0 or @in_SlotTo >= @BackpackSize) begin
		select 6 as ResultCode, 'bad slot' as ResultMsg
		return
	end
	
	-- get inventory ids of both slots
	declare @InventoryIdFrom bigint = 0
	declare @InventoryIdTo bigint = 0
	select @InventoryIdFrom=InventoryID from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_SlotFrom
	select @InventoryIdTo=InventoryID   from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_SlotTo

	if(@in_SlotTo = 0 or @in_SlotTo = 1) begin
		-- can't move multiple quantities to weapons
		declare @FromQuantity int = 0
		select @FromQuantity=Quantity from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_SlotFrom
		if(@FromQuantity > 1) begin
			select 6 as ResultCode, 'bad weapon swap' as ResultMsg
			return
		end
	end

	-- swap slots. operation will silently be ok if there is no item in that slot
	update UsersInventory set BackpackSlot=@in_SlotTo   where InventoryID=@InventoryIdFrom
	update UsersInventory set BackpackSlot=@in_SlotFrom where InventoryID=@InventoryIdTo
	
	-- clear attachments if swapped items was in weapon slots
	if(@in_SlotTo = 0 or @in_SlotFrom = 0) update UsersChars set Attachment1='' where CharID=@in_CharID
	if(@in_SlotTo = 1 or @in_SlotFrom = 1) update UsersChars set Attachment2='' where CharID=@in_CharID
	
	select 0 as ResultCode
	select 0 as 'InventoryID'

	exec DBG_StoreApiCall 'GridSwap', 0, @in_CustomerID, @in_CharID, @in_SlotFrom, @in_SlotTo
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BackpackToInv]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BackpackToInv]
GO
CREATE PROCEDURE [dbo].[WZ_BackpackToInv] 
	@in_CustomerID int,
	@in_CharID int,
	@in_InventoryID bigint,	-- target inventory id where to put that item
	@in_Slot int,
	@in_Amount int,
	@in_ServerCall int = 0
AS
BEGIN
	SET NOCOUNT ON;

	if(@in_Amount <= 0) begin
		select 6 as ResultCode, 'bad amount' as ResultMsg
		exec DBG_StoreApiCall 'ToInv#1', 1, @in_CustomerID, @in_CharID, @in_Slot, -1, @in_Amount
		return
	end

	-- check if CustomerID/CharID pair is valid
	declare @CustomerID int
	declare @GameFlags int
	select @CustomerID=CustomerID, @GameFlags=GameFlags FROM UsersChars WHERE CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end

	-- must be in safe zone
	if(@in_ServerCall = 0 and (@GameFlags & 1) = 0) begin
		select 6 as ResultCode, 'not in safezone' as ResultMsg
		return
	end
	
	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	if(@in_ServerCall = 0 and @GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 360) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'ToInv#InGame', 2, @in_CustomerID, @in_CharID, @in_Slot, -1, @in_Amount, @GameServerId
		return
	end
	
	declare @BackpackInventoryID bigint
	declare @BackpackItemID int
	declare @BackpackLeasedUntil datetime
	declare @BackpackQuantity int
	declare @BackpackVar1 int
	declare @BackpackVar2 int
	declare @BackpackVar3 int
	select 
		@BackpackInventoryID=InventoryID,
		@BackpackItemID=ItemID, 
		@BackpackQuantity=Quantity,
		@BackpackLeasedUntil=LeasedUntil,
		@BackpackVar1=Var1,
		@BackpackVar2=Var2,
		@BackpackVar3=Var3
	from UsersInventory where CharID=@in_CharID and BackpackSlot=@in_Slot
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'bad slot' as ResultMsg
		return
	end
	
	if(@in_Amount > @BackpackQuantity) begin
		select 6 as ResultCode, 'bad quantity' as ResultMsg
		return
	end
	
	-- check for easy case, just switching to inventory
	if(@in_InventoryID = 0 and @BackpackQuantity = @in_Amount) 
	begin
		update UsersInventory set BackpackSlot=-1, CharID=0 where InventoryID=@BackpackInventoryID

		select 0 as ResultCode
		select @BackpackInventoryID as 'InventoryID'

		if(@in_ServerCall > 0) exec DBG_StoreApiCall 'ToInv_Srv', 0, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @in_Amount, @BackpackInventoryID
		else                   exec DBG_StoreApiCall 'ToInv', 0, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @in_Amount, @BackpackInventoryID
		return
	end
	
	-- validate that we own that inventory slot and item can be moved there
	if(@in_InventoryID > 0) 
	begin
		declare @InvCustomerID int
		declare @InvCharID int
		declare @InvItemID int
		declare @InvVar1 int
		declare @InvVar2 int
		declare @InvVar3 int
		select 
			@InvCustomerID=CustomerID,
			@InvCharID=CharID, 
			@InvItemID=ItemID, 
			@InvVar1=Var1,
			@InvVar2=Var2,
			@InvVar3=Var3
			from UsersInventory where InventoryID=@in_InventoryID
		if(@@ROWCOUNT = 0 or @InvCustomerID <> @in_CustomerID or @InvCharID <> 0 or @InvItemID <> @BackpackItemID) begin
			select 6 as ResultCode, 'bad inventoryid' as ResultMsg
			return
		end
		if(@InvVar1 <> @BackpackVar1 or @InvVar2 <> @BackpackVar2 or @InvVar3 <> @BackpackVar3) begin
			exec DBG_StoreApiCall 'ToInv_BadStack', 3, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @in_Amount, @BackpackInventoryID, 0
			select 6 as ResultCode, 'bad stacking' as ResultMsg
			return
		end
		declare @CanStackWith int = 0
		exec @CanStackWith = FN_IsItemStackable @InvItemID, 1
		if(@CanStackWith = 0) begin
			exec DBG_StoreApiCall 'ToInv_NoStack', 3, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @in_Amount, @BackpackInventoryID, 0
			select 6 as ResultCode, 'not stackable' as ResultMsg
			return
		end
	end

	declare @InvInventoryID bigint = @in_InventoryID
	if(@InvInventoryID = 0) begin
		-- modified (won't stack) or new inventory item
		INSERT INTO UsersInventory (
			CustomerID,
			CharID,
			ItemID, 
			LeasedUntil, 
			Quantity,
			Var1,
			Var2,
			Var3
		)
		VALUES (
			@in_CustomerID,
			0,
			@BackpackItemID,
			@BackpackLeasedUntil,
			@in_Amount,
			@BackpackVar1,
			@BackpackVar2,
			@BackpackVar3
		)
		set @InvInventoryID = SCOPE_IDENTITY()
	end
	else begin
		update UsersInventory set Quantity=(Quantity+@in_Amount) where InventoryID=@InvInventoryID
	end

	-- from backpack
	set @BackpackQuantity = @BackpackQuantity - @in_Amount
	if(@BackpackQuantity <= 0) begin
		delete from UsersInventory where InventoryID=@BackpackInventoryID
	end 
	else begin
		update UsersInventory set Quantity=@BackpackQuantity where InventoryID=@BackpackInventoryID
	end
	
	select 0 as ResultCode
	select @InvInventoryID as 'InventoryID'

	if(@in_ServerCall > 0) exec DBG_StoreApiCall 'ToInv_Srv', 0, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @in_Amount, @BackpackInventoryID, @InvInventoryID
	else                   exec DBG_StoreApiCall 'ToInv',     0, @in_CustomerID, @in_CharID, @in_Slot, @BackpackItemID, @in_Amount, @BackpackInventoryID, @InvInventoryID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BuyItem_GD]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BuyItem_GD]
GO
CREATE PROCEDURE [dbo].[WZ_BuyItem_GD]
	@in_IP char(32),
	@in_CustomerID int,
	@in_ItemId int,
	@in_BuyDays int
AS
BEGIN
	SET NOCOUNT ON;

	-- get points for that customer
	declare @GameDollars int
	SELECT @GameDollars=GameDollars FROM UsersData WHERE CustomerID=@in_CustomerID
	if (@@RowCount = 0) begin
		select 6 as ResultCode, 'no CustomerID' as ResultMsg
		return
	end

	declare @smsg1 varchar(1000)
	declare @out_FNResult int = 100

	-- get price
	declare @FinalPrice int
	exec WZ_BuyItemFN_GetPrice @out_FNResult out, @in_ItemId, @in_BuyDays, 'GD', @FinalPrice out
	if(@out_FNResult > 0) begin
		set @smsg1 = LTRIM(STR(@out_FNResult)) + ' GD '
		set @smsg1 = @smsg1 + LTRIM(STR(@in_BuyDays)) + ' ' + LTRIM(STR(@in_ItemID))
		EXEC FN_ADD_SECURITY_LOG 110, @in_IP, @in_CustomerID, @smsg1
		select 6 as ResultCode, 'bad GetPrice' as ResultMsg
		return
	end
	
	-- check if enough money
	if(@GameDollars < @FinalPrice) begin
		set @smsg1 = LTRIM(STR(@in_ItemId)) + ' ' + LTRIM(STR(@in_BuyDays)) + ' '
		set @smsg1 = @smsg1 + ' GD ' + LTRIM(STR(@FinalPrice)) + ' ' + LTRIM(STR(@GameDollars))
		EXEC FN_ADD_SECURITY_LOG 114, @in_IP, @in_CustomerID, @smsg1
		select 7 as ResultCode, 'Not Enough GD' as ResultMsg
		return
	end

	-- exec item adding function, if it fail, do not process transaction further
	exec WZ_BuyItemFN_Exec @out_FNResult out, @in_CustomerID, @in_ItemId, @in_BuyDays
	if(@out_FNResult <> 0) begin
		set @smsg1 = 'BuyExec failed' + LTRIM(STR(@out_FNResult))
		select 7 as ResultCode, @smsg1 as ResultMsg
		return
	end

	-- perform actual transaction
	set @GameDollars = @GameDollars-@FinalPrice;
	UPDATE UsersData SET GameDollars=@GameDollars where CustomerID=@in_CustomerID

	-- set transaction type
	declare @TType int = 0
	if(@in_BuyDays = 2000) set @TType = 3001;
	else set @TType = 2001;
	
	-- update transaction detail
	INSERT INTO FinancialTransactions
		VALUES (@in_CustomerID, 'INGAME', @TType, GETDATE(), 
				@FinalPrice, '1', 'APPROVED', @in_ItemId)

	-- search for InventoryID of added item
	declare @InventoryID bigint = 0
	select @InventoryID=InventoryID from UsersInventory
		where CustomerID=@in_CustomerID and CharID=0 and ItemID=@in_ItemId and Var1<0

	select 0 as ResultCode
	select @GameDollars as 'Balance', @InventoryID as 'InventoryID'

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BuyItem_GP]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BuyItem_GP]
GO
CREATE PROCEDURE [dbo].[WZ_BuyItem_GP]
	@in_IP char(32),
	@in_CustomerID int,
	@in_ItemId int,
	@in_BuyDays int
AS
BEGIN
	SET NOCOUNT ON;

	-- get points for that customer
	declare @GamePoints int
	SELECT @GamePoints=GamePoints FROM UsersData WHERE CustomerID=@in_CustomerID
	if (@@RowCount = 0) begin
		select 6 as ResultCode, 'no CustomerID' as ResultMsg
		return
	end

	declare @smsg1 varchar(1000)
	declare @out_FNResult int = 100

	-- get price
	declare @FinalPrice int
	exec WZ_BuyItemFN_GetPrice @out_FNResult out, @in_ItemId, @in_BuyDays, 'GP', @FinalPrice out
	if(@out_FNResult > 0) begin
		set @smsg1 = LTRIM(STR(@out_FNResult)) + ' GP '
		set @smsg1 = @smsg1 + LTRIM(STR(@in_BuyDays)) + ' ' + LTRIM(STR(@in_ItemID))
		EXEC FN_ADD_SECURITY_LOG 110, @in_IP, @in_CustomerID, @smsg1
		select 6 as ResultCode, 'bad GetPrice' as ResultMsg
		return
	end
	
	-- check if enough money
	if(@GamePoints < @FinalPrice) begin
		set @smsg1 = LTRIM(STR(@in_ItemId)) + ' ' + LTRIM(STR(@in_BuyDays)) + ' '
		set @smsg1 = @smsg1 + ' GP ' + LTRIM(STR(@FinalPrice)) + ' ' + LTRIM(STR(@GamePoints))
		EXEC FN_ADD_SECURITY_LOG 114, @in_IP, @in_CustomerID, @smsg1
		select 7 as ResultCode, 'Not Enough GP' as ResultMsg
		return
	end

	-- exec item adding function, if it fail, do not process transaction further
	exec WZ_BuyItemFN_Exec @out_FNResult out, @in_CustomerID, @in_ItemId, @in_BuyDays
	if(@out_FNResult <> 0) begin
		set @smsg1 = 'BuyExec failed' + LTRIM(STR(@out_FNResult))
		select 7 as ResultCode, @smsg1 as ResultMsg
		return
	end

	-- perform actual transaction
	declare @GPAlterDesc nvarchar(512) = 'Shop: ' + convert(nvarchar(64), @in_ItemId)
	declare @AlterGP int = -@FinalPrice;
	exec FN_AlterUserGP @in_CustomerID, @AlterGP, 'WZ_BuyItem_GP', @GPAlterDesc
	set @GamePoints=@GamePoints-@FinalPrice;

	-- set transaction type
	declare @TType int = 0
	if(@in_BuyDays = 2000) set @TType = 3000;
	else set @TType = 2000;
	
	-- update transaction detail
	INSERT INTO FinancialTransactions
		VALUES (@in_CustomerID, 'INGAME', @TType, GETDATE(), 
				@FinalPrice, '1', 'APPROVED', @in_ItemId)
				
	-- search for InventoryID of added item
	declare @InventoryID bigint = 0
	select @InventoryID=InventoryID from UsersInventory
		where CustomerID=@in_CustomerID and CharID=0 and ItemID=@in_ItemId and Var1<0

	select 0 as ResultCode
	select @GamePoints as 'Balance', @InventoryID as 'InventoryID';

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BuyItemFN_Exec]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BuyItemFN_Exec]
GO
CREATE PROCEDURE [dbo].[WZ_BuyItemFN_Exec]
	@out_FNResult int out,
	@in_CustomerID int,
	@in_ItemId int,
	@in_BuyDays int
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	--
	-- main function for buying items in game, should be called from WZ_BuyItem2
	--
	--

	-- set success by default
	set @out_FNResult = 0
	
	--SAMPLE ITEM 10k GD
	--if(@in_ItemId = 301107) begin
	--	update UsersData set GameDollars=GameDollars+10000 where CustomerID=@in_CustomerID
	--	return
	--end
	
	-- clan items. NOTE: no item adding
	if(@in_ItemId >= 301151 and @in_ItemId <= 301157) begin
		return
	end
	
	-- char revive item. NOTE: no item adding
	if(@in_ItemId = 301159) begin
		return
	end
	-- char rename
	if(@in_ItemId = 301399) begin
		return
	end
	
	-- premium subscription
	if(@in_ItemId = 301257) begin
		update UsersData set PremiumExpireTime=DATEADD(month, 1, GETDATE()) where CustomerID=@in_CustomerID
		return
	end
	
	-- normal item
	exec FN_AddItemToUser @in_CustomerID, @in_ItemId, @in_BuyDays
	set @out_FNResult = 0

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BuyItemFN_GetName]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BuyItemFN_GetName]
GO
CREATE PROCEDURE [dbo].[WZ_BuyItemFN_GetName]
	@in_ItemId int,
	@o_Name nvarchar(128) out
AS
BEGIN
	SET NOCOUNT ON;

	set @o_Name = 'unknown';
	
	if(@in_ItemId >= 20000 and @in_ItemId < 99999)
		select @o_Name=Name from Items_Gear where ItemID=@in_ItemID
	else
	if(@in_ItemId >= 100000 and @in_ItemId < 190000)
		select @o_Name=Name from Items_Weapons where ItemID=@in_ItemID
	else 
	if(@in_ItemId >= 300000 and @in_ItemId < 390000) 
		select @o_Name=Name from Items_Generic where ItemID=@in_ItemID
	else 
	if(@in_ItemId >= 400000 and @in_ItemId < 490000) 
		select @o_Name=Name from Items_Attachments where ItemID=@in_ItemID

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_BuyItemFN_GetPrice]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_BuyItemFN_GetPrice]
GO
CREATE PROCEDURE [dbo].[WZ_BuyItemFN_GetPrice]
    @out_FNResult int out,
	@in_ItemId int,
	@in_BuyDays int,
	@in_Currency varchar(32),
	@o_FinalPrice int out
AS
BEGIN
	SET NOCOUNT ON;
	
--
-- get prices from table based on itemID
--
	declare @Price1 int = 0
	declare @Price7 int = 0
	declare @Price30 int = 0
	declare @PriceP int = 0
	declare @GPrice1 int = 0
	declare @GPrice7 int = 0
	declare @GPrice30 int = 0
	declare @GPriceP int = 0
	declare @IsEnabled int = 1

	if(@in_ItemId >= 20000 and @in_ItemId < 99999)
		SELECT
		   @Price1=Price1, @Price7=Price7, @Price30=Price30, @PriceP=PriceP, 
		   @GPrice1=GPrice1, @GPrice7=GPrice7, @GPrice30=GPrice30, @GPriceP=GPriceP
		FROM Items_Gear where ItemID=@in_ItemID
	else
	if(@in_ItemId >= 100000 and @in_ItemId < 190000)
		SELECT
		   @Price1=Price1, @Price7=Price7, @Price30=Price30, @PriceP=PriceP, 
		   @GPrice1=GPrice1, @GPrice7=GPrice7, @GPrice30=GPrice30, @GPriceP=GPriceP
		FROM Items_Weapons where ItemID=@in_ItemID
	else 
	if(@in_ItemId >= 300000 and @in_ItemId < 390000) 
		SELECT
		   @Price1=Price1, @Price7=Price7, @Price30=Price30, @PriceP=PriceP, 
		   @GPrice1=GPrice1, @GPrice7=GPrice7, @GPrice30=GPrice30, @GPriceP=GPriceP
		FROM Items_Generic where ItemID=@in_ItemID
	else 
	if(@in_ItemId >= 400000 and @in_ItemId < 490000) 
		SELECT
		   @Price1=Price1, @Price7=Price7, @Price30=Price30, @PriceP=PriceP, 
		   @GPrice1=GPrice1, @GPrice7=GPrice7, @GPrice30=GPrice30, @GPriceP=GPriceP
		FROM Items_Attachments where ItemID=@in_ItemID
	else 
	begin
		set @out_FNResult = 1
		return
	end
	if (@@RowCount = 0) begin
		set @out_FNResult = 2
		return
	end
	
	     if(@in_Currency = 'GP' and @in_BuyDays = 1)    set @o_FinalPrice = @Price1
	else if(@in_Currency = 'GP' and @in_BuyDays = 7)    set @o_FinalPrice = @Price7
	else if(@in_Currency = 'GP' and @in_BuyDays = 30)   set @o_FinalPrice = @Price30
	else if(@in_Currency = 'GP' and @in_BuyDays = 2000) set @o_FinalPrice = @PriceP
	else if(@in_Currency = 'GD' and @in_BuyDays = 1)    set @o_FinalPrice = @GPrice1
	else if(@in_Currency = 'GD' and @in_BuyDays = 7)    set @o_FinalPrice = @GPrice7
	else if(@in_Currency = 'GD' and @in_BuyDays = 30)   set @o_FinalPrice = @GPrice30
	else if(@in_Currency = 'GD' and @in_BuyDays = 2000) set @o_FinalPrice = @GPriceP
	else begin
		set @out_FNResult = 3
		return
	end

	-- check if listed
	if(@o_FinalPrice <= 0 or @IsEnabled = 0) begin
		set @out_FNResult = 4
		return
	end
	
	set @out_FNResult = 0
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Char_SRV_SetAttachments]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Char_SRV_SetAttachments]
GO
CREATE PROCEDURE [dbo].[WZ_Char_SRV_SetAttachments]
	@in_CustomerID int,
	@in_CharID int,
	@in_Attm1 varchar(256),
	@in_Attm2 varchar(256)
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	-- this function should be called only by server, so we skip all validations
	--

	-- update attachments
	UPDATE UsersChars SET Attachment1=@in_Attm1, Attachment2=@in_Attm2 where CharID=@in_CharID

	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Char_SRV_SetStatus]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Char_SRV_SetStatus]
GO
CREATE PROCEDURE [dbo].[WZ_Char_SRV_SetStatus]
	@in_CustomerID int,
	@in_CharID int,
	@in_Alive int,
	@in_GamePos varchar(256),
	@in_GameFlags int,
	@in_Health float,
	@in_Hunger float,
	@in_Thirst float,
	@in_Toxic float,
	@in_TimePlayed int,
	@in_XP int,
	@in_Reputation int,
	@in_GameDollars int,
	@in_Stat00 int,
	@in_Stat01 int,
	@in_Stat02 int,
	@in_Stat03 int,
	@in_Stat04 int,
	@in_Stat05 int,
	@in_ResWood int = 0,
	@in_ResStone int = 0,
	@in_ResMetal int = 0,
	@in_CharData varchar(4000) = ''
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	-- this function should be called only by server, so we skip all validations
	--
	
	-- record last game update and update GameDollars with DELTA value
	update UsersData set GameDollars=(GameDollars+@in_GameDollars), lastgamedate=GETDATE() where CustomerID=@in_CustomerID
	
	if(@in_GameDollars > 0) begin
		insert into DBG_GDLog (RecordTime, CustomerID, CharID, GameDollars) 
			values (GETDATE(), @in_CustomerID, @in_CharID, @in_GameDollars)
	end

	-- update basic character data
	update UsersChars set
		GamePos=@in_GamePos,
		GameFlags=@in_GameFlags,
		Alive=@in_Alive,
		Health=@in_Health,
		Food=@in_Hunger,
		Water=@in_Thirst,
		Toxic=@in_Toxic,
		TimePlayed=@in_TimePlayed,
		LastUpdateDate=GETDATE(),
		XP=@in_XP,
		Reputation=@in_Reputation,
		Stat00=@in_Stat00,
		Stat01=@in_Stat01,
		Stat02=@in_Stat02,
		Stat03=@in_Stat03,
		Stat04=@in_Stat04,
		Stat05=@in_Stat05
	where CharID=@in_CharID
	
	-- update generic character data (if provided)
	if(@in_CharData <> '')
		update UsersChars set CharData=@in_CharData where CharID=@in_CharID

	-- update resources	
	update UsersData set ResWood=@in_ResWood, ResStone=@in_ResStone, ResMetal=@in_ResMetal where CustomerID=@in_CustomerID
	
	if(@in_Alive = 0) begin
		update UsersChars set DeathUtcTime=GETUTCDATE() where CharID=@in_CharID
		-- set default backpack on death
		update UsersChars set BackpackID=20176, BackpackSize=12 where CharID=@in_CharID
		-- delete stuff from backpack
		delete from UsersInventory where CustomerID=@in_CustomerID and CharID=@in_CharID

		exec DBG_StoreApiCall 'Death', 0, @in_CustomerID, @in_CharID
	end

	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharChangeSkin]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharChangeSkin]
GO
CREATE PROCEDURE [dbo].[WZ_CharChangeSkin] 
	@in_CustomerID int,
	@in_CharID int,
	@in_HeadIdx int,
	@in_BodyIdx int,
	@in_LegsIdx int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- TODO check for indices
	-- 	MaxHeads = $member['Bulkiness'];
	--	MaxBodys = $member['Inaccuracy'];
	--	MaxLegs  = $member['Stealth'];

	update UsersChars 
	set BodyIdx=@in_BodyIdx,
		HeadIdx=@in_HeadIdx,
		LegsIdx=@in_LegsIdx
	where CharID=@in_CharID 
	
	-- success
	select 0 as ResultCode
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharCreate]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharCreate]
GO
CREATE PROCEDURE [dbo].[WZ_CharCreate] 
	@in_CustomerID int,
	@in_Hardcore int,
	@in_Gamertag nvarchar(64),
	@in_HeroItemID int,
	@in_HeadIdx int,
	@in_BodyIdx int,
	@in_LegsIdx int
AS
BEGIN
	SET NOCOUNT ON;

	if(@in_Gamertag like '%sergey%titov%') begin
		select 9 as ResultCode, 'no impersonation' as ResultMsg
		return
	end

	if(@in_Gamertag like '%sergi%titov%') begin
		select 9 as ResultCode, 'no impersonation' as ResultMsg
		return
	end

	if(@in_Gamertag like '%titov%sergey%') begin
		select 9 as ResultCode, 'no impersonation' as ResultMsg
		return
	end
	
	if(@in_Gamertag like '%\[dev\]%' escape '\') begin
		select 9 as ResultCode, 'no dev' as ResultMsg
		return
	end

	-- check if gamertag is unique
	if exists (select CharID from UsersChars where Gamertag=@in_Gamertag)
	begin
		select 9 as ResultCode, 'Gamertag already exists' as ResultMsg
		return
	end

	-- we can't have more that 5 survivors
	declare @NumChars int = 0
	select @NumChars=COUNT(*) from UsersChars where CustomerID=@in_CustomerID
	if(@NumChars >= 5) begin
		select 6 as ResultCode, 'too many created chars' as ResultMsg
		return
	end
	
	-- trials can't have more that 1
	declare @AccountType int = 0
	select @AccountType=AccountType from UsersData where CustomerID=@in_CustomerID
	if(@AccountType = 20 and @NumChars >= 1) begin
		select 6 as ResultCode, 'too many created trial chars' as ResultMsg
		return
	end

	-- must have that item in inventory
	if not exists(select InventoryID from UsersInventory where CustomerID=@in_CustomerID and ItemID=@in_HeroItemID)
	begin
		select 6 as ResultCode, 'no hero' as ResultMsg
		return
	end

	-- validate that this is actual body
	declare @GearCategory int = 0
	declare @GearWeight float = 0
	select @GearCategory=Category, @GearWeight=Weight from Items_Gear where ItemID=@in_HeroItemID
	if(@GearCategory <> 16) begin
		select 6 as ResultCode, 'bad hero' as ResultMsg
		return
	end

	-- only developers can make chars with unreleased skins (weight < 0)
	declare @IsDeveloper int = 0
	select @IsDeveloper=IsDeveloper from UsersData where CustomerID=@in_CustomerID
	if(@IsDeveloper = 0 and @GearWeight < 0) begin
		select 6 as ResultCode, 'unreleased hero' as ResultMsg
		return
	end

	-- create!
	insert into UsersChars (
		CustomerID,
		Gamertag,
		Alive,
		Hardcore,
		HeroItemID,
		HeadIdx,
		BodyIdx,
		LegsIdx,
		CreateDate
	) values (
		@in_CustomerID,
		@in_Gamertag,
		3,
		@in_Hardcore,
		@in_HeroItemID,
		@in_HeadIdx,
		@in_BodyIdx,
		@in_LegsIdx,
		GETDATE()
	)
	declare @CharID int = SCOPE_IDENTITY()
	
	-- give basic items for first few survivors
	declare @CharsCreated int = 0
	update UsersData set CharsCreated=(CharsCreated+1) where CustomerID=@in_CustomerID
	select @CharsCreated=CharsCreated from UsersData where CustomerID=@in_CustomerID
	if(@CharsCreated <= 10) begin
		-- add some default items - BE ULTRA CAREFUL with BackpackSlot number
		insert into UsersInventory (CustomerID, CharID, BackpackSlot, ItemID, LeasedUntil, Quantity)
			values (@in_CustomerID, @CharID, 1, 101306, '2020-1-1', 1) -- Flashlight
		insert into UsersInventory (CustomerID, CharID, BackpackSlot, ItemID, LeasedUntil, Quantity)
			values (@in_CustomerID, @CharID, 2, 101261, '2020-1-1', 1) -- Bandages
		insert into UsersInventory (CustomerID, CharID, BackpackSlot, ItemID, LeasedUntil, Quantity)
			values (@in_CustomerID, @CharID, 3, 101296, '2020-1-1', 1) -- Can of Soda
		insert into UsersInventory (CustomerID, CharID, BackpackSlot, ItemID, LeasedUntil, Quantity)
			values (@in_CustomerID, @CharID, 4, 101289, '2020-1-1', 1) -- Granola Bar
	end
	else -- otherwise just give flashlight and nothing else
	begin
		-- add some default items - BE ULTRA CAREFUL with BackpackSlot number
		insert into UsersInventory (CustomerID, CharID, BackpackSlot, ItemID, LeasedUntil, Quantity)
			values (@in_CustomerID, @CharID, 1, 101306, '2020-1-1', 1) -- Flashlight
	end
	
	-- allow to use postbox on newly created survivors
	update UsersChars set GameFlags=1 where CharID=@CharID
	
	select 0 as ResultCode
	select @CharID as 'CharID'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharDelete]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharDelete]
GO
CREATE PROCEDURE [dbo].[WZ_CharDelete] 
	@in_CustomerID int,
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end

	-- remove from clan
	declare @ClanID int = 0
	declare @ClanRank int = 0
	select @ClanID=ClanID, @ClanRank=ClanRank from UsersChars where CharID=@in_CharID
	if(@ClanID > 0)
	begin
		-- if leader is leaving
		if(@ClanRank = 0)
		begin
			-- check if there is people left in clan
			declare @NumClanMembers int
			select @NumClanMembers=COUNT(*) from UsersChars where ClanID=@ClanID
			if(@NumClanMembers > 1) begin
				select 7 as ResultCode, 'still members in clan'
				return
			end

			-- delete clan
			exec WZ_ClanFN_DeleteClan @ClanID
		end
		else
		begin
			-- not leader, just leave clan
			update ClanData set NumClanMembers=(NumClanMembers - 1) where ClanID=@ClanID
		end
	end
	
	delete from UsersChars where CharID=@in_CharID
	delete from UsersInventory where CharID=@in_CharID

	-- success
	select 0 as ResultCode
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharRename]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharRename]
GO
CREATE PROCEDURE [dbo].[WZ_CharRename]
	@in_CustomerID int,
	@in_CharID int,
	@in_Gamertag nvarchar(64)
AS
BEGIN
	SET NOCOUNT ON;

	--	
	-- note: all checks was performed in WZ_CharRenameCheck	
	--

	-- rename
	declare @OldGamertag nvarchar(64)
	select @OldGamertag=Gamertag from UsersChars where CharID=@in_CharID
	update UsersChars set Gamertag=@in_Gamertag, CharRenameTime=GETDATE() where CharID=@in_CharID

	-- and log
	insert into DBG_CharRenames values (GETDATE(), @in_CustomerID, @in_CharID, @OldGamertag, @in_Gamertag)
	
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharRenameCheck]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharRenameCheck]
GO
CREATE PROCEDURE [dbo].[WZ_CharRenameCheck]
	@in_CustomerID int,
	@in_CharID int,
	@in_Gamertag nvarchar(64)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	if(@in_Gamertag like '%sergey%titov%') begin
		select 9 as ResultCode, 'no impersonation' as ResultMsg
		return
	end

	if(@in_Gamertag like '%sergi%titov%') begin
		select 9 as ResultCode, 'no impersonation' as ResultMsg
		return
	end

	if(@in_Gamertag like '%titov%sergey%') begin
		select 9 as ResultCode, 'no impersonation' as ResultMsg
		return
	end
	
	if(@in_Gamertag like '%\[dev\]%' escape '\') begin
		select 9 as ResultCode, 'no dev' as ResultMsg
		return
	end

	-- check if gamertag is unique
	if exists (select CharID from UsersChars where Gamertag=@in_Gamertag)
	begin
		select 9 as ResultCode, 'Gamertag already exists' as ResultMsg
		return
	end

	declare @MinutesLeft int
	select @MinutesLeft = DATEDIFF(minute, GETDATE(), DATEADD(week, 2, CharRenameTime)) from UsersChars where CharID=@in_CharID

	select 0 as ResultCode
	select @MinutesLeft as MinutesLeft
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharRevive]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharRevive]
GO
CREATE PROCEDURE [dbo].[WZ_CharRevive]
	@in_CustomerID int,
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- get developer flag
	declare @IsDeveloper int = 0
	select @IsDeveloper=IsDeveloper from UsersData where CustomerID=@in_CustomerID

	-- note that revive timer is 1hrs, change in WZ_GetAccountInfo2 as well
	declare @SecToRevive int
	declare @Alive int = 0
	declare @Hardcore int = 0
	select 
		@SecToRevive=DATEDIFF(second, GETUTCDATE(), DATEADD(minute, 20, DeathUtcTime)),
		@Alive=Alive,
		@Hardcore=Hardcore
	from UsersChars where CharID=@in_CharID

	-- prevent revive for hardcore chars
	if(@Hardcore = 1) begin
		select 6 as ResultCode, 'character is hardcore' as ResultMsg
		return
	end

	-- prevent fast teleporting if we're not dead
	if(@Alive <> 0) begin
		select 6 as ResultCode, 'character is not dead' as ResultMsg
		return
	end
	
	-- do not allow early revive, give 2min grace. We now check for money revive in WZ_CharReviveCheck
	--if(@SecToRevive > 120 and @IsDeveloper = 0) begin
	--	select 6 as ResultCode, 'too early' as ResultMsg
	--	return
	--end
	
	-- revive
	update UsersChars set
		Alive=2,
		Health=100,
		Food=0,
		Water=0,
		Toxic=0,
		GameFlags=1
	where CharID=@in_CharID

	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_CharReviveCheck]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_CharReviveCheck]
GO
CREATE PROCEDURE [dbo].[WZ_CharReviveCheck]
	@in_CustomerID int,
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- change server revive time in WZ_GetAccountInfo2/WZ_Revive/WZ_ReviveCheck as well
	declare @SecToRevive int
	declare @Alive int = 1
	select 
		@SecToRevive=DATEDIFF(second, GETUTCDATE(), DATEADD(minute, 20, DeathUtcTime)),
		@Alive=Alive
	from UsersChars where CharID=@in_CharID

	-- premium accs have 10min revive time
	declare @PremiumExpireTime datetime
	select @PremiumExpireTime=PremiumExpireTime from UsersData where CustomerID=@in_CustomerID
	if(GETDATE() < @PremiumExpireTime) begin
		set @SecToRevive = @SecToRevive - 600
	end

	select 0 as ResultCode

	-- check if we need money for revive
	declare @NeedMoney int = 0
	if(@SecToRevive > 61 and @Alive = 0) set @NeedMoney = 1
	
	select @SecToRevive as 'SecToRevive', @NeedMoney as 'NeedMoney'
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanAddClanMembers]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanAddClanMembers]
GO
CREATE PROCEDURE [dbo].[WZ_ClanAddClanMembers]
	@in_CharID int,
	@in_ItemID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end

	-- add members value is in permanent GD price
	declare @GPriceP int = 0
	select @GPriceP=GPriceP from Items_Generic where ItemID=@in_ItemID
	if(@GPriceP = 0) begin
		select 6 as ResultCode, 'no price1' as ResultMsg
		return
	end
	
	-- update clan
	update ClanData set MaxClanMembers=(MaxClanMembers+@GPriceP) where ClanID=@ClanID
	
	-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Var2,
		Text1
	) values (
		@ClanID,
		GETDATE(),
		13, -- ClanEvent_AddMaxMembers
		99, -- Visible to all
		@in_CharID,
		@GPriceP,
		@Gamertag
	)
	
	-- success
	select 0 as ResultCode

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanApplyAnswer]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanApplyAnswer]
GO
CREATE PROCEDURE [dbo].[WZ_ClanApplyAnswer]
	@in_CharID int,
	@in_ClanApplicationID int,
	@in_Answer int
AS
BEGIN
	SET NOCOUNT ON;

-- sanity checks

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
	-- only leader and officers can answer application
	if(@ClanRank > 1) begin
		select 23 as ResultCode, 'no permission' as ResultMsg
		return
	end

	-- check if we have enough slots in clan
	declare @MaxClanMembers int
	declare @NumClanMembers int
	select @MaxClanMembers=MaxClanMembers, @NumClanMembers=NumClanMembers from ClanData where ClanID=@ClanID
	if(@NumClanMembers >= @MaxClanMembers) begin
		select 20 as 'ResultCode', 'not enough slots' as ResultMsg
		return
	end

-- check application

	declare @AppClanID int = 0
	declare @AppCharID int
	select @AppClanID=ClanID, @AppCharID=CharID	from ClanApplications where ClanApplicationID=@in_ClanApplicationID
	if(@AppClanID <> @ClanID) begin
		select 6 as ResultCode, 'bad application id' as ResultMsg
		return
	end
	
	-- mark that application as processed
	update ClanApplications set IsProcessed=1 where ClanApplicationID=@in_ClanApplicationID
	
	-- make sure that this guy isn't joined other clan somehow (race condition)
	declare @AppGamertag nvarchar(64)
	select @AppClanID=ClanID, @AppGamertag=Gamertag from UsersChars where CharID=@AppCharID
	if(@AppClanID <> 0) begin
		select 21 as ResultCode, 'applicant already joined clan' as ResultMsg
		return
	end

	if(@in_Answer = 0)
	begin
		-- declined clan joining
		-- TODO: send message to player about denial

		select 0 as ResultCode
		return
	end
	
	-- accept application, join player to clan
	update ClanData set NumClanMembers=(NumClanMembers + 1) where ClanID=@ClanID
	update UsersChars set ClanID=@ClanID, ClanRank=99, ClanJoinDate=GETDATE() where CharID=@AppCharID
	
	-- clear all other applications
	delete from ClanApplications where CharID=@AppCharID

-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Text1
	) values (
		@ClanID,
		GETDATE(),
		4, -- CLANEvent_Join
		99, -- Visible to all
		@AppCharID,
		@AppGamertag
	)
	
	select 0 as ResultCode
	return

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanApplyGetList]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanApplyGetList]
GO
CREATE PROCEDURE [dbo].[WZ_ClanApplyGetList]
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;

-- sanity checks

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
-- give list of applyers

	-- only leader and officers can view application list
	if(@ClanRank > 1) begin
		select 6 as ResultCode, 'no permission' as ResultMsg
		return
	end

	-- success
	select 0 as ResultCode
	
	select 
		a.ClanApplicationID,
		a.ApplicationText,
		DATEDIFF(mi, GETDATE(), a.ExpireTime) as MinutesLeft,
		c.*
	from ClanApplications a
	join UsersChars c on (c.CharID=a.CharID)
	where a.ClanID=@ClanID and GETDATE()<ExpireTime and IsProcessed=0
	
	return
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanApplyToJoin]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanApplyToJoin]
GO
CREATE PROCEDURE [dbo].[WZ_ClanApplyToJoin]
	@in_CharID int,
	@in_ClanID int,
	@in_ApplicationText nvarchar(500)
AS
BEGIN
	SET NOCOUNT ON;

	declare @APPLY_EXPIRE_TIME_HOURS int = 72
	declare @MAX_PENDING_APPS int = 5	-- can be maximum 5 pending invitations
	
-- sanity checks

	-- player must be without clan
	declare @PlayerClanID int = 0
	select @PlayerClanID=ClanID from UsersChars where CharID=@in_CharID
	if(@PlayerClanID > 0) begin
		select 6 as ResultCode, 'already in clan' as ResultMsg
		return
	end

	-- make sure clan exists
	if not exists (select ClanID from ClanData where ClanID=@in_ClanID) begin
		select 6 as ResultCode, 'no clanid' as ResultMsg
		return
	end
	
	-- see if we already have pending invidation
	declare @AppExpireTime datetime
	select @AppExpireTime=ExpireTime from ClanApplications where ClanID=@in_ClanID and CharID=@in_CharID and GETDATE()<ExpireTime
	if(@@ROWCOUNT > 0) begin
		select 24 as ResultCode, 'pending application' as ResultMsg
		return
	end
	
	-- see if we already have too much applications
	declare @AppTotalCounts int = 0
	select @AppTotalCounts=COUNT(*) from ClanApplications where CharID=@in_CharID and GETDATE()<ExpireTime
	if(@AppTotalCounts >= @MAX_PENDING_APPS) begin
		select 25 as ResultCode, 'too many applications' as ResultMsg
		return 
	end
	
-- send application

	insert into ClanApplications (
		ClanID,
		CharID,
		ExpireTime,
		ApplicationText,
		IsProcessed
	) values (
		@in_ClanID,
		@in_CharID,
		DATEADD(hour, @APPLY_EXPIRE_TIME_HOURS, GETDATE()),
		@in_ApplicationText,
		0
	)

	-- success
	select 0 as ResultCode
	return
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanCreate]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanCreate]
GO
CREATE PROCEDURE [dbo].[WZ_ClanCreate]
	@in_CustomerID int,
	@in_CharID int,
	@in_ClanName nvarchar(64),
	@in_ClanNameColor int,
	@in_ClanTag nvarchar(4),
	@in_ClanTagColor int,
	@in_ClanEmblemID int,
	@in_ClanEmblemColor int
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @DEFAULT_CLAN_SIZE int = 20

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end

	-- sanity check
	declare @ClanID int = 0
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID > 0) begin
		select 6 as 'ResultCode', 'already have clan' as 'ResultMsg'
		return
	end
	
	-- create clan!
	insert into ClanData (
		ClanName, ClanNameColor, 
		ClanTag, ClanTagColor,
		ClanEmblemID, ClanEmblemColor,
		ClanXP,	ClanLevel, ClanGP,
		OwnerCustomerID, OwnerCharID,
		MaxClanMembers, NumClanMembers,
		ClanCreateDate
	) values (
		@in_ClanName, @in_ClanNameColor,
		@in_ClanTag, @in_ClanTagColor,
		@in_ClanEmblemID, @in_ClanEmblemColor,
		0,	0,	0,
		@in_CustomerID, @in_CharID,
		@DEFAULT_CLAN_SIZE,	1,
		GETDATE()
	)
	
	-- get new clanID
	select @ClanID=ClanID from ClanData where OwnerCharID=@in_CharID
	if(@@ROWCOUNT = 0) begin
		select 6 as 'ResultCode', 'clan creation failed!' as 'ResultMsg'
		return
	end
	
	-- update owner clan data
	update UsersChars set ClanID=@ClanID, ClanRank=0, ClanJoinDate=GETDATE() where CharID=@in_CharID
	
	-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Text1
	) values (
		@ClanID,
		GETDATE(),
		1, -- CLANEVENT_Created
		99, -- Visible to all
		@in_CharID,
		@Gamertag
	)
	
	-- success
	select 0 as ResultCode
	
	select @ClanID as 'ClanID'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanCreateCheckMoney]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanCreateCheckMoney]
GO
CREATE PROCEDURE [dbo].[WZ_ClanCreateCheckMoney]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;

	-- this call is always valid
	select 0 as ResultCode

	-- doesn't need money yet	
	select 0 as NeedMoney

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanCreateCheckParams]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanCreateCheckParams]
GO
CREATE PROCEDURE [dbo].[WZ_ClanCreateCheckParams]
	@in_CharID int,
	@in_ClanName nvarchar(64),
	@in_ClanTag nvarchar(4)
AS
BEGIN
	SET NOCOUNT ON;

	-- user can't create more that one clan
	declare @ClanID int = 0
	declare @timePlayed int = 0
	select @ClanID=ClanID, @timePlayed=TimePlayed from UsersChars where CharID=@in_CharID
	if(@ClanID > 0) begin
		select 6 as ResultCode, 'already have clan' as ResultMsg
		return
	end
	
	-- check time played, should be more than 20 hours (72000 sec)
	if(@timePlayed < 72000) begin
		select 29 as ResultCode, 'time played' as ResultMsg
		return
	end
	
	
	-- check that name/tag is unique
	if(exists(select * from ClanData where ClanName=@in_ClanName)) begin
		select 27 as ResultCode, 'clan name' as ResultMsg
		return
	end
	if(exists(select * from ClanData where ClanTag=@in_ClanTag)) begin
		select 28 as ResultCode, 'clan tag' as ResultMsg
		return
	end

	select 0 as ResultCode
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanDonateToClanGP]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanDonateToClanGP]
GO
CREATE PROCEDURE [dbo].[WZ_ClanDonateToClanGP]
	@in_CustomerID int,
	@in_CharID int,
	@in_GP int
AS
BEGIN
	SET NOCOUNT ON;

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
-- sanity checks
	declare @ClanID int
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	declare @ClanJoinDate datetime
	select @ClanID=ClanID, @ClanRank=ClanRank, @ClanJoinDate=ClanJoinDate, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'not in clan' as ResultMsg
		return
	end

	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@in_CustomerID
	
	if(@in_GP < 0) begin
		select 6 as ResultCode, 'sneaky bastard...' as ResultMsg
		return
	end
	if(@in_GP > @GamePoints) begin
		select 6 as ResultCode, 'not enough GP' as ResultMsg
		return
	end

	-- can't donate if less that 1 week in clan
	if(DATEDIFF(dd, @ClanJoinDate, GETDATE()) < 7) begin
		select 9 as ResultCode, 'less that week in clan' as ResultMsg
		return
	end

-- donating

	declare @ClanTag nvarchar(16)
	select @ClanTag=ClanTag from ClanData where ClanId=@ClanID

	-- substract GP
	declare @GPAlterDesc nvarchar(512) = 'Donate to Clan ' + @ClanTag
	declare @AlterGP int = -@in_GP
	exec FN_AlterUserGP @in_CustomerID, @AlterGP, 'toclan', @GPAlterDesc
	update UsersChars set ClanContributedGP=(ClanContributedGP+@in_GP) where CharID=@in_CharID
	-- and record that
	INSERT INTO FinancialTransactions
		VALUES (@in_CustomerID, 'CLAN_GPToClan', 4000, GETDATE(), 
				@in_GP, '1', 'APPROVED', @ClanID)
	
	-- add clan gp
	update ClanData set ClanGP=(ClanGP+@in_GP) where ClanID=@ClanID

-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Var3,
		Text1
	) values (
		@ClanID,
		GETDATE(),
		10, -- CLANEvent_DonateToClanGP
		99, -- Visible to all
		@in_CharID,
		@in_GP,
		@Gamertag
	)

	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanDonateToMemberGP]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanDonateToMemberGP]
GO
CREATE PROCEDURE [dbo].[WZ_ClanDonateToMemberGP]
	@in_CustomerID int,
	@in_CharID int,
	@in_GP int,
	@in_MemberID int
AS
BEGIN
	SET NOCOUNT ON;

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
-- sanity checks

	-- clan id valudation of caller
	declare @ClanID int
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'not in clan' as ResultMsg
		return
	end

	-- clan id validation of member
	declare @MemberClanID int = 0
	declare @MemberCustomerID int = 0
	declare @MemberGamerTag nvarchar(64)
	declare @MemberClanJoinDate datetime
	select @MemberClanID=ClanID, @MemberCustomerID=CustomerID, @MemberGamerTag=GamerTag, @MemberClanJoinDate=ClanJoinDate from UsersChars where CharID=@in_MemberID
	if(@MemberClanID <> @ClanID) begin
		select 6 as ResultCode, 'member in wrong clan' as ResultMsg
		return
	end
	
-- donating
	if(@ClanRank > 0) begin
		select 23 as ResultCode, 'no permission' as ResultMsg
		return
	end
	
	declare @ClanTag nvarchar(16)
	declare @ClanGP int = 0
	select @ClanGP=ClanGP, @ClanTag=ClanTag from ClanData where ClanID=@ClanID
	if(@in_GP < 0) begin
		select 6 as ResultCode, 'sneaky bastard...' as ResultMsg
		return
	end
	if(@in_GP > @ClanGP) begin
		select 6 as ResultCode, 'not enough GP in clan' as ResultMsg
		return
	end

	-- can't donate if less that 1 week in clan
	if(DATEDIFF(dd, @MemberClanJoinDate, GETDATE()) < 7) begin
		select 9 as ResultCode, 'less that week in clan' as ResultMsg
		return
	end

	-- substract GP from clan
	update ClanData set ClanGP=(ClanGP-@in_GP) where ClanID=@ClanID

	-- add member gp
	declare @GPAlterDesc nvarchar(512) = 'Donate from Clan ' + @ClanTag + ' by ' + @Gamertag
	exec FN_AlterUserGP @MemberCustomerID, @in_GP, 'fromclan', @GPAlterDesc
	-- and record that
	INSERT INTO FinancialTransactions
		VALUES (@MemberCustomerID, 'CLAN_GPToMember', 4001, GETDATE(), 
				@in_GP, '1', 'APPROVED', @ClanID)
	
-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Var2,
		Var3,
		Text1,
		Text2
	) values (
		@ClanID,
		GETDATE(),
		11, -- CLANEvent_DonateToMemberGP
		1, -- Visible to officers
		@in_CharID,
		@in_MemberID,
		@in_GP,
		@Gamertag,
		@MemberGamertag
	)
	
-- TODO: send message to player about donate

	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanFN_DeleteClan]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanFN_DeleteClan]
GO
CREATE PROCEDURE [dbo].[WZ_ClanFN_DeleteClan]
	@in_ClanID int
AS
BEGIN
	SET NOCOUNT ON;
	
	delete from ClanData where ClanID=@in_ClanID
	delete from ClanApplications where ClanID=@in_ClanID
	delete from ClanInvites where ClanID=@in_ClanID

	update UsersChars set ClanID=0 where ClanID=@in_ClanID
	
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanFN_OnCustomerBanned]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanFN_OnCustomerBanned]
GO
CREATE PROCEDURE [dbo].[WZ_ClanFN_OnCustomerBanned]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;
	
	--
	-- this function checks for all player chars and if his char is clan leader, pass leadership to other person
	--
	
	declare @CharID int
	declare @ClanID int
	declare @ClanRank int

	DECLARE t_cursor_char CURSOR FOR 
		select CharID, ClanID, ClanRank from UsersChars where CustomerID=@in_CustomerID

	OPEN t_cursor_char
	FETCH NEXT FROM t_cursor_char into @CharID, @ClanID, @ClanRank
	while @@FETCH_STATUS = 0 
	begin
		if(@ClanID > 0 and @ClanRank = 0)
		begin
			-- this character is clan leader, promote some other guy to leader
			declare @NewLeaderCharID int = 0
			select top(1) @NewLeaderCharID=CharID from UsersChars u
				join UsersData d on d.CustomerID=u.CustomerID
				where u.CustomerID<>@in_CustomerID and u.ClanId=@ClanID and u.ClanRank>0 and d.AccountStatus<>200
				order by u.ClanRank asc, CharId asc
			if(@@ROWCOUNT > 0)
			begin
				update UsersChars set ClanRank=0 where CharID=@NewLeaderCharID
				select @ClanID as 'ClanID', @NewLeaderCharID as 'New Leader'
			end
		end
		
		-- leave from clan
		if(@ClanID > 0)
		begin
			update UsersChars set ClanID=0, ClanContributedGP=0, ClanContributedXP=0 where CharID=@CharID
			update ClanData set NumClanMembers=(NumClanMembers - 1) where ClanID=@ClanID
		end
		
		FETCH NEXT FROM t_cursor_char into @CharID, @ClanID, @ClanRank
	end
	CLOSE t_cursor_char
	DEALLOCATE t_cursor_char

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanGetEvents]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanGetEvents]
GO
CREATE PROCEDURE [dbo].[WZ_ClanGetEvents]
	@in_CharID int,
	@in_Days int
AS
BEGIN
	SET NOCOUNT ON;

-- sanity checks

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
-- report clan log
	select 0 as ResultCode
	
	declare @MinDate datetime = DATEADD(day, -@in_Days, GETDATE())
	select * from ClanEvents where ClanID=@ClanID and EventDate>=@MinDate and @ClanRank <= EventRank order by EventDate asc
	
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanGetInfo]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanGetInfo]
GO
CREATE PROCEDURE [dbo].[WZ_ClanGetInfo]
	@in_ClanID int,
	@in_GetMembers int
AS
BEGIN
	SET NOCOUNT ON;

	-- success
	select 0 as ResultCode
	
	-- and report clan data
	if(@in_ClanID > 0) 
	begin
		-- specific clan
		select d.*, c.gamertag from ClanData d
			left join UsersChars c on c.CharID=d.OwnerCharID
			where d.ClanID=@in_ClanID
	end
	else 
	begin
		-- all clans
		select d.*, c.gamertag from ClanData d
			left join UsersChars c with (index(PK_Profile_Loadouts2)) on c.CharID=d.OwnerCharID
	end
		
	-- if need to report members
	if(@in_ClanID > 0 and @in_GetMembers > 0) begin
		select UsersChars.* from UsersChars	where ClanID=@in_ClanID
	end

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanGetList]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanGetList]
GO
CREATE PROCEDURE [dbo].[WZ_ClanGetList]
	@in_SortType int,
	@in_Start int,
	@in_Size int
AS
BEGIN
	SET NOCOUNT ON;

	-- success
	select 0 as ResultCode;
	
	select count(*) as Size from ClanData;

/*
	WITH OrderedClans AS
	(
		SELECT *,
		ROW_NUMBER() OVER (ORDER BY ClanID asc) AS 'RowNumber'
		FROM ClanData d
	) 
*/	

	WITH OrderedClans AS
	(
		SELECT *,
		ROW_NUMBER() OVER (ORDER BY 
			CASE WHEN @in_SortType=0 THEN ClanID END asc,
			CASE WHEN @in_SortType=1 THEN LTRIM(RTRIM(ClanName)) END asc,
			CASE WHEN @in_SortType=2 THEN NumClanMembers END desc,
			CASE WHEN @in_SortType=3 THEN ClanTag END asc
			) AS 'RowNumber'
		FROM ClanData d
	) 
	SELECT o.*, c.gamertag
	FROM OrderedClans o
	left join UsersChars c with (index(PK_Profile_Loadouts2)) on c.CharID=o.OwnerCharID
	WHERE RowNumber BETWEEN @in_Start AND (@in_Start + @in_Size - 1)

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanGetPlayerData]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanGetPlayerData]
GO
CREATE PROCEDURE [dbo].[WZ_ClanGetPlayerData]
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;

	-- success
	select 0 as ResultCode
	
	-- report player clan id and current clan info
	select c.ClanID, c.ClanRank, d.*
		from UsersChars c
		left join ClanData d on d.ClanID=c.ClanID
		where CharID=@in_CharID

	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanInviteAnswer]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanInviteAnswer]
GO
CREATE PROCEDURE [dbo].[WZ_ClanInviteAnswer]
	@in_CharID int,
	@in_ClanInviteID int,
	@in_Answer int
AS
BEGIN
	SET NOCOUNT ON;

-- sanity checks

	-- must be free to join clan
	declare @ClanID int = 0
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID <> 0) begin
		select 6 as ResultCode, 'already in clan' as ResultMsg
		return
	end
	
	-- have valid invitation id (get actual ClanID here)
	declare @InvCharID int
	select @ClanID=ClanID, @InvCharID=CharID from ClanInvites where ClanInviteID=@in_ClanInviteID
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'bad inviteid #1' as ResultMsg
		return
	end
	if(@InvCharID <> @in_CharID) begin
		select 6 as ResultCode, 'bad inviteid #2' as ResultMsg
		return
	end

-- invite

	-- delete invite anyway
	delete from ClanInvites where ClanInviteID=@in_ClanInviteID
	
	-- check if invite is denied
	if(@in_Answer = 0) begin
		select 0 as ResultCode
		select @ClanID as ClanID
		return
	end

	-- check if we have enough slots in clan
	declare @MaxClanMembers int
	declare @NumClanMembers int
	select @MaxClanMembers=MaxClanMembers, @NumClanMembers=NumClanMembers from ClanData where ClanID=@ClanID
	if(@NumClanMembers >= @MaxClanMembers) begin
		select 20 as 'ResultCode', 'not enough slots' as ResultMsg
		return
	end
	
	-- join the clan!
	update ClanData set NumClanMembers=(NumClanMembers + 1) where ClanID=@ClanID
	update UsersChars set ClanID=@ClanID, ClanRank=99, ClanJoinDate=GETDATE() where CharID=@in_CharID

-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Text1
	) values (
		@ClanID,
		GETDATE(),
		4, -- CLANEvent_Join
		99, -- Visible to officers
		@in_CharID,
		@Gamertag
	)
	
	-- success
	select 0 as ResultCode
	select @ClanID as ClanID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanInviteGetInvitesForPlayer]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanInviteGetInvitesForPlayer]
GO
CREATE PROCEDURE [dbo].[WZ_ClanInviteGetInvitesForPlayer]
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;

-- report all pending invites

	select 0 as ResultCode
	
	select 
		i.ClanInviteID,
		c.Gamertag, 
		d.*
	from ClanInvites i
	left join UsersChars c on (c.CharID=i.InviterCharID)
	join ClanData d on (d.ClanID=i.ClanID)
	where i.CharID=@in_CharID and GETDATE()<ExpireTime
	
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanInviteReportAll]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanInviteReportAll]
GO
CREATE PROCEDURE [dbo].[WZ_ClanInviteReportAll]
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;

-- sanity checks

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
-- validate that we can invite

	-- only leader and officers can invite
	if(@ClanRank > 1) begin
		select 6 as ResultCode, 'no permission' as ResultMsg
		return
	end

-- report all pending invites

	-- success
	select 0 as ResultCode
	
	select 
		i.ClanInviteID, 
		c.Gamertag,
		DATEDIFF(mi, GETDATE(), i.ExpireTime) as MinutesLeft
	from ClanInvites i
	join UsersChars c on (c.CharID=i.CharID)
	where i.ClanID=@ClanID and GETDATE()<ExpireTime
	
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanInviteSendToPlayer]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanInviteSendToPlayer]
GO
CREATE PROCEDURE [dbo].[WZ_ClanInviteSendToPlayer]
	@in_CharID int,
	@in_InvGamertag nvarchar(64)
AS
BEGIN
	SET NOCOUNT ON;

	declare @INVITE_EXPIRE_TIME_HOURS int = 80
	
-- sanity checks

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'not in clan' as ResultMsg
		return
	end
	
-- validate that we can invite

	-- only leader and officers can invite
	if(@ClanRank > 1) begin
		select 23 as ResultCode, 'no permission' as ResultMsg
		return
	end
	
	-- check if we have enough slots in clan
	declare @MaxClanMembers int
	declare @NumClanMembers int
	select @MaxClanMembers=MaxClanMembers, @NumClanMembers=NumClanMembers from ClanData where ClanID=@ClanID
	
	declare @PendingInvites int = 0
	--DISABLED FOR NOW: select @PendingInvites=COUNT(*) from ClanInvites where ClanID=@ClanID and GETDATE()<ExpireTime
	if((@NumClanMembers + @PendingInvites) >= @MaxClanMembers) begin
		select 20 as 'ResultCode', 'not enough slots' as ResultMsg
		return
	end

	-- check if user exists	
	declare @InvCharID int
	declare @InvClanID int
	select @InvCharID=CharID, @InvClanID=ClanID from UsersChars where Gamertag=@in_InvGamertag
	if(@@ROWCOUNT = 0) begin
		select 22 as ResultCode, 'no such gamertag' as ResultMsg
		return
	end
	-- and have no clan
	if(@InvClanID <> 0) begin
		select 21 as ResultCode, 'already in clan' as ResultMsg
		return
	end
	
	-- check if we have pending invite
	if(exists(select * from ClanInvites where ClanID=@ClanID and CharID=@InvCharID and GETDATE()<ExpireTime)) begin
		select 24 as ResultCode, 'already invited' as ResultMsg
		return
	end
	
-- invite
	insert into ClanInvites (
		ClanID,
		InviterCharID,
		CharID,
		ExpireTime
	) values (
		@ClanID,
		@in_CharID,
		@InvCharID,
		DATEADD(hour, @INVITE_EXPIRE_TIME_HOURS, GETDATE())
	)

	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanKickMember]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanKickMember]
GO
CREATE PROCEDURE [dbo].[WZ_ClanKickMember]
	@in_CustomerID int,
	@in_CharID int,
	@in_MemberID int
AS
BEGIN
	SET NOCOUNT ON;

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
-- sanity checks
	if(@in_CharID = @in_MemberID) begin
		select 6 as 'ResultCode', 'cant kick himselft' as 'ResultMsg'
		return
	end

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
	-- clan id validation of member
	declare @MemberClanID int = 0
	declare @MemberGamerTag nvarchar(64)
	declare @MemberClanRank int
	select @MemberClanID=ClanID, @MemberClanRank=ClanRank, @MemberGamerTag=GamerTag from UsersChars where CharID=@in_MemberID
	if(@MemberClanID <> @ClanID) begin
		select 6 as ResultCode, 'member in wrong clan' as ResultMsg
		return
	end
	
-- validate that we can kick

	-- only leader and officers can kick
	if(@ClanRank > 1) begin
		select 23 as ResultCode, 'no permission' as ResultMsg
		return
	end

	-- cant kick higher rank
	if(@ClanRank > 0 and @ClanRank >= @MemberClanRank) begin
		select 6 as ResultCode, 'cant kick highter rank' as ResultMsg
		return
	end
	
-- update clan info and kick player
	update ClanData set NumClanMembers=(NumClanMembers-1) where ClanID=@ClanID
	update UsersChars set ClanID=0, ClanContributedGP=0, ClanContributedXP=0 where CharID=@in_MemberID
	
-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Var2,
		Text1,
		Text2
	) values (
		@ClanID,
		GETDATE(),
		6, -- CLANEvent_Kick
		99, -- Visible to all
		@in_CharID,
		@in_MemberID,
		@Gamertag,
		@MemberGamertag
	)
	
	-- TODO: send message to player about kick
	
	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanLeave]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanLeave]
GO
CREATE PROCEDURE [dbo].[WZ_ClanLeave]
	@in_CustomerID int,
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
-- sanity checks
	declare @ClanID int
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
-- leader is leaving clan	
	if(@ClanRank = 0) 
	begin
		declare @NumClanMembers int
		select @NumClanMembers=COUNT(*) from UsersChars where ClanID=@ClanID
		if(@NumClanMembers > 1) begin
			select 6 as ResultCode, 'owner cant leave - there is people left in clan' as ResultMsg
			return
		end

		-- generate clan event
		insert into ClanEvents (
			ClanID,
			EventDate,
			EventType,
			EventRank,
			Var1,
			Text1
		) values (
			@ClanID,
			GETDATE(),
			99, -- CLANEvent_Disband
			99, -- Visible to all
			@in_CharID,
			@Gamertag
		)
		
		-- and delete clan
		exec WZ_ClanFN_DeleteClan @ClanID
		
		select 0 as ResultCode
		return
	end

	-- actual leave
	update UsersChars set ClanID=0, ClanContributedGP=0, ClanContributedXP=0 where CharID=@in_CharID
	update ClanData set NumClanMembers=(NumClanMembers - 1) where ClanID=@ClanID

-- generate clan event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Text1
	) values (
		@ClanID,
		GETDATE(),
		5, -- CLANEvent_Left
		99, -- Visible to all
		@in_CharID,
		@Gamertag
	)
	
	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanSetLore]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanSetLore]
GO
CREATE PROCEDURE [dbo].[WZ_ClanSetLore]
	@in_CustomerID int,
	@in_CharID int,
	@in_Lore nvarchar(512)
AS
BEGIN
	SET NOCOUNT ON;

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int = 99
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
	-- only leader and officers can change lore
	if(@ClanRank > 1) begin
		select 23 as ResultCode, 'no permission' as ResultMsg
		return
	end
	
	update ClanData set ClanLore=@in_Lore where ClanID=@ClanID

	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ClanSetMemberRank]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ClanSetMemberRank]
GO
CREATE PROCEDURE [dbo].[WZ_ClanSetMemberRank]
	@in_CustomerID int,
	@in_CharID int,
	@in_MemberID int,
	@in_Rank int
AS
BEGIN
	SET NOCOUNT ON;

	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
-- sanity checks
	if(@in_CharID = @in_MemberID) begin
		select 6 as 'ResultCode', 'can not set own rank' as 'ResultMsg'
		return
	end

	-- clan id valudation of caller
	declare @ClanID int = 0
	declare @ClanRank int
	declare @Gamertag nvarchar(64)
	select @ClanID=ClanID, @ClanRank=ClanRank, @Gamertag=Gamertag from UsersChars where CharID=@in_CharID
	if(@ClanID = 0) begin
		select 6 as ResultCode, 'no clan' as ResultMsg
		return
	end
	
	-- clan id validation of member
	declare @MemberClanID int = 0
	declare @MemberGamerTag nvarchar(64)
	declare @MemberClanRank int
	declare @MemberCustomerID int
	select @MemberClanID=ClanID, @MemberClanRank=ClanRank, @MemberGamerTag=GamerTag, @MemberCustomerID=CustomerID from UsersChars where CharID=@in_MemberID
	if(@MemberClanID <> @ClanID) begin
		select 6 as ResultCode, 'member in wrong clan' as ResultMsg
		return
	end
	
-- validate that we can change rank

	-- only leader and officers can change ranks
	if(@ClanRank > 1) begin
		select 23 as ResultCode, 'no permission' as ResultMsg
		return
	end

	-- cant change higher rank
	if(@ClanRank > 0 and @ClanRank >= @MemberClanRank) begin
		select 6 as ResultCode, 'cant change highter rank' as ResultMsg
		return
	end
	
	if(@ClanRank > 0 and @ClanRank >= @in_Rank) begin
		select 6 as ResultCode, 'cant set same rank' as ResultMsg
		return
	end
	
-- code for changing clan ownership, owner becomes officer
	if(@ClanRank = 0 and @in_Rank = 0) begin
		update UsersChars set ClanRank=1 where CharID=@in_CharID
		update ClanData set OwnerCharID=@in_MemberID, OwnerCustomerID=@MemberCustomerID where ClanID=@ClanID
	end
	
-- update target member
	update UsersChars set ClanRank=@in_Rank where CharID=@in_MemberID
	
-- generate clan set rank event
	insert into ClanEvents (
		ClanID,
		EventDate,
		EventType,
		EventRank,
		Var1,
		Var2,
		Var3,
		Text1,
		Text2
	) values (
		@ClanID,
		GETDATE(),
		3, -- CLANEVENT_SetRank
		99, -- Visible to all
		@in_CharID,
		@in_MemberID,
		@in_Rank,
		@Gamertag,
		@MemberGamertag
	)
	
	-- TODO: send message to player about rank change
	
	-- success
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_DB_GenerateLeaderboards]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_DB_GenerateLeaderboards]
GO
CREATE PROCEDURE [dbo].[WZ_DB_GenerateLeaderboards]
AS  
BEGIN  
	SET NOCOUNT ON;  

	-- Leaderboard IDs:
	-- SOFTCORE:
	-- 00 - XP
	-- 01 - TimePlayed
	-- 02 - KilledZombies
	-- 03 - KilledSurvivors
	-- 04 - KilledBandits
	-- 05 - Reputation DESC - heroes
	-- 06 - Reputation ASC - bandits
	-- HARDCORE:
	-- 50 - XP
	-- 51 - TimePlayed
	-- 52 - KilledZombies
	-- 53 - KilledSurvivors
	-- 54 - KilledBandits
	-- 55 - Reputation DESC - heroes
	-- 56 - Reputation ASC - bandits
	
	-- 00 - XP
	truncate table Leaderboard00
	insert into Leaderboard00
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0
		order by c.XP desc

	-- 01 - TimePlayed
	truncate table Leaderboard01
	insert into Leaderboard01
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0
		order by c.TimePlayed desc

	-- 02 - KilledZombies
	truncate table Leaderboard02
	insert into Leaderboard02
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0
		order by c.Stat00 desc

	-- 03 - KilledSurvivors
	truncate table Leaderboard03
	insert into Leaderboard03
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0
		order by c.Stat01 desc

	-- 04 - KilledBandits
	truncate table Leaderboard04
	insert into Leaderboard04
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0
		order by c.Stat02 desc

	-- 05 - Reputation DESC - heroes
	truncate table Leaderboard05
	insert into Leaderboard05
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0 and c.Reputation>=10
		order by c.Reputation desc

	-- 06 - Reputation ASC - bandits
	truncate table Leaderboard06
	insert into Leaderboard06
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=0 and d.IsDeveloper=0 and c.Reputation<=-5
		order by c.Reputation asc

	-- 50 - XP
	truncate table Leaderboard50
	insert into Leaderboard50
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0
		order by c.XP desc

	-- 51 - TimePlayed
	truncate table Leaderboard51
	insert into Leaderboard51
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0
		order by c.TimePlayed desc

	-- 02 - KilledZombies
	truncate table Leaderboard52
	insert into Leaderboard52
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0
		order by c.Stat00 desc

	-- 03 - KilledSurvivors
	truncate table Leaderboard53
	insert into Leaderboard53
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0
		order by c.Stat01 desc

	-- 04 - KilledBandits
	truncate table Leaderboard54
	insert into Leaderboard54
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0
		order by c.Stat02 desc

	-- 05 - Reputation DESC - heroes
	truncate table Leaderboard55
	insert into Leaderboard55
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0 and c.Reputation>=10
		order by c.Reputation desc

	-- 06 - Reputation ASC - bandits
	truncate table Leaderboard56
	insert into Leaderboard56
		select top(2000)
			c.CustomerID, c.CharID, c.Gamertag, c.Alive, c.XP, c.TimePlayed, c.Reputation, 
			c.Stat00, c.Stat01, c.Stat02, c.Stat03, c.Stat04, c.Stat05, c.GameServerId, c.ClanID
		from UsersChars c
		join UsersData d on d.CustomerID=c.CustomerID
		where d.AccountStatus=100 and c.Hardcore=1 and d.IsDeveloper=0 and c.Reputation<=-5
		order by c.Reputation asc


END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GetAccountInfo2]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GetAccountInfo2]
GO
CREATE PROCEDURE [dbo].[WZ_GetAccountInfo2]
	@in_CustomerID int,
	@in_CharID int
AS
BEGIN
	SET NOCOUNT ON;

	-- check if CustomerID is valid
	if not exists (SELECT CustomerID FROM UsersData WHERE CustomerID=@in_CustomerID)
	begin
		select 6 as ResultCode
		return;
	end

	-- check if account expired
	declare @DateActiveUntil datetime
	select @DateActiveUntil=DateActiveUntil from UsersData where CustomerID=@in_CustomerID
	if(GETDATE() > @DateActiveUntil) begin
		update LoginSessions SET SessionID=0 where CustomerID=@in_CustomerID
		select 1 as ResultCode
		return
	end
	
	-- check if we're logging from both servers at once
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	if(@in_CharID > 0 and @GameServerId > 0 and DATEDIFF(second, @lastgamedate, GETDATE()) < 90) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'GetProfile_Srv#DoubleLogin', 2, @in_CustomerID, @in_CharID
		return
	end

--
-- login ok, report user data
--	
	select 0 as ResultCode

	SELECT 
		UsersData.*,
		DATEDIFF(ss, lastgamedate, GETDATE()) as 'SecFromLastGame',
		DATEDIFF(minute, GETDATE(), PremiumExpireTime) as 'PremiumLeft'
	FROM UsersData 
	where UsersData.CustomerID=@in_CustomerID
	
--
-- report chars
--
	if(@in_CharID > 0) 
	begin
		-- single character, version called from server
		select 
			0 as 'SecToRevive', 
			DATEDIFF(ss, LastUpdateDate, GETDATE()) as 'SecFromLastUpdate',
			c.*,
			ClanData.ClanTag, ClanData.ClanTagColor
		from UsersChars c
		left JOIN ClanData on (c.ClanID = ClanData.ClanID)
		where CustomerID=@in_CustomerID and CharID=@in_CharID
	end
	else 
	begin
		-- change server revive time in WZ_GetAccountInfo2/WZ_Revive as well
		select 
			DATEDIFF(second, GETUTCDATE(), DATEADD(minute, 20, DeathUtcTime)) as 'SecToRevive',
			0 as 'SecFromLastUpdate',
			c.*,
			ClanData.ClanTag, ClanData.ClanTagColor
		from UsersChars c
		left JOIN ClanData on (c.ClanID = ClanData.ClanID)
		where CustomerID=@in_CustomerID order by CharID asc
	end

--
-- report inventory
--
	select *
	from UsersInventory
	where CustomerID=@in_CustomerID and CharID=0
	
--
-- report backpacks
--
	if(@in_CharID > 0) begin
		-- single character, called from server
		select * from UsersInventory where CharID=@in_CharID
	end
	else begin
		select * from UsersInventory where CustomerID=@in_CustomerID and CharID>0 order by CharID asc
	end

--
-- finalize
-- 
	if(@in_CharID > 0) begin
		-- call from server, update last game time and set temporary GameServerId to indicate that user logged on to game server
		-- so all client inventory operation calls will fail
		-- actual GameServerId per char will be updated in WZ_SRV_UserJoinedGame3
		update UsersData set 
			lastjoineddate=GETDATE(),
			lastgamedate=GETDATE(),
			GameServerId=1
		where CustomerID=@in_CustomerID
	end

	if(@in_CharID > 0)
		exec DBG_StoreApiCall 'GetProfile_Srv', 0, @in_CustomerID, @in_CharID
	else
		exec DBG_StoreApiCall 'GetProfile', 0, @in_CustomerID, @in_CharID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GetDataGameRewards]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GetDataGameRewards]
GO
CREATE PROCEDURE [dbo].[WZ_GetDataGameRewards]
AS
BEGIN  
	SET NOCOUNT ON;  

	select 0 as ResultCode
	select * from DataGameRewards
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GetGPTransactions]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GetGPTransactions]
GO
CREATE PROCEDURE [dbo].[WZ_GetGPTransactions]
	@in_CustomerID int
AS
BEGIN  
	SET NOCOUNT ON;  

	select 0 as ResultCode
	
	select GamePoints from UsersData where CustomerID=@in_CustomerID
	select * from DBG_GPTransactions where CustomerID=@in_CustomerID order by TransactionID desc
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GetItemsData]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GetItemsData]
GO
CREATE PROCEDURE [dbo].[WZ_GetItemsData] 
AS
BEGIN
	SET NOCOUNT ON;

	select 0 as ResultCode
	
	select * from Items_Gear
	select * from Items_Weapons;
	select * from Items_Generic
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GetShopInfo1]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GetShopInfo1]
GO
CREATE PROCEDURE [dbo].[WZ_GetShopInfo1] 
AS
BEGIN
	SET NOCOUNT ON;

	select 0 as ResultCode
	
	-- select all shop items
	      SELECT ItemID, Category, IsNew, Price1, Price7, Price30, PriceP, GPrice1, GPrice7, GPrice30, GPriceP FROM Items_Gear
	union SELECT ItemID, Category, IsNew, Price1, Price7, Price30, PriceP, GPrice1, GPrice7, GPrice30, GPriceP	FROM Items_Weapons
	union SELECT ItemID, Category, IsNew, Price1, Price7, Price30, PriceP, GPrice1, GPrice7, GPrice30, GPriceP	FROM Items_Generic
	union SELECT ItemID, Category, IsNew, Price1, Price7, Price30, PriceP, GPrice1, GPrice7, GPrice30, GPriceP	FROM Items_Attachments
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GPConvert]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GPConvert]
GO
CREATE PROCEDURE [dbo].[WZ_GPConvert]
	@in_CustomerID int,
	@in_GP int
AS
BEGIN  
	SET NOCOUNT ON;  

	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@in_CustomerID
	
	if(@in_GP < 0) begin
		select 6 as ResultCode, 'sneaky bastard...' as ResultMsg
		return
	end
	if(@in_GP > @GamePoints) begin
		select 6 as ResultCode, 'not enough GP' as ResultMsg
		return
	end

	declare @ConversionRate int = 0
	select top(1) @ConversionRate=ConversionRate from DataGPConvertRates where @in_GP<GamePoints order by GamePoints asc
	if(@ConversionRate = 0) begin
		select 6 as ResultCode, 'no conversion rate' as ResultMsg
		return
	end
	declare @AddGD int = @in_GP * @ConversionRate

	-- substract GP
	declare @GPAlterDesc nvarchar(512) = 'Converted to ' + convert(varchar(64), @AddGD) + ' Game Dollars'
	declare @AlterGP int = -@in_GP
	exec FN_AlterUserGP @in_CustomerID, @AlterGP, 'togd', @GPAlterDesc
	-- and record that
	INSERT INTO FinancialTransactions
		VALUES (@in_CustomerID, 'ConvertToGD', 4005, GETDATE(), 
				@in_GP, '1', 'APPROVED', 0)

	declare @GameDollars int = 0
	update UsersData set GameDollars=(GameDollars+@AddGD) where CustomerID=@in_CustomerID
	select @GameDollars=GameDollars from UsersData where CustomerID=@in_CustomerID

	select 0 as ResultCode
	select @GameDollars as 'GameDollars'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_GPGetConversionRates]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_GPGetConversionRates]
GO
CREATE PROCEDURE [dbo].[WZ_GPGetConversionRates]
	@in_CustomerID int
AS
BEGIN  
	SET NOCOUNT ON;  

	select 0 as ResultCode
	select * from DataGPConvertRates where GamePoints>0 order by GamePoints asc
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_LeaderboardGet]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_LeaderboardGet]
GO
CREATE PROCEDURE [dbo].[WZ_LeaderboardGet]
	@in_CharID int,
	@in_TableID int,
	@in_StartPos int
AS
BEGIN
	SET NOCOUNT ON;

	-- this call is always success
	select 0 as ResultCode
	
	declare @TotalRows int = 0
	declare @ROWS_TO_FETCH int = 100
	
	-- execute WZ_DB_GenerateLeaderboard aways
	EXEC WZ_DB_GenerateLeaderboards
	
	-- if need to find our position in leaderboard
	if(@in_StartPos < 0) 
	begin
		if(@in_TableID = 0) begin
			select @in_StartPos=Pos from Leaderboard00 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard00
		end else if(@in_TableID = 1) begin
			select @in_StartPos=Pos from Leaderboard01 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard01
		end else if(@in_TableID = 2) begin
			select @in_StartPos=Pos from Leaderboard02 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard02
		end else if(@in_TableID = 3) begin
			select @in_StartPos=Pos from Leaderboard03 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard03
		end else if(@in_TableID = 4) begin
			select @in_StartPos=Pos from Leaderboard04 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard04
		end else if(@in_TableID = 5) begin
			select @in_StartPos=Pos from Leaderboard05 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard05
		end else if(@in_TableID = 6) begin
			select @in_StartPos=Pos from Leaderboard06 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard06
		end else if(@in_TableID = 50) begin
			select @in_StartPos=Pos from Leaderboard50 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard50
		end else if(@in_TableID = 51) begin
			select @in_StartPos=Pos from Leaderboard51 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard51
		end else if(@in_TableID = 52) begin
			select @in_StartPos=Pos from Leaderboard52 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard52
		end else if(@in_TableID = 53) begin
			select @in_StartPos=Pos from Leaderboard53 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard53
		end else if(@in_TableID = 54) begin
			select @in_StartPos=Pos from Leaderboard54 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard54
		end else if(@in_TableID = 55) begin
			select @in_StartPos=Pos from Leaderboard55 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard55
		end else if(@in_TableID = 56) begin
			select @in_StartPos=Pos from Leaderboard56 where CharID=@in_CharID
			select @TotalRows=COUNT(*) from Leaderboard56
		end
	
		set @in_StartPos = @in_StartPos - (@ROWS_TO_FETCH / 2)
		if(@in_StartPos < 0)
			set @in_StartPos = 0
	end

	-- report starting position
	select @in_StartPos as 'StartPos', @TotalRows as 'Size'
	
	-- return actual leaderboard

	if(@in_TableID = 0) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard00 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 1) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard01 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 2) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard02 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 3) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard03 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 4) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard04 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 5) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard05 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 6) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard06 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 50) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard50 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 51) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard51 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 52) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard52 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 53) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard53 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 54) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard54 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 55) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard55 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else if(@in_TableID = 56) begin
		select l.*, cd.ClanTag, cd.ClanTagColor from Leaderboard56 l left join ClanData cd on cd.ClanId=l.ClanID 
			where Pos > @in_StartPos and Pos <= (@in_StartPos + @ROWS_TO_FETCH)	order by Pos asc
	end else begin
		select 'bad leaderboardid'
	end
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ReportHWInfo]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ReportHWInfo]
GO
CREATE PROCEDURE [dbo].[WZ_ReportHWInfo] 
	@in_CustomerID int,
	@r00 bigint,
	@r10 varchar(128),
	@r11 varchar(128),
	@r12 int,
	@r13 int,
	@r20 int,
	@r21 int,
	@r22 int,
	@r23 int,
	@r24 int,
	@r25 varchar(128),
	@r26 int,
	@r30 varchar(32)
AS
BEGIN
	SET NOCOUNT ON;

	-- insert new record in case we didn't had it
	if not exists (SELECT CustomerID FROM DBG_HWInfo WHERE CustomerID=@in_CustomerID) begin
		insert into DBG_HWInfo (CustomerID) values (@in_CustomerID)
	end
	
	UPDATE DBG_HWInfo SET
		ReportDate=GETDATE(),
		CPUName=@r10,
		CPUBrand=@r11,
		CPUFreq=@r12,
		TotalMemory=@r13,
		DisplayW=@r20,
		DisplayH=@r21,
		gfxErrors=@r22,
		gfxVendorId=@r23,
		gfxDeviceId=@r24,
		gfxDescription=@r25,
		gfxD3DVersion=@r26,
		OSVersion=@r30
	WHERE CustomerID=@in_CustomerID

	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerChangeParams]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerChangeParams]
GO
CREATE PROCEDURE [dbo].[WZ_ServerChangeParams]
	@in_CustomerID int,
	@in_GameServerID int,
	@in_ServerPwd nvarchar(16),
	@in_ServerFlags int
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @OwnerCustomerID int = 0
	declare @ServerFlags int = 0
	select @OwnerCustomerID=OwnerCustomerID, @ServerFlags=ServerFlags from ServersList where GameServerID=@in_GameServerID
	if(@OwnerCustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'no owner' as ResultMsg
		return
	end
	
	-- change pwd
	update ServersList set ServerPwd=@in_ServerPwd, ServerFlags=@in_ServerFlags where GameServerId=@in_GameServerId

	select 0 as ResultCode	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerChangeParams2]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerChangeParams2]
GO
CREATE PROCEDURE [dbo].[WZ_ServerChangeParams2]
	@in_CustomerID int,
	@in_GameServerID int,
	@in_ServerPwd nvarchar(16),
	@in_ServerFlags int,
	@in_GameTimeLimit int
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @OwnerCustomerID int = 0
	declare @ServerFlags int = 0
	select @OwnerCustomerID=OwnerCustomerID, @ServerFlags=ServerFlags from ServersList where GameServerID=@in_GameServerID
	if(@OwnerCustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'no owner' as ResultMsg
		return
	end
	
	-- change pwd
	update ServersList set ServerPwd=@in_ServerPwd, ServerFlags=@in_ServerFlags, GameTimeLimit=@in_GameTimeLimit where GameServerId=@in_GameServerId

	select 0 as ResultCode	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerChangePwd]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerChangePwd]
GO
CREATE PROCEDURE [dbo].[WZ_ServerChangePwd]
	@in_CustomerID int,
	@in_GameServerID int,
	@in_ServerPwd nvarchar(16)
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @OwnerCustomerID int = 0
	declare @ServerFlags int = 0
	select @OwnerCustomerID=OwnerCustomerID, @ServerFlags=ServerFlags from ServersList where GameServerID=@in_GameServerID
	if(@OwnerCustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'no owner' as ResultMsg
		return
	end
	
	-- SFLAGS_Passworded = 1 << 0
	--if((@ServerFlags & 1) = 0) begin
	--	select 6 as ResultCode, 'no pwd change' as ResultMsg
	--	return
	--end
	
	-- change pwd
	update ServersList set ServerPwd=@in_ServerPwd where GameServerId=@in_GameServerId

	select 0 as ResultCode	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerCheckCanDonate]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerCheckCanDonate]
GO
CREATE PROCEDURE [dbo].[WZ_ServerCheckCanDonate]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;

	declare @hours int = 0
	select @hours=DATEDIFF(hour, dateregistered, GETDATE()) from UsersData where CustomerID=@in_CustomerID
	
	select 0 as ResultCode
	if(@hours >= 14 * 24)
		select 0 as 'HoursLeft'
	else
		select (14 * 24) - @hours as 'HoursLeft'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerGetList]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerGetList]
GO
CREATE PROCEDURE [dbo].[WZ_ServerGetList]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode	
	
	if(@in_CustomerID > 0)
		select * from ServersList where OwnerCustomerID=@in_CustomerID order by GameServerID asc
	else
		select * from ServersList where WorkHours<RentHours order by GameServerID asc
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerGetPrices]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerGetPrices]
GO
CREATE PROCEDURE [dbo].[WZ_ServerGetPrices]
AS
BEGIN
	SET NOCOUNT ON;

	select 0 as ResultCode
	
	-- GAMESERVER prices
	select
		6600	as 'Base_US',		-- 8500 base price per server per month in US region. 0 if region is disabled
		6600	as 'Base_EU',		-- 8500 base price per server per month in europe region. 0 if region is disabled
		8580	as 'Base_RU',		-- 8500 base price per server per month in russian region. 0 if region is disabled
		0		as 'Base_SA',		-- South america. Should be 3x price of US\EU server due to high cost of renting server equipment in Brazil
		-- percents of base price per each option
		0		as 'PVE',
		0		as 'PVP',
		9999	as 'Slot1',			-- not used right now. was 30 plr
		20		as 'Slot2',			-- 50 plr
		40		as 'Slot3',			-- 70 plr
		100		as 'Slot4',			-- 100
		9999	as 'Slot5',			-- not used now - will be 250
		0		as 'Passworded',
		0		as 'MonthX2',		-- 
		-10		as 'MonthX3',		-- 
		-15		as 'MonthX6',
		-70		as 'WeekX1', -- for renting one week only
		0		as 'OptNameplates',
		0		as 'OptCrosshair',
		0		as 'OptTracers'
		
	-- STRONGHOLD prices
	select
		750		as 'Base_US',		-- base price per server per month in US region. 0 if region is disabled
		750		as 'Base_EU',		-- base price per server per month in europe region. 0 if region is disabled
		975		as 'Base_RU',		-- base price per server per month in russian region. 0 if region is disabled
		0		as 'Base_SA',
		-- percents of base price per each option
		0		as 'PVE',
		0		as 'PVP',
		0		as 'Slot1',			-- 10 plr
		50		as 'Slot2',			-- 20 plr
		100		as 'Slot3',			-- 30 plr
		150		as 'Slot4',			-- 40 plr
		200		as 'Slot5',			-- 50 plr
		0		as 'Passworded',
		0		as 'MonthX2',		-- 
		0		as 'MonthX3',		-- 
		0		as 'MonthX6',
		-40		as 'WeekX1', -- for renting one week only
		0		as 'OptNameplates',
		0		as 'OptCrosshair',
		0		as 'OptTracers'
		
	-- games CAPACITY report
	declare @Games_US int = 0
	declare @Games_EU int = 0
	declare @Games_RU int = 0
	declare @Games_SA int = 0
	select @Games_US = count(*) from ServersList where ServerRegion=1  and WorkHours<RentHours and ServerMap<>3
	select @Games_EU = count(*) from ServersList where ServerRegion=10 and WorkHours<RentHours and ServerMap<>3
	select @Games_RU = count(*) from ServersList where ServerRegion=20 and WorkHours<RentHours and ServerMap<>3
	select @Games_SA = count(*) from ServersList where ServerRegion=30 and WorkHours<RentHours and ServerMap<>3

	select
		-- modify numbers here. 1st is global server capacity. 2nd is our HOSTED server number
		-- mul by 2 as with hibernate we can support more servers now
		(1500*2) - 80 as 'Capacity_US', @Games_US as 'Games_US',
		(1440*2) - 80 as 'Capacity_EU', @Games_EU as 'Games_EU',
		(280+50) - 50 as 'Capacity_RU', @Games_RU as 'Games_RU',
		(90*2)   - 80 as 'Capacity_SA', @Games_SA as 'Games_SA'

	-- strongholds CAPACITY report
	select @Games_US = count(*) from ServersList where ServerRegion=1  and WorkHours<RentHours and ServerMap=3
	select @Games_EU = count(*) from ServersList where ServerRegion=10 and WorkHours<RentHours and ServerMap=3
	select @Games_RU = count(*) from ServersList where ServerRegion=20 and WorkHours<RentHours and ServerMap=3
	select @Games_SA = count(*) from ServersList where ServerRegion=30 and WorkHours<RentHours and ServerMap=3

	select
		-- modify numbers here. 1st is global server capacity. 2nd is our HOSTED server number
		-- mul by 4 as with hibernate we can support more servers now
		(650*4) - 0 as 'Capacity_US', @Games_US as 'Games_US',
		(650*4) - 0 as 'Capacity_EU', @Games_EU as 'Games_EU',
		(50*4)      as 'Capacity_RU', @Games_RU as 'Games_RU',
		0           as 'Capacity_SA', @Games_SA as 'Games_SA'
		
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerRenew]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerRenew]
GO
CREATE PROCEDURE [dbo].[WZ_ServerRenew]
	@in_CustomerID int,
	@in_GameServerID int,
	@in_PriceGP int,
	@in_RentHours int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- check if have money and price is valid
	if(@in_PriceGP <= 0) begin
		select 6 as ResultCode, 'bad gp' as ResultMsg
		return
	end

	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@in_CustomerID
	if(@GamePoints < @in_PriceGP) begin
		select 6 as ResultCode, 'no gp' as ResultMsg
		return
	end
	
	-- check if server exists
	declare @ServerName nvarchar(128)
	select @ServerName=ServerName from ServersList where GameServerId=@in_GameServerID
	if(@@ROWCOUNT = 0) begin
		select 6 as ResultCode, 'no server' as ResultMsg
		return
	end
	
	-- renew server
	update ServersList set 
		NumRents=NumRents+1, 
		RentHours=RentHours+@in_RentHours,
		PriceGP=PriceGP+@in_PriceGP
	where GameServerId=@in_GameServerID

	-- perform transaction
	INSERT INTO FinancialTransactions VALUES (
		@in_CustomerID,
		@in_GameServerID,
		2000, 
		GETDATE(), 
		@in_PriceGP, 
		'1', 
		'APPROVED',
		'SERVER_RENEW')

	declare @GPAlterDesc nvarchar(512) = 'Server Renew: ' + @ServerName
	declare @AlterGP int = -@in_PriceGP
	exec FN_AlterUserGP @in_CustomerID, @AlterGP, 'SERVER_RENEW', @GPAlterDesc
	
	select 0 as ResultCode
	select @in_GameServerID as 'ServerID'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerRent]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerRent]
GO
CREATE PROCEDURE [dbo].[WZ_ServerRent]
	@in_CustomerID int,
	@in_PriceGP int,
	@in_ServerRegion int,
	@in_ServerType int,
	@in_ServerFlags int,
	@in_ServerMap int,
	@in_ServerSlots int,
	@in_ServerName nvarchar(64),
	@in_ServerPwd nvarchar(16),
	@in_RentHours int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- check if have money and price is valid
	if(@in_PriceGP <= 0) begin
		select 6 as ResultCode, 'bad gp' as ResultMsg
		return
	end

	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@in_CustomerID
	if(@GamePoints < @in_PriceGP) begin
		select 6 as ResultCode, 'no gp' as ResultMsg
		return
	end
	
	-- check for unique name
	if(exists (select ServerName from ServersList where ServerName=@in_ServerName)) begin
		select 9 as ResultCode, 'name already exists' as ResultMsg
		return
	end

	-- create admin key, must not be 0
	declare @AdminKey int = CHECKSUM(NEWID())
	if(@AdminKey = 0) set @AdminKey = 1
	
	-- create server entry
	insert into ServersList (
		OwnerCustomerID,
		PriceGP,
		CreateTimeUtc,
		AdminKey,
		ServerRegion,
		ServerType,
		ServerFlags,
		ServerMap,
		ServerSlots,
		ReservedSlots,
		ServerName,
		ServerPwd,
		RentHours,
		WorkHours
	) values (
		@in_CustomerID,
		@in_PriceGP,
		GETUTCDATE(),
		@AdminKey,
		@in_ServerRegion,
		@in_ServerType,
		@in_ServerFlags,
		@in_ServerMap,
		@in_ServerSlots,
		0,
		@in_ServerName,
		@in_ServerPwd,
		@in_RentHours,
		0
	)
	declare @ServerID int = SCOPE_IDENTITY()

	-- perform transaction
	INSERT INTO FinancialTransactions VALUES (
		@in_CustomerID,
		@ServerID, 
		2000, 
		GETDATE(), 
		@in_PriceGP, 
		'1', 
		'APPROVED',
		'SERVER_RENT')

	declare @GPAlterDesc nvarchar(512) = 'Server Rent: ' + @in_ServerName
	declare @AlterGP int = -@in_PriceGP
	exec FN_AlterUserGP @in_CustomerID, @AlterGP, 'SERVER_RENT', @GPAlterDesc
	
	select 0 as ResultCode
	select @ServerID as 'ServerID'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerTickAll]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerTickAll]
GO
CREATE PROCEDURE [dbo].[WZ_ServerTickAll]
AS
BEGIN
	SET NOCOUNT ON;

	update ServersList set WorkHours=(WorkHours+1), LastUpdated=GETDATE() where WorkHours<RentHours
	
	select 0 as ResultCode	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_ServerTickHour]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_ServerTickHour]
GO
CREATE PROCEDURE [dbo].[WZ_ServerTickHour]
	@in_GameServerID int
AS
BEGIN
	SET NOCOUNT ON;

	update ServersList set WorkHours=(WorkHours+1), LastUpdated=GETDATE() where GameServerID=@in_GameServerID
	
	select 0 as ResultCode	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SkillsGetCharSkills]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SkillsGetCharSkills]
GO
CREATE PROCEDURE [dbo].[WZ_SkillsGetCharSkills]
	@in_CustomerID int,
	@in_CharID int,
	@in_SkillID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	declare @Skills varchar(128)
	declare @XP int
	declare @SpendXP int
	select @Skills=Skills, @XP=XP, @SpendXP=SpendXP from UsersChars where CharID=@in_CharID
	
	select 0 as ResultCode
	select @Skills as 'Skills', @XP as 'XP', @SpendXP as 'SpendXP'
	select * from DataSkillPrice where SkillID=@in_SkillID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SkillsGetPrices]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SkillsGetPrices]
GO
CREATE PROCEDURE [dbo].[WZ_SkillsGetPrices]
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode
	select * from DataSkillPrice order by SkillID asc
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SkillsSetCharSkills]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SkillsSetCharSkills]
GO
CREATE PROCEDURE [dbo].[WZ_SkillsSetCharSkills]
	@in_CustomerID int,
	@in_CharID int,
	@in_Skills varchar(128),
	@in_SkillCost int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- validate CharID/CustomerID pair
	declare @CustomerID int = 0
	select @CustomerID=CustomerID from UsersChars where CharID=@in_CharID
	if(@@ROWCOUNT = 0 or @CustomerID <> @in_CustomerID) begin
		select 6 as ResultCode, 'bad charid' as ResultMsg
		return
	end
	
	update UsersChars set Skills=@in_Skills, SpendXP=(SpendXP+@in_SkillCost) where CharID=@in_CharID
	
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_AddCheatAttempt]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_AddCheatAttempt]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_AddCheatAttempt]
	@in_IP char(32),
	@in_CustomerID int,
	@in_GameSessionID bigint,

	@in_CheatID int
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO CheatLog (SessionID, CustomerID, CheatID, ReportTime)
	VALUES               (@in_GameSessionID, @in_CustomerID, @in_CheatID, GETDATE())

	-- we're done
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_AddLogInfo]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_AddLogInfo]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_AddLogInfo]
	@in_CustomerID int,
	@in_CharID int = 0,
	@in_Gamertag nvarchar(64) = N'',
	@in_CustomerIP varchar(64),
	@in_GameSessionID bigint,
	@in_CheatID int,
	@in_Msg varchar(4000),
	@in_Data varchar(4000)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- see if this event is recurring inside single game session
	--declare @RecordID int
	--select @RecordID=RecordID from DBG_SrvLogInfo where
	--	GameSessionID=@in_GameSessionID 
	--	and CustomerID=@in_CustomerID
	--	and (@in_CheatID > 0 and CheatID=@in_CheatID)
	--	and @in_Msg=Msg 
	--	and @in_Data=Data
	--if(@@ROWCOUNT > 0) begin
	--	-- increase count
	--	update DBG_SrvLogInfo set RepeatCount=RepeatCount+1 where RecordID=@RecordID
	--	select 0 as ResultCode
	--	return
	--end
	
	insert into DBG_SrvLogInfo (
		ReportTime,
		IsProcessed,
		CustomerID,
		CharID,
		Gamertag,
		CustomerIP,
		GameSessionID,
		CheatID,
		RepeatCount,
		Msg,
		Data)
	values (
		GETDATE(),
		0,
		@in_CustomerID,
		@in_CharID,
		@in_Gamertag,
		@in_CustomerIP,
		@in_GameSessionID,
		@in_CheatID,
		1,
		@in_Msg,
		@in_Data)
		
	-- we're done
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_AddWeaponStats]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_AddWeaponStats]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_AddWeaponStats] 
	@in_ItemID int,
	@in_ShotsFired int,
	@in_ShotsHits int,
	@in_KillsCQ int,
	@in_KillsDM int,
	@in_KillsSB int
AS
BEGIN
	SET NOCOUNT ON;

	update Items_Weapons set
		ShotsFired=(ShotsFired + @in_ShotsFired),
		ShotsHits=(ShotsHits + @in_ShotsHits),
		KillsCQ=(KillsCQ + @in_KillsCQ),
		KillsDM=(KillsDM + @in_KillsDM),
		KillsSB=(KillsSB + @in_KillsSB)
	where ItemID=@in_ItemID

	-- we're done
	select 0 as ResultCode

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_ObjectsAdd]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_ObjectsAdd]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_ObjectsAdd]
	@in_CustomerID int,
	@in_CharID int,
	@in_GameServerID int,
	@in_ExpireMins int,
	@in_ObjType int,
	@in_ObjClassName varchar(64),
	@in_ItemID int,
	@in_px float,
	@in_py float,
	@in_pz float,
	@in_rx float,
	@in_ry float,
	@in_rz float,
	@in_Var1 nvarchar(4000),
	@in_Var2 nvarchar(4000),
	@in_Var3 nvarchar(4000)
AS
BEGIN
	SET NOCOUNT ON;

	insert into ServerObjects (
		GameServerId,
		ObjType,
		ObjClassName,
		ItemID,
		px, py, pz,
		rx, ry, rz,
		CreateUtcDate,
		ExpireUtcDate,
		CustomerID,
		CharID,
		Var1,
		Var2,
		Var3
	) values (
		@in_GameServerID,
		@in_ObjType,
		@in_ObjClassName,
		@in_ItemID,
		@in_px, @in_py, @in_pz,
		@in_rx, @in_ry, @in_rz,
		GETUTCDATE(),
		DATEADD(mi, @in_ExpireMins, GETUTCDATE()),
		@in_CustomerID,
		@in_CharID,
		@in_Var1,
		@in_Var2,
		@in_Var3
	)
	declare @ServerObjectID int = SCOPE_IDENTITY()
		
	-- we're done
	select 0 as ResultCode
	select @ServerObjectID as 'ServerObjectID'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_ObjectsDelete]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_ObjectsDelete]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_ObjectsDelete]
	@in_ServerObjectID int
AS
BEGIN
	SET NOCOUNT ON;

	-- we're done
	select 0 as ResultCode

	delete from ServerObjects where ServerObjectID=@in_ServerObjectID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_ObjectsGetAll]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_ObjectsGetAll]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_ObjectsGetAll]
	@in_GameServerID int
AS
BEGIN
	SET NOCOUNT ON;

	-- we're done
	select 0 as ResultCode

	select *,
		DATEDIFF(mi, GETUTCDATE(), ExpireUtcDate) as 'ExpireMins'
	from ServerObjects where GameServerId=@in_GameServerID and GETUTCDATE()<ExpireUtcDate
	
	-- (do that in ObjectsResetHibernate) delete hybernated (temporary) objects so they won't be available in next call
	--delete from ServerObjects where GameServerId=@in_GameServerID and ObjType=2
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_ObjectsResetHibernate]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_ObjectsResetHibernate]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_ObjectsResetHibernate]
	@in_GameServerID int
AS
BEGIN
	SET NOCOUNT ON;

	-- we're done
	select 0 as ResultCode

	-- delete hybernated (temporary) objects
	delete from ServerObjects where GameServerId=@in_GameServerID and ObjType=2
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_ObjectsUpdate]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_ObjectsUpdate]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_ObjectsUpdate]
	@in_ServerObjectID int,
	@in_Var1 nvarchar(4000),
	@in_Var2 nvarchar(4000),
	@in_Var3 nvarchar(4000),
	@in_ExpireMins int = -1
AS
BEGIN
	SET NOCOUNT ON;

	-- we're done
	select 0 as ResultCode

	update ServerObjects set 
		Var1=@in_Var1, 
		Var2=@in_Var2, 
		Var3=@in_Var3 
		where ServerObjectID=@in_ServerObjectID

	-- if we have new expiration date, update it		
	if(@in_ExpireMins > 0) begin
		update ServerObjects set ExpireUtcDate=DATEADD(mi, @in_ExpireMins, GETUTCDATE()) where ServerObjectID=@in_ServerObjectID
	end

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_SavedStateGet]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_SavedStateGet]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_SavedStateGet]
	@in_GameServerID int
AS
BEGIN
	SET NOCOUNT ON;

	-- we're done
	select 0 as ResultCode
	
	if(not exists(select GameServerID from ServerSavedState where GameServerId=@in_GameServerID and IsRetrieved=0)) begin
		select 0 as 'HaveData'
		return
	end

	select 1 as 'HaveData', * from ServerSavedState where GameServerId=@in_GameServerID and IsRetrieved=0
	update ServerSavedState set IsRetrieved=1 where GameServerId=@in_GameServerID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_SavedStateSet]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_SavedStateSet]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_SavedStateSet]
	@in_GameServerID int,
	@in_SavedState varbinary(MAX)
AS
BEGIN
	SET NOCOUNT ON;

	-- we're done
	select 0 as ResultCode

	if(exists(select GameServerId from ServerSavedState where GameServerId=@in_GameServerID))
	begin
		update ServerSavedState set 
			UpdateTime=GETDATE(), 
			IsRetrieved=0,
			SavedState=@in_SavedState 
			where GameServerId=@in_GameServerID
	end
	else
	begin
		insert into ServerSavedState values (@in_GameServerID, GETDATE(), 0, @in_SavedState)
	end
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_UserJoinedGame3]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_UserJoinedGame3]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_UserJoinedGame3]
	@in_CustomerID int,
	@in_CharID int,
	@in_GameMapId int,
	@in_GameServerId bigint,
	@in_IsServerHop int,
	@in_GamePos varchar(128)
AS
BEGIN
	SET NOCOUNT ON;

	-- check if game is still active or 90sec passed from last update (COPYPASTE_GAMECHECK, search for others)
	declare @lastgamedate datetime
	declare @GameServerId int
	select @GameServerId=GameServerId, @lastgamedate=lastgamedate from UsersData where CustomerID=@in_CustomerID
	-- NOTE THE @GameServerId > 1 - 1 is temporary game serverID setted in WZ_GetAccountInfo2
	if(@GameServerId > 1 and DATEDIFF(second, @lastgamedate, GETDATE()) < 90) begin
		select 7 as ResultCode, 'game still active' as ResultMsg
		exec DBG_StoreApiCall 'JoinedGame#InGame', 2, @in_CustomerID, @in_CharID, @in_GameServerId, @GameServerId
		return
	end
	
	-- store current user server location
	update UsersData set 
		lastgamedate=GETDATE(),
		GameServerId=@in_GameServerId
	where CustomerID=@in_CustomerID
	
	-- per char info
	update UsersChars set 
		GameMapId=@in_GameMapId,
		GameServerId=@in_GameServerId
	where CharID=@in_CharID
	
	-- update position if needed
	if(@in_IsServerHop > 0)
		update UsersChars set GamePos=@in_GamePos where CharID=@in_CharID
		
	-- we're done
	select 0 as ResultCode
	exec DBG_StoreApiCall 'JoinedGame', 0, @in_CustomerID, @in_CharID, @in_GameServerId
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_UserLeftGame]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_UserLeftGame]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_UserLeftGame]
	@in_CustomerID int,
	@in_CharID int,
	@in_GameMapId int,
	@in_GameServerId bigint,
	@in_TimePlayed int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- store current user server location
	update UsersData set 
		lastgamedate=GETDATE(),
		GameServerId=0,
		TimePlayed=(TimePlayed+@in_TimePlayed)
	where CustomerID=@in_CustomerID
	
	-- update some stats here
	
	-- we're done
	select 0 as ResultCode
	exec DBG_StoreApiCall 'LeftGame', 0, @in_CustomerID, @in_CharID, @in_GameServerId
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_UserPingGame]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_UserPingGame]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_UserPingGame]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;
	
	-- update user game time.
	update UsersData set 
		lastgamedate=GETDATE()
	where CustomerID=@in_CustomerID
	
	-- we're done
	select 0 as ResultCode
	exec DBG_StoreApiCall 'PingGame', 0, @in_CustomerID, 0
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_UserUpdateCharData]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_UserUpdateCharData]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_UserUpdateCharData]
	@in_CustomerID int,	-- isn't used, this is server call
	@in_CharID int,
	@in_CharData varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
	
	update UsersChars set CharData=@in_CharData	where CharID=@in_CharID
	
	-- we're done
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SRV_UserUpdateMissionsData]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SRV_UserUpdateMissionsData]
GO
CREATE PROCEDURE [dbo].[WZ_SRV_UserUpdateMissionsData]
	@in_CustomerID int,	-- isn't used, this is server call
	@in_CharID int,
	@in_MissionsData varchar(8000)
AS
BEGIN
	SET NOCOUNT ON;
	
	update UsersChars set MissionsData=@in_MissionsData	where CharID=@in_CharID
	
	-- we're done
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamActivateDLC]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamActivateDLC]
GO
CREATE PROCEDURE [dbo].[WZ_SteamActivateDLC]
	@in_CustomerID int,
	@in_AppID int,
	@in_APIAnswer varchar(8000) = '',
	@in_AuthSteamUserID bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode
	
	if exists(select * from SteamDLC where CustomerID=@in_CustomerID and AppID=@in_AppID) begin
		-- already activated
		select '' as 'DLCResult'
		return
	end

	--if(@in_AppID = 227660 or @in_AppID = 227661) begin
	--	-- temporaryly disable old packags
	--	select '' as 'DLCResult'
	--	return
	--end

	-- register
	insert into SteamDLC (
		CustomerID,
		AppID,
		ActivateDate,
		OwnershipXML,
		AuthSteamUserID
	) values (
		@in_CustomerID,
		@in_AppID,
		GETDATE(),
		@in_APIAnswer,
		@in_AuthSteamUserID
	)

	-- 25$ package
	if(@in_AppID = 227660) begin
		/*
		if exists(select * from SteamDLC where CustomerID=@in_CustomerID and AppID=227661) begin
			-- steam glitch - do not activate 25$ if we already have 50$ package
			select '' as 'DLCResult'
			return
		end
		*/

		exec FN_AlterUserGP @in_CustomerID, 3575, '25$ worth in Gold Credits'
		select '3575 Gold Credits was applied to your account' as 'DLCResult'
		return
	end

	-- 50$ package	
	if(@in_AppID = 227661) begin
		/*
		if exists(select * from SteamDLC where CustomerID=@in_CustomerID and AppID=227660) begin
			-- steam glitch - do not activate 50$ if we already have 25$ package
			select '' as 'DLCResult'
			return
		end
		*/

		exec FN_AlterUserGP @in_CustomerID, 9600, '$60 worth in Gold Credits'
		select '9600 Gold Credits was applied to your account' as 'DLCResult'
		return
	end
	
	if(@in_AppID = 267590) begin
		-- 12-2013 $25 package
		exec FN_AlterUserGP @in_CustomerID, 2250, '2250 Gold Credits'
		select '2250 Gold Credits was applied to your account' as 'DLCResult'
		return
	end
	
	if(@in_AppID = 267591) begin
		-- 12-2013 $50 package
		exec FN_AlterUserGP @in_CustomerID, 6200, '6200 Gold Credits'
		select '6200 Gold Credits was applied to your account' as 'DLCResult'
		return
	end

	select 'UNKNOWN DLC, please contact support@infestationmmo.com' as 'DLCResult'
	return

END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamCheckAccount]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamCheckAccount]
GO
CREATE PROCEDURE [dbo].[WZ_SteamCheckAccount]
	@in_SteamID bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode

	declare @CustomerID int = 0
	select @CustomerID=CustomerID from Accounts where SteamUserId=@in_SteamID
	
	select @CustomerID as 'CustomerID'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamFinishOrder]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamFinishOrder]
GO
CREATE PROCEDURE [dbo].[WZ_SteamFinishOrder]
	@in_CustomerID int,
	@in_OrderID bigint,
	@in_transid varchar(128)
AS
BEGIN
	SET NOCOUNT ON;

	declare @GP int = 0
	declare @Price float
			
	select @Price=Price, @GP=GP from SteamGPOrders where OrderID=@in_OrderID and CustomerID=@in_CustomerID
	if (@@RowCount = 0) begin
		select 7 as ResultCode, 'no order found' as ResultMsg
		return
	end
	
	update SteamGPOrders set IsCompleted=1,transid=@in_transid where OrderID=@in_OrderID
	
	-- insert to table
	declare @ItemName varchar(100) = convert(varchar(50), @GP) + ' GP'
	INSERT INTO FinancialTransactions VALUES (
		@in_CustomerID, 
		@in_transid, 
		1000, 
		GETDATE(), 
		@Price, 
		'STEAM', 
		'APPROVED', 
		@ItemName)
		
	-- increate GP
	exec FN_AlterUserGP @in_CustomerID, @GP, 'Steam'
	
	declare @GamePoints int = 0
	select @GamePoints=GamePoints from UsersData where CustomerID=@in_CustomerID
	
	-- report balance
	select 0 as ResultCode
	select @GamePoints as 'Balance'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamGetConversionSerial]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamGetConversionSerial]
GO
CREATE PROCEDURE [dbo].[WZ_SteamGetConversionSerial]
	@in_CustomerID int
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode
	
	declare @ConversionKey varchar(32) = 'NO-FREE-SERIALS'
	select @ConversionKey=ConversionKey from SteamConversionKeys where CustomerID=@in_CustomerID
	if(@@ROWCOUNT > 0) begin
		select @ConversionKey as 'ConversionKey'
		return
	end
	
	update top(1) SteamConversionKeys set 
		@ConversionKey=ConversionKey, 
		CustomerID=@in_CustomerID
	where CustomerID=0
	
	select @ConversionKey as 'ConversionKey'
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamLinkAccount]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamLinkAccount]
GO
CREATE PROCEDURE [dbo].[WZ_SteamLinkAccount]
	@in_CustomerID int,
	@in_SteamID bigint
AS
BEGIN
	SET NOCOUNT ON;
	
	select 0 as ResultCode

	update Accounts set SteamUserId=@in_SteamID where CustomerID=@in_CustomerID
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamLogin]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamLogin]
GO
CREATE PROCEDURE [dbo].[WZ_SteamLogin]
	@in_IP varchar(100),
	@in_SteamID bigint,
	@in_Country varchar(50)=''
AS
BEGIN
	SET NOCOUNT ON;

	-- this call is always valid
	select 0 as ResultCode

	-- find customer id based on steam id
	declare @CustomerID int = 0
	declare @AccountStatus int = 0
	select @CustomerID=CustomerID, @AccountStatus=AccountStatus from Accounts where SteamUserID=@in_SteamID
	if (@@RowCount = 0) begin
		select
			1 as LoginResult,
			0 as CustomerID,
			0 as AccountStatus,
			0 as SessionID
		return
	end
	
	-- check if deleted account because of refund (sync with WZ_ACCOUNT_LOGIN)
	if(@AccountStatus = 999) begin
		select
			3 as LoginResult,
			0 as CustomerID,
			999 as AccountStatus
		return
	end
	
	-- login user
	exec WZ_ACCOUNT_LOGIN_EXEC @in_IP, @CustomerID, @in_Country, 1
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_SteamStartOrder]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_SteamStartOrder]
GO
CREATE PROCEDURE [dbo].[WZ_SteamStartOrder]
	@in_CustomerID int,
	@in_SteamID bigint,
	@in_Price float,
	@in_GP int,
	@in_Currency varchar(32),
	@in_Country varchar(32)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- target price in wallet currency, 0 mean price can't be converted
	declare @WalletPrice float = 0

	-- steam now autohandle all conversion itself, we don't need any conversion rates anymore
	set @in_Currency = 'USD'
	set @WalletPrice = @in_Price;

/*	
	-- default USD
	if(@in_Currency = 'USD')
	begin
		set @WalletPrice = @in_Price
	end

	--
	-- convert our USD price to target currency
	--
	-- 2014-5-5 rates
	--
	if(@in_Currency = 'GBP')
	begin
		-- 1 British Pound Sterling equals 1.69 US Dollar
		set @WalletPrice = @in_Price / 1.69
	end
	else 
	if(@in_Currency = 'EUR')
	begin
		-- 1 Euro equals 1.39 US Dollar
		set @WalletPrice = @in_Price / 1.39
	end
	else
	if(@in_Currency = 'RUB')
	begin
		-- 1 Russian Ruble equals 0.028 US Dollar
		set @WalletPrice = @in_Price / 0.028
	end
	else
	if(@in_Currency = 'BRL')
	begin
		-- 1 Brazilian Real equals 0.45 US Dollar
		set @WalletPrice = @in_Price / 0.45
	end
	else
	begin
	    -- steam now can handle mismatch between wallet and transaction currencies
	    set @in_Currency = 'USD'
		set @WalletPrice = @in_Price;
	end
*/	

	-- store transaction
	insert into SteamGPOrders (
		CustomerID, 
		SteamID, 
		InitTxnTime, 
		Price, 
		GP, 
		WalletCountry, 
		WalletCurrency, 
		WalletPrice
	) values (
		@in_CustomerID, 
		@in_SteamID, 
		GETDATE(), 
		@in_Price, 
		@in_GP, 
		@in_Country, 
		@in_Currency, 
		@WalletPrice
	)
	declare @OrderID int = SCOPE_IDENTITY();

	declare @PriceCents int = @WalletPrice * 100

	select 0 as ResultCode
	select 
		@OrderID as 'OrderID', 
		@in_Currency as 'Currency',
		@PriceCents as 'PriceCents'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_UpdateAchievementStatus]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_UpdateAchievementStatus]
GO
CREATE PROCEDURE [dbo].[WZ_UpdateAchievementStatus]
	@in_CustomerID int,
	@in_AchID int,
	@in_AchValue int,
	@in_AchUnlocked int
AS
BEGIN
	SET NOCOUNT ON;

	if not exists (select * from Achievements where (AchID=@in_AchID and CustomerID=@in_CustomerID))
	begin
		INSERT INTO Achievements(
			CustomerID, 
			AchID, 
			Value, 
			Unlocked
		)
		VALUES (
			@in_CustomerID,
			@in_AchID,
			@in_AchValue,
			@in_AchUnlocked
		)
	end
	else
	begin
		UPDATE Achievements SET 
			Value=@in_AchValue,
			Unlocked=@in_AchUnlocked
		WHERE AchID=@in_AchID and CustomerID=@in_CustomerID
    end

    select 0 as ResultCode
    
    -- check for steamID
    declare @SteamID bigint = 0
	--select @SteamID=SteamID from SteamUserIDMap where CustomerID=@in_CustomerID
	--select @SteamID as 'SteamID'
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_UpdateLoginSession]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_UpdateLoginSession]
GO
CREATE PROCEDURE [dbo].[WZ_UpdateLoginSession]
	@in_IP varchar(32),
	@in_CustomerID int,
	@in_SessionID int
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @SessionID int

	-- check if we have record for that user          
	SELECT @SessionID=SessionID FROM LoginSessions WHERE CustomerID=@in_CustomerID
	if (@@RowCount = 0) begin
		select 6 as ResultCode
		return
	end

	-- compare session key. if it's different, supplied sesson is invalid	
	if(@in_SessionID <> @SessionID) begin
		select 1 as ResultCode
		return
	end
	
	-- update last ping time
	UPDATE LoginSessions SET TimeUpdated=GETDATE() WHERE CustomerID=@in_CustomerID
	
	select 0 as ResultCode
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_VITALSTATS_BANKRESERVES]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_VITALSTATS_BANKRESERVES]
GO
CREATE PROCEDURE [dbo].[WZ_VITALSTATS_BANKRESERVES]
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @v1 bigint
	declare @v2 bigint
	declare @v3 bigint
	declare @v4 bigint
	declare @v5 bigint
	declare @v6 bigint
	declare @v7 bigint
	declare @v8 bigint
	declare @v9 bigint
	declare @v10 bigint
	
	declare @d1 datetime = DATEADD(day, -1, GETDATE())	-- cutoff time
	
-- GCBalance
-- GDBalance
	-- Это текущий баланс в $ по курсу 150 у игроков которые играли в игру в последние 30 дней
	select @v1=sum(convert(bigint, GamePoints))/150 from UsersData where lastgamedate>=dateadd(day, -30, GETDATE()) and AccountType<20
	select @v2=sum(convert(bigint, GameDollars))/(150*80) from UsersData where lastgamedate>=dateadd(day, -30, GETDATE()) and AccountType<20

-- GCIntake
	-- Купленные GC за последние 24 часа
	declare @gc1 bigint
	declare @gc2 bigint
	declare @gc3 bigint
	declare @gc4 bigint
	declare @gc5 bigint
	declare @gc6 bigint
	-- GC buys
	select @gc1=sum(x_sum)/150 from WarZ.dbo.XsollaOrders where xOrderDate>=@d1 and Region=0 and IsBonus=0 and IsCancelled=0
	select @gc2=sum(GP)/150 from WarZ.dbo.SteamGPOrders where IsCompleted=1 and InitTxnTime>=@d1
	-- GC от количество проданных $40 и $60 accounts
	select @gc3=COUNT(*)*25 from BreezeNet.dbo.WarZPreorders where OrderDate>=@d1 and AccountType=5
	select @gc4=COUNT(*)*50 from BreezeNet.dbo.WarZPreorders where OrderDate>=@d1 and AccountType=6
	-- steam accounts GC
	select @gc5=COUNT(*)*15 from SteamDLC where ActivateDate>=@d1 and AppID=227660
	select @gc6=COUNT(*)*41 from SteamDLC where ActivateDate>=@d1 and AppID=227661
	select @gc5+=COUNT(*)*15 from SteamDLC where ActivateDate>=@d1 and AppID=267590
	select @gc6+=COUNT(*)*41 from SteamDLC where ActivateDate>=@d1 and AppID=267591
	--
	select @v3=@gc1+@gc2+@gc3+@gc4+@gc5+@gc6

-- GDIntake
	-- Полученные в игре GD/(150*80) за последние 24 часа
	-- Включает купленные за GC (Amount = GC converted)
	declare @gd1 bigint
	declare @gd2 bigint
	select @gd1=sum(convert(bigint, gd.GameDollars))/(150*80) from DBG_GDLog gd join UsersData d on d.CustomerID=gd.CustomerID
		where RecordTime>=@d1 and d.AccountType<20
	select @gd2=sum(convert(bigint, Amount))/150 from FinancialTransactions f join UsersData d on d.CustomerID=f.CustomerID
		where TransactionType=4005 and DateTime>=@d1 and d.AccountType<20
	--
	select @v4=@gd1+@gd2

-- GCSpend_Store
	select @v5=sum(Amount)/150 from FinancialTransactions f join UsersData d on d.CustomerID=f.CustomerID
		where (TransactionType=2000 or TransactionType=3000) and DateTime>=@d1 and d.AccountType<20
		and ItemID != 'SERVER_RENT' and ItemID != 'SERVER_RENEW' and ItemID != '301257'

-- GCSpend_Premium
	select @v6=sum(Amount)/150 from FinancialTransactions f join UsersData d on d.CustomerID=f.CustomerID
		where (TransactionType=2000 or TransactionType=3000) and ItemID='301257' and DateTime>=@d1 and d.AccountType<20

	-- GCSpend_ServerRent
	select @v7=sum(Amount)/150 from FinancialTransactions f join UsersData d on d.CustomerID=f.CustomerID
		where TransactionType=2000 and (ItemID='SERVER_RENT' or ItemID='SERVER_RENEW') and DateTime>=@d1 and d.AccountType<20

	-- GCSpend_GDExchange
	select @v8=sum(Amount)/150 from FinancialTransactions f join UsersData d on d.CustomerID=f.CustomerID
		where TransactionType=4005 and DateTime>=@d1 and d.AccountType<20

	-- GDSpend
	select @v9=sum(convert(bigint, Amount))/(150*80) from FinancialTransactions f join UsersData d on d.CustomerID=f.CustomerID
		where (TransactionType=2001 or TransactionType=3001) and DateTime>=@d1 and d.AccountType<20

	-- AccountSales
	declare @a1 float
	declare @a2 float
	declare @a3 float
	declare @a4 float
	declare @a5 float
	declare @a6 float
	select @a1=sum(amount) from BreezeNet.dbo.WarZPreorders where OrderDate>=@d1 and AccountType=4
	select @a2=sum(amount) from BreezeNet.dbo.WarZPreorders where OrderDate>=@d1 and AccountType=5
	select @a3=sum(amount) from BreezeNet.dbo.WarZPreorders where OrderDate>=@d1 and AccountType=6
	-- steam base version
	select @a4=count(*)*4.99 from UsersData where dateregistered>=@d1 and AccountType=10
	-- steam bonus packaged have added value from base package (+10$, +35$)
	select @a5=count(*)*10 from UsersData d join SteamDLC s on s.CustomerID=d.CustomerID 
		where dateregistered>=@d1 and AccountType=10 and (s.AppID=227660 or s.AppID=267590)
	select @a6=count(*)*35 from UsersData d join SteamDLC s on s.CustomerID=d.CustomerID 
		where dateregistered>=@d1 and AccountType=10 and (s.AppID=227661 or s.AppID=267591)
	--
	select @v10=@a1+@a2+@a3+@a4+@a5+@a6
	

	insert into Vitalstats_BankReserves VALUES (GETDATE(), @v1, @v2, @v3, @v4, @v5, @v6, @v7, @v8, @v9, @v10)
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_VITALSTATS_ECONOMY_V1]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_VITALSTATS_ECONOMY_V1]
GO
CREATE PROCEDURE [dbo].[WZ_VITALSTATS_ECONOMY_V1]
AS
BEGIN

	SET NOCOUNT ON;


declare @d1 datetime = DATEADD(hour, -1, GETDATE())
declare @d2 datetime = GETDATE();

declare @Intake1 float
declare @Intake2 float
declare @Spend float
declare @a1 float
declare @a2 float
declare @a3 float
declare @a4 float
declare @a5 float
declare @a6 float

select @Intake1=sum(x_sum)/150 from WarZ.dbo.XsollaOrders where xOrderDate>@d1 and xOrderDate<=@d2 and Region=0 and IsBonus=0

select @Intake2 =(COUNT(*)*3750)/150 from BreezeNet.dbo.WarZPreorders where (OrderDate>=@d1 and OrderDate<=@d2) and AccountType=5 -- $40
select @Intake2+=(COUNT(*)*7500)/150 from BreezeNet.dbo.WarZPreorders where (OrderDate>=@d1 and OrderDate<=@d2) and AccountType=6 -- $60
select @Intake2+=(COUNT(*)*4260)/150 from BreezeNet.dbo.WarZPreorders where (OrderDate>=@d1 and OrderDate<=@d2) and AccountType=0 -- legend
select @Intake2+=(COUNT(*)*2139)/150 from BreezeNet.dbo.WarZPreorders where (OrderDate>=@d1 and OrderDate<=@d2) and AccountType=1 -- pioneer

--select @Intake1, @Intake2

select @Spend=sum(Amount)/150 from WarZ.dbo.FinancialTransactions where datetime>@d1 and datetime<=@d2 and TransactionType=3000


select @a1=sum(GamePoints)/150 from WarZ.dbo.UsersData where AccountType=2 and lastgamedate>DATEADD(day, -35, GETDATE())
select @a2=sum(GamePoints)/150 from WarZ.dbo.UsersData where AccountType=1 and lastgamedate>DATEADD(day, -35, GETDATE())
select @a3=sum(GamePoints)/150 from WarZ.dbo.UsersData where AccountType=0 and lastgamedate>DATEADD(day, -35, GETDATE())
select @a4=sum(GamePoints)/150 from WarZ.dbo.UsersData where AccountType=4 and lastgamedate>DATEADD(day, -35, GETDATE())
select @a5=sum(GamePoints)/150 from WarZ.dbo.UsersData where AccountType=5 and lastgamedate>DATEADD(day, -35, GETDATE())
select @a6=sum(GamePoints)/150 from WarZ.dbo.UsersData where AccountType=6 and lastgamedate>DATEADD(day, -35, GETDATE())


INSERT INTO VitalStats_Economy_V1 VALUES (@d2, @Intake1, @Intake2, @Spend, @a1,@a2,@a3,@a4,@a5,@a6);

	    
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_VITALSTATS_INVENTORY_V1]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_VITALSTATS_INVENTORY_V1]
GO
CREATE PROCEDURE [dbo].[WZ_VITALSTATS_INVENTORY_V1]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @allitems TABLE 
	(
		ItemID int,
		Category int,
		Name varchar(128)
	)
	insert into @allitems select ItemID, Category, Name from Items_Weapons
	insert into @allitems select ItemID, Category, Name from Items_Gear
	insert into @allitems select ItemID, Category, Name from Items_Attachments

	insert into VitalStats_Inventory
	select 
		GETDATE() as 'Timestamp',
		w.ItemID, w.Category, w.Name,
        ISNULL((select sum(Quantity) from UsersInventory i where i.ItemID=w.ItemID and CharID=0), 0) as 'In Inventory',
		ISNULL((select sum(Quantity) from UsersInventory i where i.ItemID=w.ItemID and CharID>0), 0) as 'In Backpack'
	from @allitems w
	
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_VITALSTATS_RETENTION1]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_VITALSTATS_RETENTION1]
GO
CREATE PROCEDURE [dbo].[WZ_VITALSTATS_RETENTION1]
AS
BEGIN

	SET NOCOUNT ON;

declare @a1 float
declare @a2 float
declare @a3 float
declare @a4 float
declare @a5 float
declare @a6 float
declare @a7 float
declare @a8 float
declare @a9 float

declare @t1 float
declare @t2 float
declare @t3 float
declare @t4 float
declare @t5 float
declare @t6 float
declare @t7 float
declare @t8 float
declare @t9 float


select @t1=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=2 
select @t2=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=1 
select @t3=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=0 
select @t4=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=4 
select @t5=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=5 
select @t6=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=6 

select @t7=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=3 
select @t8=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=10 
select @t9=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType>49




select @a1=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=2 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a2=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=1 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a3=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=0 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a4=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=4 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a5=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=5 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a6=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=6 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())

select @a7=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=3 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a8=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType=10 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())
select @a9=count (distinct CustomerID ) from WarZ.dbo.UsersData where AccountType>49 and dateregistered<DATEADD(day, -7, GETDATE()) and lastgamedate>DATEADD(day, -30, GETDATE())



INSERT INTO VitalStats_Retention1 VALUES (GETDATE(), @t1, @t2, @t3, @t7, @t4, @t5, @t6, @t8, @t9, @a1,@a2,@a3,@a7, @a4,@a5,@a6, @a8, @a9);

	    
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_VITALSTATS_V1]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_VITALSTATS_V1]
GO
CREATE PROCEDURE [dbo].[WZ_VITALSTATS_V1]
AS
BEGIN

	SET NOCOUNT ON;


declare @today datetime
set @today = GETDATE()

declare @Sales int;
declare @TUsers int;
declare @DAU int;
declare @CCU int;
declare @Revenues int;
declare @Revenues1 int;
declare @MAU1 int;

set @Sales = (select count(*) from UsersData where lastgamedate>DATEADD(day, -30, GETDATE()))


set @MAU1 = (select count(*) from UsersData where lastgamedate>DATEADD(day, -30, GETDATE()) and dateregistered<DATEADD(day, -30, GETDATE()))

set @TUsers = (select count(*) from Accounts)
set @DAU = (select count(*) from Accounts where lastlogindate > DATEADD(hour, -24, @today))
set @CCU = (select count(*) from LoginSessions where TimeUpdated > DATEADD(minute, -7, @today))

select @Revenues=SUM(Amount) from BreezeNet.dbo.WarZPreorders where OrderDate> DATEADD(day, -1, GETDATE()) and AccountType<50

select @Revenues1=COALESCE(sum(x_sum)/142,0) from WarZ.dbo.XsollaOrders where xOrderDate>DATEADD(day, -1, GETDATE()) and region=0

INSERT INTO VitalStats_V1 VALUES (@today, @Sales, @TUsers, @DAU, @CCU, @Revenues+@Revenues1, @MAU1 );

	    
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Xsolla_CancelOrder]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Xsolla_CancelOrder]
GO
CREATE PROCEDURE [dbo].[WZ_Xsolla_CancelOrder]
	@in_id varchar(128)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- get customerid for that transaction
	declare @CustomerID int
	declare @x_sum int
	declare @x_id int
	declare @IsCancelled int
	select @CustomerId=CustomerId, @x_id=x_id, @x_sum=x_sum, @IsCancelled=IsCancelled from XsollaOrders where x_id=@in_id
	if(@@ROWCOUNT = 0) begin
		select 2 as 'ResultCode', 'no such order' as ResultMsg
		return
	end
	
	if(@IsCancelled > 0) begin
		select 0 as 'ResultCode'
		return
	end
	
	-- set it to cancelled
	update XSollaOrders set IsCancelled=1, CancelTime=GETDATE() where x_id=@in_id
	
	declare @AlterGP int = -@x_sum
	declare @GPAlterDesc nvarchar(512) = 'CANCEL of XSOLLA Order ' + convert(varchar(128), @x_id)
	exec FN_AlterUserGP @CustomerID, @AlterGP, 'XSOLLA_CANCEL', @GPAlterDesc

	declare @BanReason varchar(512) = 'Refunded XSolla OrderID:' + convert(varchar(128), @x_id)
	exec ADMIN_BanUser @CustomerID, @BanReason

	select 0 as 'ResultCode'
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Xsolla_CheckUser]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Xsolla_CheckUser]
GO
CREATE PROCEDURE [dbo].[WZ_Xsolla_CheckUser]
	@in_AccountName varchar(64)
AS
BEGIN
	SET NOCOUNT ON;
	
	select * from Accounts where email=@in_AccountName
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Xsolla_GetOrder]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Xsolla_GetOrder]
GO
CREATE PROCEDURE [dbo].[WZ_Xsolla_GetOrder]
	@in_id varchar(128)
AS
BEGIN
	SET NOCOUNT ON;
	
	select * from XsollaOrders where x_id=@in_id
	return
END

GO

-- ----------------------------
-- Procedure structure for [dbo].[WZ_Xsolla_StoreOrder]
-- ----------------------------
DROP PROCEDURE [dbo].[WZ_Xsolla_StoreOrder]
GO
CREATE PROCEDURE [dbo].[WZ_Xsolla_StoreOrder]
	@in_id varchar(128),
	@in_v1 varchar(255),
	@in_v2 varchar(255),
	@in_v3 varchar(255),
	@in_sum int,
	@in_date varchar(32),
	@in_region int = 0,
	@in_IsBonus int = 0,
	@in_user_sum float = 0,
	@in_user_currency varchar(64) = '',
	@in_transfer_sum float = 0,
	@in_transfer_currency varchar(64) = ''
	
AS
BEGIN
	SET NOCOUNT ON;
	
	-- check for duplicate transaction
	if(exists(select * from XsollaOrders where x_id=@in_id)) begin
		select * from XsollaOrders where x_id=@in_id
		return
	end

	-- check for user existence
	declare @CustomerID	int = 0
	select @CustomerID=CustomerID from Accounts where email=@in_v1
	if(@@ROWCOUNT = 0) begin
		select 0 as 'CustomerID'
		return
	end
	
	-- perform order
	insert into XsollaOrders (
		xOrderDate,
		CustomerID,
		x_id,
		x_v1,
		x_v2,
		x_v3,
		x_sum,
		x_date,
		Region,
		IsBonus,
		user_sum,
		user_currency,
		transfer_sum,
		transfer_currency
	) values (
		GETDATE(),
		@CustomerID,
		@in_id,
		@in_v1,
		@in_v2,
		@in_v3,
		@in_sum,
		@in_date,
		@in_region,
		@in_IsBonus,
		@in_user_sum,
		@in_user_currency,
		@in_transfer_sum,
		@in_transfer_currency
	)

	-- return new order
	select * from XsollaOrders where x_id=@in_id

	declare @GPName varchar(32) = 'GP_' + convert(varchar(32), @in_sum)

	-- process transactions
	INSERT INTO FinancialTransactions VALUES (
		@CustomerID,
		@in_id, 
		1000, 
		GETDATE(), 
		@in_sum, 
		'XSOLLA', 
		'APPROVED',
		@GPName)

	declare @GPAlterDesc nvarchar(512) = 'XSOLLA Order ' + convert(varchar(128), @in_id)
	if(@in_IsBonus > 0) set @GPAlterDesc = @GPAlterDesc + ' (BONUS)'
	exec FN_AlterUserGP @CustomerID, @in_sum, 'XSOLLA', @GPAlterDesc

END

GO

-- ----------------------------
-- Indexes structure for table AccountIpWhitelist
-- ----------------------------
CREATE INDEX [IX_AccountIpWhitelist_CustomerID] ON [dbo].[AccountIpWhitelist]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Indexes structure for table AccountLocks
-- ----------------------------
CREATE INDEX [IX_AccountLocks_CustomerID] ON [dbo].[AccountLocks]
([CustomerID] ASC) 
GO
CREATE INDEX [IX_AccountLocks_Token] ON [dbo].[AccountLocks]
([Token] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[AccountLocks]
-- ----------------------------
ALTER TABLE [dbo].[AccountLocks] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table AccountPwdReplace
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[AccountPwdReplace]
-- ----------------------------
ALTER TABLE [dbo].[AccountPwdReplace] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table AccountPwdReset
-- ----------------------------
CREATE INDEX [IX_AccountPwdReset_token] ON [dbo].[AccountPwdReset]
([token] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[AccountPwdReset]
-- ----------------------------
ALTER TABLE [dbo].[AccountPwdReset] ADD PRIMARY KEY ([RequestID])
GO

-- ----------------------------
-- Indexes structure for table Accounts
-- ----------------------------
CREATE UNIQUE INDEX [IX_Accounts_email] ON [dbo].[Accounts]
([email] ASC) 
GO
CREATE INDEX [IX_Accounts_SteamUserID] ON [dbo].[Accounts]
([SteamUserID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Accounts]
-- ----------------------------
ALTER TABLE [dbo].[Accounts] ADD PRIMARY KEY ([CustomerID])
GO

-- ----------------------------
-- Indexes structure for table Achievements
-- ----------------------------
CREATE INDEX [IX_Achievements_AchID] ON [dbo].[Achievements]
([CustomerID] ASC) 
GO
CREATE INDEX [IX_Achievements_CustomerID] ON [dbo].[Achievements]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Indexes structure for table CheatLog
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[CheatLog]
-- ----------------------------
ALTER TABLE [dbo].[CheatLog] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table ClanApplications
-- ----------------------------
CREATE INDEX [IX_ClanApplications_CharID] ON [dbo].[ClanApplications]
([CharID] ASC) 
GO
CREATE INDEX [IX_ClanApplications_ClanID] ON [dbo].[ClanApplications]
([ClanID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[ClanApplications]
-- ----------------------------
ALTER TABLE [dbo].[ClanApplications] ADD PRIMARY KEY ([ClanApplicationID])
GO

-- ----------------------------
-- Indexes structure for table ClanData
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ClanData]
-- ----------------------------
ALTER TABLE [dbo].[ClanData] ADD PRIMARY KEY ([ClanID])
GO

-- ----------------------------
-- Indexes structure for table ClanEvents
-- ----------------------------
CREATE INDEX [IX_ClanEvents_ClanID] ON [dbo].[ClanEvents]
([ClanID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[ClanEvents]
-- ----------------------------
ALTER TABLE [dbo].[ClanEvents] ADD PRIMARY KEY ([ClanEventID])
GO

-- ----------------------------
-- Indexes structure for table ClanInvites
-- ----------------------------
CREATE INDEX [IX_ClanInvites_ClanID] ON [dbo].[ClanInvites]
([ClanID] ASC) 
GO
CREATE INDEX [IX_ClanInvites_CustomerID] ON [dbo].[ClanInvites]
([CharID] ASC) 
GO
CREATE INDEX [IX_ClanInvites_ExpireTime] ON [dbo].[ClanInvites]
([ExpireTime] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[ClanInvites]
-- ----------------------------
ALTER TABLE [dbo].[ClanInvites] ADD PRIMARY KEY ([ClanInviteID])
GO

-- ----------------------------
-- Indexes structure for table DataGameRewards
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DataGameRewards]
-- ----------------------------
ALTER TABLE [dbo].[DataGameRewards] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table DataSkillPrice
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DataSkillPrice]
-- ----------------------------
ALTER TABLE [dbo].[DataSkillPrice] ADD PRIMARY KEY ([SkillID])
GO

-- ----------------------------
-- Indexes structure for table DBG_AccountsUpgrade
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_AccountsUpgrade]
-- ----------------------------
ALTER TABLE [dbo].[DBG_AccountsUpgrade] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table DBG_AllItems
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_AllItems]
-- ----------------------------
ALTER TABLE [dbo].[DBG_AllItems] ADD PRIMARY KEY ([ItemID])
GO

-- ----------------------------
-- Indexes structure for table DBG_ApiCalls
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_ApiCalls]
-- ----------------------------
ALTER TABLE [dbo].[DBG_ApiCalls] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table DBG_BanLog
-- ----------------------------
CREATE INDEX [IX_DBG_BanLog_CustomerID] ON [dbo].[DBG_BanLog]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_BanLog]
-- ----------------------------
ALTER TABLE [dbo].[DBG_BanLog] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table DBG_GPTransactions
-- ----------------------------
CREATE INDEX [IX_DBG_GPTransactions_CustomerID] ON [dbo].[DBG_GPTransactions]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_GPTransactions]
-- ----------------------------
ALTER TABLE [dbo].[DBG_GPTransactions] ADD PRIMARY KEY ([TransactionID])
GO

-- ----------------------------
-- Indexes structure for table DBG_HWInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_HWInfo]
-- ----------------------------
ALTER TABLE [dbo].[DBG_HWInfo] ADD PRIMARY KEY ([CustomerID])
GO

-- ----------------------------
-- Indexes structure for table DBG_IISApiStats
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_IISApiStats]
-- ----------------------------
ALTER TABLE [dbo].[DBG_IISApiStats] ADD PRIMARY KEY ([API])
GO

-- ----------------------------
-- Indexes structure for table DBG_LevelUpEvents
-- ----------------------------
CREATE INDEX [IX_DBG_LevelUpEvents] ON [dbo].[DBG_LevelUpEvents]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Indexes structure for table DBG_PasswordResets
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DBG_PasswordResets]
-- ----------------------------
ALTER TABLE [dbo].[DBG_PasswordResets] ADD PRIMARY KEY ([ResetID])
GO

-- ----------------------------
-- Indexes structure for table DBG_UserRoundResults
-- ----------------------------
CREATE INDEX [DBG_URR_CID_GRP] ON [dbo].[DBG_UserRoundResults]
([CustomerID] ASC, [GameReportTime] ASC) 
GO
CREATE INDEX [IX_DBG_UserRoundResults_LBIdx1] ON [dbo].[DBG_UserRoundResults]
([GameReportTime] ASC) 
INCLUDE ([CustomerID], [Deaths], [HonorPoints], [Kills], [Losses], [ShotsFired], [ShotsHits], [TimePlayed], [Wins]) 
GO

-- ----------------------------
-- Indexes structure for table FinancialTransactions
-- ----------------------------
CREATE INDEX [IX_FinancialTransactions_CustomerID] ON [dbo].[FinancialTransactions]
([CustomerID] ASC) 
GO
CREATE INDEX [IX_FinancialTransactions_DateTime] ON [dbo].[FinancialTransactions]
([DateTime] ASC) 
GO
CREATE INDEX [IX_FinancialTransactions_ItemID] ON [dbo].[FinancialTransactions]
([ItemID] ASC) 
GO
CREATE INDEX [IX_FinancialTransactions_TransactionType] ON [dbo].[FinancialTransactions]
([TransactionType] ASC) 
GO

-- ----------------------------
-- Indexes structure for table FriendsMap
-- ----------------------------
CREATE INDEX [IDX_FriendsMap_CustomerID] ON [dbo].[FriendsMap]
([CustomerID] ASC) 
GO
CREATE INDEX [IDX_FriendsMap_FriendID] ON [dbo].[FriendsMap]
([FriendID] ASC) 
GO

-- ----------------------------
-- Indexes structure for table Items_Attachments
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Items_Attachments]
-- ----------------------------
ALTER TABLE [dbo].[Items_Attachments] ADD PRIMARY KEY ([ItemID])
GO

-- ----------------------------
-- Indexes structure for table Items_Categories
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Items_Categories]
-- ----------------------------
ALTER TABLE [dbo].[Items_Categories] ADD PRIMARY KEY ([CatID])
GO

-- ----------------------------
-- Indexes structure for table Items_Gear
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Items_Gear]
-- ----------------------------
ALTER TABLE [dbo].[Items_Gear] ADD PRIMARY KEY ([ItemID])
GO

-- ----------------------------
-- Indexes structure for table Items_LootSrvModifiers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Items_LootSrvModifiers]
-- ----------------------------
ALTER TABLE [dbo].[Items_LootSrvModifiers] ADD PRIMARY KEY ([LootID])
GO

-- ----------------------------
-- Indexes structure for table Items_Weapons
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[Items_Weapons]
-- ----------------------------
ALTER TABLE [dbo].[Items_Weapons] ADD PRIMARY KEY ([ItemID])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard00
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard00_CharID] ON [dbo].[Leaderboard00]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard00]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard00] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard01
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard01_CharID] ON [dbo].[Leaderboard01]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard01]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard01] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard02
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard02_CharID] ON [dbo].[Leaderboard02]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard02]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard02] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard03
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard03_CharID] ON [dbo].[Leaderboard03]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard03]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard03] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard04
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard04_CharID] ON [dbo].[Leaderboard04]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard04]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard04] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard05
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard05_CharID] ON [dbo].[Leaderboard05]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard05]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard05] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard06
-- ----------------------------
CREATE UNIQUE INDEX [IX_Leaderboard06_CharID] ON [dbo].[Leaderboard06]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard06]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard06] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard50
-- ----------------------------
CREATE INDEX [IX_Leaderboard50_CharID] ON [dbo].[Leaderboard50]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard50]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard50] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard51
-- ----------------------------
CREATE INDEX [IX_Leaderboard51_CharID] ON [dbo].[Leaderboard51]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard51]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard51] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard52
-- ----------------------------
CREATE INDEX [IX_Leaderboard52_CharID] ON [dbo].[Leaderboard52]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard52]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard52] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard53
-- ----------------------------
CREATE INDEX [IX_Leaderboard53_CharID] ON [dbo].[Leaderboard53]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard53]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard53] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard54
-- ----------------------------
CREATE INDEX [IX_Leaderboard54_CharID] ON [dbo].[Leaderboard54]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard54]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard54] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard55
-- ----------------------------
CREATE INDEX [IX_Leaderboard55_CharID] ON [dbo].[Leaderboard55]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard55]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard55] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table Leaderboard56
-- ----------------------------
CREATE INDEX [IX_Leaderboard56_CharID] ON [dbo].[Leaderboard56]
([CharID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Leaderboard56]
-- ----------------------------
ALTER TABLE [dbo].[Leaderboard56] ADD PRIMARY KEY ([Pos])
GO

-- ----------------------------
-- Indexes structure for table LoginBadIPs
-- ----------------------------
CREATE INDEX [IX_LoginBadIPs_IP_CustomerID] ON [dbo].[LoginBadIPs]
([IP] ASC, [CustomerID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[LoginBadIPs]
-- ----------------------------
ALTER TABLE [dbo].[LoginBadIPs] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table LoginIPs
-- ----------------------------
CREATE INDEX [IX_LoginIPs_CustomerID] ON [dbo].[LoginIPs]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Indexes structure for table Logins
-- ----------------------------
CREATE INDEX [IX_Logins_CustomerID_LoginTime] ON [dbo].[Logins]
([CustomerID] ASC, [LoginTime] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[Logins]
-- ----------------------------
ALTER TABLE [dbo].[Logins] ADD PRIMARY KEY ([LoginID])
GO

-- ----------------------------
-- Indexes structure for table LoginSessions
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[LoginSessions]
-- ----------------------------
ALTER TABLE [dbo].[LoginSessions] ADD PRIMARY KEY ([CustomerID])
GO

-- ----------------------------
-- Indexes structure for table MasterServerInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[MasterServerInfo]
-- ----------------------------
ALTER TABLE [dbo].[MasterServerInfo] ADD PRIMARY KEY ([ServerID])
GO

-- ----------------------------
-- Indexes structure for table SecurityLog
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[SecurityLog]
-- ----------------------------
ALTER TABLE [dbo].[SecurityLog] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table ServerObjects
-- ----------------------------
CREATE INDEX [IX_ServerObjects_GameServerId] ON [dbo].[ServerObjects]
([GameServerId] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[ServerObjects]
-- ----------------------------
ALTER TABLE [dbo].[ServerObjects] ADD PRIMARY KEY ([ServerObjectID])
GO

-- ----------------------------
-- Indexes structure for table ServerSavedState
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ServerSavedState]
-- ----------------------------
ALTER TABLE [dbo].[ServerSavedState] ADD PRIMARY KEY ([GameServerId])
GO

-- ----------------------------
-- Indexes structure for table SteamConversionKeys
-- ----------------------------
CREATE INDEX [IX_SteamConversionKeys_CustomerID] ON [dbo].[SteamConversionKeys]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[SteamConversionKeys]
-- ----------------------------
ALTER TABLE [dbo].[SteamConversionKeys] ADD PRIMARY KEY ([ConversionKey])
GO

-- ----------------------------
-- Indexes structure for table SteamDLC
-- ----------------------------
CREATE INDEX [IX_SteamDLC_CustomerID] ON [dbo].[SteamDLC]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[SteamDLC]
-- ----------------------------
ALTER TABLE [dbo].[SteamDLC] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table SteamGPOrders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[SteamGPOrders]
-- ----------------------------
ALTER TABLE [dbo].[SteamGPOrders] ADD PRIMARY KEY ([OrderID])
GO

-- ----------------------------
-- Indexes structure for table UsersChars
-- ----------------------------
CREATE INDEX [IX_Profile_Loadouts2_CustomerID] ON [dbo].[UsersChars]
([CustomerID] ASC) 
GO
CREATE INDEX [PK_Profile_Loadouts2] ON [dbo].[UsersChars]
([CharID] ASC) 
GO
CREATE INDEX [IX_UsersChars_ClanID] ON [dbo].[UsersChars]
([ClanID] ASC) 
GO
CREATE INDEX [IX_UsersChars_Gamertag] ON [dbo].[UsersChars]
([Gamertag] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[UsersChars]
-- ----------------------------
ALTER TABLE [dbo].[UsersChars] ADD PRIMARY KEY ([CharID])
GO

-- ----------------------------
-- Indexes structure for table UsersData
-- ----------------------------
CREATE INDEX [IX_LoginID_ClanID] ON [dbo].[UsersData]
([ClanID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[UsersData]
-- ----------------------------
ALTER TABLE [dbo].[UsersData] ADD PRIMARY KEY ([CustomerID])
GO

-- ----------------------------
-- Indexes structure for table UsersInventory
-- ----------------------------
CREATE INDEX [IX_UsersInventory_CharID] ON [dbo].[UsersInventory]
([CharID] ASC) 
GO
CREATE INDEX [IX_UsersInventory_CustomerID] ON [dbo].[UsersInventory]
([CustomerID] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[UsersInventory]
-- ----------------------------
ALTER TABLE [dbo].[UsersInventory] ADD PRIMARY KEY ([InventoryID])
GO

-- ----------------------------
-- Indexes structure for table VitalStats_Inventory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[VitalStats_Inventory]
-- ----------------------------
ALTER TABLE [dbo].[VitalStats_Inventory] ADD PRIMARY KEY ([RecordID])
GO

-- ----------------------------
-- Indexes structure for table XsollaOrders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[XsollaOrders]
-- ----------------------------
ALTER TABLE [dbo].[XsollaOrders] ADD PRIMARY KEY ([x_id])
GO