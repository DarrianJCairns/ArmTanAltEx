/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 11 NPCs
private _npcs = [
["Exile_Trader_SpecialOperations", ["Acts_Kore_TalkingOverRadio_loop"], "Exile_Trader_SpecialOperations", "WhiteHead_11", [["MMG_02_camo_F","muzzle_snds_338_green","acc_pointer_IR","optic_AMS_snd",["130Rnd_338_Mag",130],[],"bipod_02_F_tan"],[],[],["U_O_V_Soldier_Viper_hex_F",[]],["V_PlateCarrierGL_mtp",[["130Rnd_338_Mag",1,130]]],["B_ViperHarness_hex_F",[["130Rnd_338_Mag",2,130]]],"H_HelmetO_ViperSP_hex_F","G_Balaclava_lowprofile",[],["","","","","",""]], [14569.4, 16775.9, 18.0364], [0.3554, -0.934714, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["Acts_NATOCommanderArrival_Commander_5"], "Exile_Trader_Equipment", "WhiteHead_03", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [14562.5, 16769.6, 18.0364], [0.999545, 0.0301721, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["Acts_A_M01_briefing"], "Exile_Trader_Armory", "WhiteHead_04", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [14573.1, 16758.7, 18.0364], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_07", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [14604.1, 16633.1, 17.9114], [0.726024, 0.687669, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_19", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Black",[],["","","","","",""]], [14587.3, 16656.6, 17.9114], [0.990306, 0.138904, 0], [0, 0, 1]],
["Exile_Trader_Food", ["Acts_CivilTalking_1"], "Exile_Trader_Food", "WhiteHead_17", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [14610.8, 16784.9, 18.0114], [-0.732234, 0.681053, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["Acts_CivilIdle_2"], "Exile_Trader_Hardware", "WhiteHead_12", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [14586.6, 16756.9, 18.0364], [-0.999158, -0.0410384, 0], [0, 0, 1]],
["Exile_Trader_Office", ["acts_millerDisarming_deskLoop"], "Exile_Trader_Office", "WhiteHead_12", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [14598.3, 16775.3, 18.0364], [-0.996132, 0.0878678, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["Acts_carFixingWheel"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [14670.4, 16803.1, 17.9114], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["Acts_carFixingWheel"], "Exile_Trader_VehicleCustoms", "AfricanHead_02", [[],[],[],["U_C_WorkerCoveralls",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [14534.2, 16744, 17.9114], [-0.774837, -0.632161, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["Acts_Briefing_SA_Loop"], "Exile_Trader_Vehicle", "WhiteHead_08", [["arifle_AKM_F","","","",["30Rnd_762x39_Mag_F",30],[],""],[],[],["U_I_C_Soldier_Bandit_2_F",[["30Rnd_762x39_Mag_F",3,30]]],[],[],"","G_Balaclava_oli",[],["","","","","",""]], [14541.4, 16751.4, 17.9114], [0.735127, -0.677929, 0], [0, 0, 1]]
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