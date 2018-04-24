/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 7 NPCs
private _npcs = [
["Exile_Trader_Vehicle", ["Acts_JetsCrewaidR_idle_m"], "Exile_Trader_CommunityCustoms", "WhiteHead_07", [[],[],[],["U_B_PilotCoveralls",[]],[],["B_Parachute",[]],"H_PilotHelmetFighter_O","",[],["","","","","",""]], [5798.98, 22705.6, 23.857], [-0.388352, 0.921511, 0], [0, 0, 1]],
["Exile_Trader_Office", ["Acts_AidlPercMstpSnonWnonDnon_warmup_8_loop"], "Exile_Trader_Office", "GreekHead_A3_05", [[],[],[],["U_C_IDAP_Man_casual_F",[]],["V_LegStrapBag_black_F",[]],[],"H_Cap_Black_IDAP_F","",[],["","","","","",""]], [5996.6, 22564.4, 41.6732], [-0.509012, 0.86076, 0], [0, 0, 1]],
["Exile_Trader_Food", ["Acts_AidlPercMstpSnonWnonDnon_warmup_3_loop"], "Exile_Trader_Food", "WhiteHead_07", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_WirelessEarpiece_F",[],["","","","","",""]], [6025.81, 22571.4, 42.7168], [0.868874, -0.495034, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["Acts_Briefing_SB_Loop"], "Exile_Trader_Armory", "WhiteHead_06", [["arifle_AK12_F","","","",["30Rnd_762x39_Mag_F",30],[],""],[],["Makarov","","","",["8Rnd_9x18_Makarov",8],[],""],["U_Rangemaster",[["8Rnd_9x18_Makarov",2,8]]],["Exile_Vest_Snow",[["8Rnd_9x18_Makarov",1,8],["30Rnd_762x39_Mag_F",3,30]]],[],"H_EarProtectors_yellow_F","G_Bandanna_tan",[],["","","","","",""]], [6036.47, 22542.2, 44.2362], [-0.836296, -0.548279, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["Acts_A_M01_briefing"], "Exile_Trader_Equipment", "WhiteHead_10", [["exile_arifle_M16A2","muzzle_snds_M","acc_pointer_IR","optic_MRCO",["30Rnd_556x45_Stanag",30],[],"bipod_03_F_blk"],[],[],["U_I_G_resistanceLeader_F",[["30Rnd_556x45_Stanag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_556x45_Stanag",1,30]]],[],"H_Bandanna_gry","",[],["","","","","",""]], [6032.21, 22553.8, 43.4435], [-0.933874, -0.357602, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["Acts_ShieldFromSun_loop"], "Exile_Trader_SpecialOperations", "WhiteHead_19", [["arifle_MXM_F","muzzle_snds_H_snd_F","acc_pointer_IR","optic_AMS_snd",["30Rnd_65x39_caseless_mag",30],[],"bipod_01_F_snd"],[],[],["U_B_GhillieSuit",[["30Rnd_65x39_caseless_mag",3,30]]],["V_PlateCarrierL_CTRG",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","",""]], [6014.81, 22542.8, 45.1033], [0.999998, 0.00185008, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms3", ["Acts_Kore_IdleNoWeapon_loop"], "Exile_Trader_CommunityCustoms3", "WhiteHead_15", [[],[],[],["U_BG_leader",[]],["V_BandollierB_khk",[]],["B_AssaultPack_khk",[]],"H_Shemag_olive","",[],["","","","","",""]], [5799.89, 22699.2, 23.9628], [-0.982548, -0.18601, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;