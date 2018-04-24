/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 11 NPCs
private _npcs = [
["Exile_Trader_WasteDump", ["Acts_carFixingWheel"], "Exile_Trader_WasteDump", "WhiteHead_02", [[],[],[],["BWA3_Uniform3_idz_Tropen",[]],["V_LegStrapBag_coyote_F",[]],[],"BWA3_Booniehat_Tropen","BWA3_G_Combat_Orange",[],["","","","","",""]], [22170.3, 14539.4, 3.29021], [-0.744312, 0.667832, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["Acts_Briefing_SC_Loop"], "Exile_Trader_Armory", "GreekHead_A3_05", [["BWA3_G38_Tan","BWA3_muzzle_snds_G36","","BWA3_optic_Aimpoint",["BWA3_30Rnd_556x45_G36",30],[],"bipod_02_F_tan"],[],[],["BWA3_Uniform2_Tropen",[["BWA3_30Rnd_556x45_G36",3,30]]],["BWA3_Vest_Rifleman1_Tropen",[]],["BWA3_PatrolPack_Tropen",[]],"BWA3_OpsCore_Tropen_Camera","G_Shades_Black",[],["","","","","",""]], [22165.3, 14502.9, 3.15072], [-0.824287, 0.566172, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["Acts_PknlMstpSlowWrflDnon"], "Exile_Trader_Equipment", "WhiteHead_15", [["BWA3_MG4","BWA3_muzzle_snds_G36","","BWA3_optic_EOTech",["BWA3_200Rnd_556x45",200],[],""],[],[],["BWA3_Uniform3_idz_Tropen",[]],["BWA3_Vest_Rifleman1_Tropen",[["BWA3_200Rnd_556x45",3,200]]],["BWA3_TacticalPack_Tropen",[]],"BWA3_M92_Tropen","G_Combat",[],["","","","","",""]], [22172, 14503.1, 3.10782], [-0.219591, 0.975592, 0], [0, 0, 1]],
["Exile_Trader_Food", ["Acts_SittingJumpingSaluting_loop1"], "Exile_Trader_Food", "WhiteHead_03", [[],[],[],["BWA3_Uniform_idz_Tropen",[]],[],[],"BWA3_Booniehat_Tropen","BWA3_G_Combat_Clear",[],["","","","","",""]], [22163.5, 14518.3, 3.16069], [0.537373, -0.843345, 0], [0, 0, 1]],
["Exile_Trader_Office", ["Acts_CivilTalking_1"], "Exile_Trader_Office", "AfricanHead_01", [[],[],[],["BWA3_Uniform2_idz_Tropen",[]],["V_Rangemaster_belt",[]],[],"BWA3_Beret_Wach_Blau","G_WirelessEarpiece_F",[],["","","","","",""]], [22117.9, 14493.6, 4.3835], [0.593854, 0.804573, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["Acts_CivilShocked_1"], "Exile_Trader_SpecialOperations", "WhiteHead_07", [["BWA3_G36_AG","muzzle_snds_M","BWA3_acc_VarioRay_irlaser","BWA3_optic_ZO4x30",["BWA3_30Rnd_556x45_G36",30],[],""],[],[],["BWA3_Uniform3_idz_Tropen",[["BWA3_30Rnd_556x45_G36",3,30]]],["BWA3_Vest_Marksman_Tropen",[]],["C_IDAP_UAV_06_antimine_backpack_F",[]],"BWA3_OpsCore_Tropen_Camera","BWA3_G_Combat_Black",[],["","","","","",""]], [22169.1, 14519.9, 3.27798], [0.107409, -0.994215, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["Acts_Briefing_SA_Loop"], "Exile_Trader_Vehicle", "GreekHead_A3_09", [["BWA3_G36_LMG","","","",["BWA3_100Rnd_556x45_G36",100],[],""],[],[],["BWA3_Uniform_idz_Tropen",[["BWA3_100Rnd_556x45_G36",1,100]]],["BWA3_Vest_Grenadier_Tropen",[["BWA3_100Rnd_556x45_G36",2,100]]],["BWA3_FieldPack_Tropen",[]],"BWA3_MICH_Tropen","",[],["","","","","",""]], [22125.2, 14543.3, 3.67435], [0.338229, 0.941064, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["Acts_carFixingWheel"], "Exile_Trader_VehicleCustoms", "WhiteHead_12", [[],[],[],["BWA3_Uniform3_idz_Tropen",[]],["BWA3_Vest_Grenadier_Tropen",[]],["BWA3_Kitbag_Tropen_Medic",[]],"BWA3_M92_Tropen","BWA3_G_Combat_Orange",[],["","","","","",""]], [22133.6, 14546.7, 3.57112], [0.991695, -0.128613, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["Acts_A_M01_briefing"], "Exile_Trader_Aircraft", "AfricanHead_03", [[],[],[],["BWA3_Uniform_Crew_Tropen",[]],[],[],"BWA3_Beret_HFlieger","BWA3_G_Combat_Black",[],["","","","","",""]], [22146.7, 14418.5, 3.51998], [-0.282843, 0.959166, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["Acts_CivilListening_1"], "Exile_Trader_AircraftCustoms", "WhiteHead_16", [[],[],[],["BWA3_Uniform_Crew_Tropen",[]],[],[],"BWA3_Knighthelm","",[],["","","","","",""]], [22148.5, 14418.4, 3.45842], [-0.282843, 0.959166, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["Acts_JetsCrewaidFCrouch_loop"], "Exile_Trader_Hardware", "WhiteHead_11", [[],[],[],["BWA3_Uniform2_Tropen",[]],["BWA3_Vest_Marksman_Tropen",[]],["BWA3_PatrolPack_Tropen",[]],"BWA3_Booniehat_Tropen","BWA3_G_Combat_Orange",[],["","","","","",""]], [22169.4, 14489.6, 3.08154], [-0.286023, -0.958223, 0], [0, 0, 1]]
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