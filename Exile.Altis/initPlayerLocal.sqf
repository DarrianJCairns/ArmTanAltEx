// Custom Trader
#include "custom\Trader\AAC-Flugfeld_Trader.sqf"
#include "custom\Trader\Molos_Trader.sqf"
#include "custom\Trader\High End Trader USS-Freedom Traders.sqf"
#include "custom\Trader\Safezone_Airfield_Traders.sqf"
#include "custom\Trader\Safezone_BW_Traders.sqf"
#include "custom\Trader\Safezone_Kavala_Traders.sqf"
#include "custom\Trader\Safezone_Sideras_Traders.sqf"


[] execVM "ClaimVehicles_Client\ClaimVehicles_Client_init.sqf";

SV_fnc_SalvageVehicle = compileFinal preprocessFileLineNumbers "custom\SalvageVehicle\SalvageVehicle.sqf";