/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 4 NPCs
private _npcs = [
["Exile_Trader_Vehicle", ["Acts_AidlPercMstpSnonWnonDnon_warmup_6_loop"], "Exile_Trader_CommunityCustoms", "GreekHead_A3_09", [["Exile_Weapon_AKM","","","",["Exile_Magazine_30Rnd_762x39_AK",30],[],""],[],[],["U_I_C_Soldier_Bandit_2_F",[]],[],[],"H_ShemagOpen_tan","",[],["","","","","",""]], [26793.8, 24657.8, 20.9229], [-0.0958804, -0.995393, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["Acts_AidlPercMstpSnonWnonDnon_warmup_1_loop"], "Exile_Trader_Equipment", "WhiteHead_16", [[],[],[],["U_BG_Guerilla3_1",[]],["V_LegStrapBag_black_F",[]],["B_Messenger_Olive_F",[]],"H_Booniehat_khk_hs","G_Aviator",["Laserdesignator","","","",[],[],""],["","","","","",""]], [26751.4, 24670.3, 21.1066], [0.0378822, -0.999282, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["Acts_AidlPercMstpSloWWrflDnon_warmup_3_loop"], "Exile_Trader_SpecialOperations", "AfricanHead_03", [["srifle_LRR_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],["launch_I_Titan_F","","","",[],[],""],[],["U_I_FullGhillie_sard",[["7Rnd_408_Mag",1,7]]],["V_PlateCarrierGL_rgr",[["7Rnd_408_Mag",2,7]]],[],"","G_Bandanna_sport",[],["","","","","",""]], [26740, 24655.8, 21.1196], [0.984291, 0.176552, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["Acts_AidlPercMstpSloWWrflDnon_warmup_2_loop"], "Exile_Trader_Armory", "WhiteHead_16", [["arifle_AKS","","","",["30Rnd_762x39_AK47_M",30],[],""],[],[],["U_I_C_Soldier_Bandit_5_F",[]],["V_LegStrapBag_black_F",[["30Rnd_762x39_AK47_M",2,30]]],["B_Messenger_Gray_F",[]],"H_EarProtectors_white_F","G_Shades_Black",[],["","","","","",""]], [26751.4, 24644.8, 21.107], [0.613266, 0.789877, 0], [0, 0, 1]]
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