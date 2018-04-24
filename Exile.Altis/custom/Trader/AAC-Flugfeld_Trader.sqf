/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 9 NPCs
private _npcs = [
["Exile_Trader_Vehicle", [], "Exile_Trader_CommunityCustoms", "WhiteHead_20", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Black",[],["","","","","",""]], [11574.7, 11901.3, 23.1631], [0.66804, 0.744125, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "GreekHead_A3_06", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Aviator",[],["","","","","",""]], [11555.1, 11985.4, 23.6747], [0.358864, -0.93339, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_11", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [11609.5, 12024.5, 23.2457], [0.881712, -0.471787, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_02", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [11548, 11977.5, 23.9304], [0.860764, -0.509004, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_14", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [11614.1, 12024.7, 23.232], [-0.823308, -0.567595, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_20", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [11565.2, 11954.6, 23.9245], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_07", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [11575.9, 11972.8, 23.6388], [-0.446919, -0.894574, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "GreekHead_A3_09", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [11637.2, 12014.3, 23.1908], [0.855329, 0.518085, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms10", [], "Exile_Trader_CommunityCustoms10", "WhiteHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [11544.7, 11968.6, 23.9316], [0.943437, 0.331553, 0], [0, 0, 1]]
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