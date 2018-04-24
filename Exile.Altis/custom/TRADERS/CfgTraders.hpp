	/**
	 * Weapons, scopes, silencers, ammo
	 */
	class Exile_Trader_Armory
	{
		name = "ARMORY";
		showWeaponFilter = 1;
		categories[] = 
		{
			"PointerAttachments",
			"BipodAttachments",
			"MuzzleAttachments",
			"APEXMuzzleAttachments",
			"OpticAttachments",
			"APEXOpticAttachments",
			"Ammunition",
			"APEXAmmunition",
			"Pistols",
			"APEXPistols",
			"SubMachineGuns",
			"APEXSubMachineGuns",
			"LightMachineGuns",
			"APEXLightMachineGuns",
			"AssaultRifles",
			"APEXAssaultRifles",
			"SniperRifles",
			"APEXSniperRifles"		
		//	"RHSPointerAttachments",
		//	"RHSBipodAttachments",
		//	"RHSForegripAttachments",
		//	"RHSMuzzleAttachments",
		//	"RHSOpticAttachments",
		//	"RHSAmmunition",
		//	"RHSPistols",
		//	"Shotguns",
		//	"RHSSubMachineGuns",
		//	"RHSLightMachineGuns",
		//	"RHSAssaultRifles",
		//	"RHSSniperRifles",			
		//	"BWPointers",
		//	"BWSilencer",
		//	"BWOptics",
		//	"BWMagazines",
		//	"BWPistols",
		//	"BWRifels"							
		//	"CUPPointerAttachments",
			//"MASPointerAttachments",
			//"R3FPointerAttachments",						
			//"APEXBipodAttachments",		//not used
			//"R3FBipodAttachments",									
			//"HLCMuzzleAttachments",		//should use NIArms
		//	"CUPMuzzleAttachments",
			//"MASMuzzleAttachments",
			//"NIAMuzzleAttachments",
			//"R3FMuzzleAttachments",					
			//"HLCOpticAttachments",		//should use NIArms
		//	"CUPOpticAttachments",
			//"MASOpticAttachments",
			//"NIAOpticAttachments",
			//"R3FOpticAttachments",			
			//"NIAAttachments",			
			//"GREFAmmunition",
			//"HLCAmmunition",		//should use NIArms
		//	"CUPAmmunition",
			//"MASAmmunition",
			//"NIAAmmunition",
			//"R3FAmmunition",			
		//	"CUPPistols",
			//"MASPistols",
			//"R3FPistols",			
		//	"CUPSubMachineGuns",
			//"MASSubMachineGuns",
			//"R3FSubMachineGuns",			
			//"HLCLightMachineGuns",		//should use NIArms
		//	"CUPLightMachineGuns",
			//"MASLightMachineGuns",
			//"NIALightMachineGuns",
			//"R3FLightMachineGuns",			
			//"HAPASSAULTRIFLES",
			//"HLCAssaultRifles",		//should use NIArms
		//	"CUPAssaultRifles",
			//"MASAssaultRifles",
			//"NIAAssaultRifles",
			//"R3FAssaultRifles",			
			//"GREFWeapons",		
			//"HAPSNIPERRIFLES",
			//"HLCSniperRifles",		//should use NIArms
			//"HWPweapons",
		//	"CUPSniperRifles"
			//"MASSniperRifles",
			//"NIASniperRifles",
			//"R3FSniperRifles",			
			//"SAFWeapons", 
			//"SAFAmmunition", 
			//"SAFAttachments"
			
		};
	};

	/**
	 * Satchels, nades, UAVs, static MGs
	 */
	class Exile_Trader_SpecialOperations
	{
		name = "SPECIAL OPERATIONS";
		showWeaponFilter = 1; // for noob tubes
		categories[] = 
		{
			"Flares",
		//	"RHSUGLAmmo",
			"Smokes",
			"UAVs",
			"StaticMGs",
			"Navigation",
			"Explosives",
		//	"RHSExplosives",
		//	"BWGrenades",
			"A3Launchers",
			"A3LauncherAmmo"
			//"ApexLaunchers",
			//"APEXLauncherAmmo",
		//	"RHSLaunchers",
		//	"RHSLauncherAmmo",
		//	"BWLaunchers",
		//	"BWLauncherMagazines",
			//"ExplosiveWeapons",								
		//	"CUPLaunchers",
			//"MASLaunchers",
			//"R3FLaunchers",			
		//	"CUPLauncherAmmo",
			//"MASLauncherAmmo",
			//"R3FLauncherAmmo",									
		//	"CUPExplosive"
			//"MASExplosive",						
			//"SAFMines"						
		};
	};

	/**
	 * Uniforms, vests, helmets, backpacks
	 */
	class Exile_Trader_Equipment
	{	
		name = "EQUIPMENT";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Uniforms",
			"Vests",
			"Backpacks",
			"Headgear",
			"Tools",
			"APEXUniforms",
			"APEXVests",
			"APEXBackpacks",
			"APEXHeadgear",
			"APEXTools",
			//"RHSUniforms",
			//"RHSVests",
		//	"RHSBackpacks",
		//	"RHSHeadgear",
		//	"RHSAccessories",
		//	"BWUniforms",
		//	"BWHeadgear",
		//	"BWVests",
		//	"BWBackpacks",
		//	"BWBinoculars",
		//	"BWItems",
		//	"BWGoogles",
			"FirstAid"
		//	"CUPHeadgear",
			//"HAPHEADGEAR",
			//"MASHeadgear",
			//"GREFHeadgear",
			//"TRYKHeadgear",			
		//	"CUPUniforms",
			//"HAPUNIFORMS",		
			//"GREFUniforms",
			//"TRYKUniforms",						
		//	"CUPVests",
			//"HAPVESTS",			
			//"GREFVests",
			//"TRYKVests",						
			//"A3Backpacks",
		//	"CUPBackpacks"
			//"HAPBACKPACKS",
			//"MASBackpacks",
			//"TRYKBackpacks",											
			//"MASTools",			
			//"SAFUniforms",
			//"SAFVests",
			//"SAFHeadgear",
			//"SAFBackpacks"

		};
	};

	/**
	 * Cans, cans, cans
	 */
	class Exile_Trader_Food
	{
		name = "FAST FOOD";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Food",
			"Drinks"
		};
	};

	/**
	 * Light bulbs, metal, etc.
	 */
	class Exile_Trader_Hardware
	{
		name = "HARDWARE";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Hardware",
			//"R3FTools",
			"ExtendedBaseMod"
			//"CBuilding"
		};
	};

	/**
	 * Sells cars and general vehicles
	 */
	class Exile_Trader_Vehicle
	{
		name = "VEHICLE";
		showWeaponFilter = 0;
		categories[] = 
		{
			//"Bikes",
			"Cars",
			"A3Cars",
			"ApexCars",
			//"A3Armed",
			"A3Trucks",
			"Trucks"
			//"RHSVehicles",
			//"BWCars"
			//"HAPCARS",
			//"HVPCars",
			//"JonzieCars",
			//"MASCars",
		//	"CUPUnarmed",
			//"ApexTrucks",
			//"HAPTRUCKS",
			//"MASTrucks",
		//	"CUPArmed"
			//"MASArmed",			
			//"SAFUnarmed", 
			//"SAFArmed",		
			//"GREFArmed",
			//"GREFUnarmed",
			//"CTrucks",						
			//"CUGVs",
			//"FMPCars",
			//"FMPTrucks"
			//"MASTanks"
			//"A3Tanks"	
			//"UGV"	
			//"A3UGVs"	
			//"ApexUAVs"
		};
	};

	/**
	 * Sells choppers and planes
	 */
	class Exile_Trader_Aircraft
	{
		name = "AIRCRAFT";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Choppers",	
			"A3unarmedChoppers",
			"Planes"	
			//"RHSChoppers"
			//"CPlanes",
			//"HVPPlanes",
			//"MASPlanes",
			//"SAFChoppers",
			//"GREFPlanes",
			//"CUAVs",
			//"CChoppers",			
		//	"CUPChoppers"
			//"MASChoppers",
			//"GREFChoppers",
			//"Pods"		
		};
	};

	/**
	 * Sells ships and boats
	 */ 
	class Exile_Trader_Boat
	{
		name = "BOAT";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Boats",
			"A3Boats",
			"ApexBoats"
		};
	};

	class Exile_Trader_Diving
	{
		name = "DIVERS";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Diving"
		};
	};	
	
	/**
	 * Sells Community Items
	 */ 
	class Exile_Trader_CommunityCustoms
	{
		name = "High End";
		showWeaponFilter = 0;
		categories[] = 
		{
			//"A3UAVs",
			//"A3UGVs",
			"A3Tanks",
			"A3AmmoTrucks",
			"A3Planes",
			"A3armedChoppers",
			"A3AmmoChoppers",
			"ApexPlanes",
			"ApexChoppers"
			//"RHSVehiclesArmed",
			//"RHSPlanes",
			//"RHSChoppersArmed",
//			"BWTanks",
//			"BWSPz",
//			"BWHelicopter"		
		};
	};
	class Exile_Trader_CommunityCustoms2
	{
		name = "Admin";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Admin"
		};
	};

	class Exile_Trader_CommunityCustoms3
	{
		name = "Ammo";
		showWeaponFilter = 0;
		categories[] = 
		{
//			"BWLaunchers",
//			"BWLauncherMagazines",
			"A3Launchers",
			"A3LauncherAmmo"
		};
	};

	class Exile_Trader_CommunityCustoms4
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community4"
		};
	};

	class Exile_Trader_CommunityCustoms5
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community5"
		};
	};

	class Exile_Trader_CommunityCustoms6
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community6"
		};
	};

	class Exile_Trader_CommunityCustoms7
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community7"
		};
	};

	class Exile_Trader_CommunityCustoms8
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community8"
		};
	};

	class Exile_Trader_CommunityCustoms9
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community9"
		};
	};

	class Exile_Trader_CommunityCustoms10
	{
		name = "COMMUNITY";
		showWeaponFilter = 0;
		categories[] = 
		{
			"Community10"
		};
	};