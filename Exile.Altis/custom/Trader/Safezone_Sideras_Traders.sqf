/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 11 NPCs
private _npcs = [
["Exile_Trader_AircraftCustoms", ["Acts_JetsCrewaidFCrouch_loop"], "Exile_Trader_AircraftCustoms", "WhiteHead_18", [[],[],[],["U_B_PilotCoveralls",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [23252.7, 24195.4, 2.53312], [0.997929, -0.0643234, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["Acts_Kore_IdleNoWeapon_loop"], "Exile_Trader_Aircraft", "GreekHead_A3_05", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [23252.9, 24197.3, 2.53364], [0.994951, -0.100362, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["Acts_CivilShocked_1"], "Exile_Trader_Armory", "AfricanHead_01", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [23339, 24163.1, 4.0896], [0.999506, -0.0314217, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["Acts_CivilListening_2"], "Exile_Trader_Equipment", "WhiteHead_01", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [23342.4, 24157.3, 4.15159], [0.612572, 0.790415, 0], [0, 0, 1]],
["Exile_Trader_Food", ["Acts_A_M01_briefing"], "Exile_Trader_Food", "WhiteHead_20", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [23349.3, 24155.2, 4.33719], [0.0126533, 0.99992, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["Acts_listeningToRadio_Loop"], "Exile_Trader_Hardware", "GreekHead_A3_07", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [23348.5, 24172.8, 4.26731], [0.0760924, -0.997101, 0], [0, 0, 1]],
["Exile_Trader_Office", ["Acts_CivilIdle_2"], "Exile_Trader_Office", "WhiteHead_13", [[],[],[],["U_C_IDAP_Man_cargo_F",[]],["V_Rangemaster_belt",[]],[],"Exile_Cap_Exile","G_WirelessEarpiece_F",[],["","","","","",""]], [23355.7, 24200.5, 4.54534], [0.324694, -0.945819, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["Acts_FarmIncident_Commander"], "Exile_Trader_SpecialOperations", "AfricanHead_03", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [23342.4, 24169.8, 4.36242], [0.636199, -0.771525, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["Acts_HeliCargoTalking_loop"], "Exile_Trader_WasteDump", "AfricanHead_03", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [23337.1, 24196.7, 5.64665], [-0.223376, -0.974732, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["Acts_CivilIdle_1"], "Exile_Trader_Vehicle", "WhiteHead_15", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_HeadSet_red_F","G_Aviator",[],["","","","","",""]], [23369.3, 24189.2, 3.99064], [0.218109, 0.975924, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["Acts_carFixingWheel"], "Exile_Trader_VehicleCustoms", "WhiteHead_01", [[],[],[],["U_C_Driver_3",[]],[],[],"","G_Bandanna_shades",[],["","","","","",""]], [23378.8, 24190.8, 3.93763], [0.996886, -0.0788593, 0], [0, 0, 1]]
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