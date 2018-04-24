/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 11 NPCs
private _npcs = [
["Exile_Trader_WasteDump", ["Acts_carFixingWheel"], "Exile_Trader_WasteDump", "WhiteHead_02", [[],[],[],["U_C_IDAP_Man_Jeans_F",[]],["V_LegStrapBag_coyote_F",[]],["B_Messenger_IDAP_F",[]],"Exile_Cap_Exile","G_Bandanna_sport",[],["","","","","",""]], [22170.4, 14539.2, 3.28787], [-0.744312, 0.667832, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["Acts_Briefing_SC_Loop"], "Exile_Trader_Armory", "GreekHead_A3_07", [["srifle_DMR_07_hex_F","","","optic_ERCO_snd_F",["20Rnd_650x39_Cased_Mag_F",20],[],""],[],[],["U_B_CombatUniform_mcam",[["20Rnd_650x39_Cased_Mag_F",3,20]]],["V_PlateCarrierGL_rgr",[]],["B_Carryall_oli",[]],"H_Cap_tan","G_Shades_Red",[],["","","","","",""]], [22165.3, 14502.9, 3.15072], [-0.824287, 0.566172, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["Acts_PknlMstpSlowWrflDnon"], "Exile_Trader_Equipment", "WhiteHead_15", [["arifle_Katiba_F","","","optic_ACO_grn_smg",["30Rnd_65x39_caseless_green",30],[],""],[],[],["U_BG_Guerilla2_2",[["30Rnd_65x39_caseless_green",2,30]]],["V_HarnessO_gry",[["30Rnd_65x39_caseless_green",1,30]]],["B_TacticalPack_blk",[]],"H_Watchcap_camo","G_Combat",[],["","","","","",""]], [22172, 14503.1, 3.10782], [-0.219591, 0.975592, 0], [0, 0, 1]],
["Exile_Trader_Food", ["Acts_SittingJumpingSaluting_loop1"], "Exile_Trader_Food", "WhiteHead_03", [[],[],[],["U_B_survival_uniform",[]],[],[],"H_Booniehat_tan","G_Tactical_Clear",[],["","","","","",""]], [22163.5, 14518.3, 3.16069], [0.537373, -0.843345, 0], [0, 0, 1]],
["Exile_Trader_Office", ["Acts_CivilTalking_1"], "Exile_Trader_Office", "AfricanHead_02", [[],[],[],["U_B_GEN_Commander_F",[]],["V_Rangemaster_belt",[]],[],"H_Beret_gen_F","G_WirelessEarpiece_F",[],["","","","","",""]], [22117.9, 14493.6, 4.3835], [0.593854, 0.804573, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["Acts_CivilShocked_1"], "Exile_Trader_SpecialOperations", "WhiteHead_08", [["LMG_Mk200_F","","acc_pointer_IR","optic_Arco",["200Rnd_65x39_cased_Box",200],[],""],[],[],["U_B_CombatUniform_mcam_tshirt",[]],["V_BandollierB_khk",[["200Rnd_65x39_cased_Box",1,200]]],["B_TacticalPack_mcamo",[]],"H_Cap_brn_SPECOPS","G_Bandanna_blk",[],["","","","","",""]], [22169.1, 14519.9, 3.27798], [0.107409, -0.994215, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["Acts_Briefing_SA_Loop"], "Exile_Trader_Vehicle", "Sturrock", [["arifle_AKM","","","",["30Rnd_762x39_AK47_M",30],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_HarnessO_brn",[["30Rnd_762x39_AK47_M",3,30]]],["B_FieldPack_oli",[]],"H_HelmetB_black","",[],["","","","","",""]], [22125.2, 14543.3, 3.67435], [0.338229, 0.941064, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["Acts_carFixingWheel"], "Exile_Trader_VehicleCustoms", "WhiteHead_12", [[],[],[],["U_C_WorkerCoveralls",[]],["V_LegStrapBag_black_F",[]],[],"H_Watchcap_blk","G_Aviator",[],["","","","","",""]], [22133.6, 14546.7, 3.57112], [0.991695, -0.128613, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["Acts_A_M01_briefing"], "Exile_Trader_Aircraft", "GreekHead_A3_06", [[],[],[],["U_B_PilotCoveralls",[]],[],[],"H_CrewHelmetHeli_B","G_Balaclava_TI_blk_F",[],["","","","","",""]], [22146.7, 14418.5, 3.51998], [-0.282843, 0.959166, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["Acts_CivilListening_1"], "Exile_Trader_AircraftCustoms", "WhiteHead_17", [[],[],[],["U_B_HeliPilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [22148.5, 14418.4, 3.45842], [-0.282843, 0.959166, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["Acts_JetsCrewaidFCrouch_loop"], "Exile_Trader_Hardware", "WhiteHead_11", [[],[],[],["U_C_WorkerCoveralls",[]],["V_LegStrapBag_coyote_F",[]],["B_Bergen_mcamo_F",[]],"H_Bandanna_sand","G_Bandanna_khk",[],["","","","","",""]], [22169.4, 14489.6, 3.08154], [-0.286023, -0.958223, 0], [0, 0, 1]]
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