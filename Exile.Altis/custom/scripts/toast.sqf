/*
    File: fn_toastIntro.sqf
	Editor: Salutesh aka Steve
	Original script by: Valthos
	Edits by: GR8
    Description: Toast notifications for spawning players.
*/

if(isDedicated) exitWith {};

_displayCount 		= 0;						// How many times the toasts gets repeated after given time (unlimited default).
_n					= 0;						// After witch time toasts get repeated (10 seconds default).
_toastType			= "SuccessTitleAndText";	// Type of the toast where ErrorTitleAndText is red, SuccessTitleAndText is green and InfoTitleAndText is light blue.
_sizeTitle          = 0.85; 					// Font Size of the Title Messages
_sizeSubText        = 0.70;  					// Font Size of the SubTitle Messages
_colorTitle         = "#4DFFF7"; 				// HTML Color Code of the Title Messages (must start with '#' )
_colorSubText       = "#FFFFFF"; 				// HTML Color Code of the SubTitle Messages (must start with '#' )
_alignTitle         = "right"; 					// Alignment of the Title Message (right or left)
_alignSubText       = "right"; 					// Alignment of the SubTitle Message (right or left)
_fontTitle          = "PuristaSemibold"; 		// or OrbitronMedium for kirilic Font Type Of Title Messages   PuristaSemibold
_fontSubText        = "PuristaLight"; 			// or OrbitronMedium for kirilic Font Type Of SubTitle Messages  


_Delay              = 10;						// Wait in seconds before the toasting starts after player is ingame.
_FadeIn             = 5;						//how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role

// First
_title             	= "Welcome To The End of Exile!";										// Title of the toast
_shorttext         	= "Come Visit us at WEBSITE COMING SOON!";	// Text of the toast
					
// Second
_title2         	= "Our Server provides";
_shorttext2    		= "DMS Missions|Zombies|Custom Map|Custom Loadouts and MORE!";

// Third
_title3            	= "XM8 Tablet Info";
_shorttext3     	= "Press 6 to bring up your XM8!";

// Fourth
_title4         	= "You can spawn a ATV, on us!";
_shorttext4     	= "On your XM8 goto MORE!";

// Fifth
_title5         	= "Terrible Weather!";
_shorttext5     	= "Weather has been terrible the past few days! Hopefully its sunny soon!!";

// Sixth
_title6         	= "If you need Help";
_shorttext6     	= "Please report any bugs/issues/suggestions or consider making a small donation to keep our servers running at our forums:<br/><br/>WEBSITE COMING SOON!";

/***********************************************************************************************************************************************/
/***********************************************************************************************************************************************/
/*                                        /!\ DO NOT EDIT BELOW THIS LINE /!\
/***********************************************************************************************************************************************/
/***********************************************************************************************************************************************/
while {(_displayCount) < (_n)} do {
_ms = [];
for "_i" from 1 to 50 do
	{
		_t = if (_i!=1) then { format["_title%1",_i] } else { "_title" };
		_s = if (_i!=1) then { format["_shorttext%1",_i] } else { "_shorttext" };
		_p = if (_i!=1) then { format["_postext%1",_i] } else { "_postext" };
		if (!isNil _t or !isNil _s) then
    {
        _at = if (!isNil _t) then { call compile _t } else { "" };
        _as = if (!isNil _s) then { call compile _s } else { "" };
        _ap = if (!isNil _p) then { call compile _p } else { _posDefault };
        _ms = _ms + [[_at,_as,_ap]];
    }
};
waitUntil{sleep 1; ExileClientPlayerIsSpawned}; 
sleep _Delay;
if (_IntroMusic) then { playMusic "intro";};
player enableSimulation true;
{
    _t = _x select 0;
    _s = _x select 1;
    _pX = _x select 2 select 0;
    _pY = _x select 2 select 1;
    _pW = _x select 2 select 2;
    _m = format ["<t size='%1' color='%2' align='%3' font='%4'>%5<br /></t>", _sizeTitle, _colorTitle, _alignTitle, _fontTitle, _t];
    _m = _m + format ["<t size='%1' color='%2' align='%3' font='%4'>%5<br /></t>", _sizeSubText, _colorSubText, _alignSubText, _fontSubText, _s];
    _tm = round (count toArray (_t+_s) / 6 / 2) + 3;
    [ _m, [_pX * safeZoneW + safeZoneX, _pW], [_pY * safezoneH + safezoneY, 1 * safezoneH + safezoneY], _tm, _FadeIn ] spawn BIS_fnc_dynamicText;
    sleep (_tm+_FadeIn+4);
	} forEach _ms; 
};






_ms = [];
for "_i" from 1 to 50 do
{
    _t = if (_i!=1) then { format["_title%1",_i] } else { "_title" };
    _s = if (_i!=1) then { format["_shorttext%1",_i] } else { "_shorttext" };
    _p = if (_i!=1) then { format["_postext%1",_i] } else { "_postext" };
    if (!isNil _t or !isNil _s) then
    {
        _at = if (!isNil _t) then { call compile _t } else { "" };
        _as = if (!isNil _s) then { call compile _s } else { "" };
        _ap = if (!isNil _p) then { call compile _p } else { _posDefault };
        _ms = _ms + [[_at,_as,_ap]];
    }
};
waitUntil{sleep 1; ExileClientPlayerIsSpawned}; 
sleep _Delay;
if (_IntroMusic) then { playMusic "intro";};
player enableSimulation true;
{
    _t = _x select 0;
    _s = _x select 1;
    _pX = _x select 2 select 0;
    _pY = _x select 2 select 1;
    _pW = _x select 2 select 2;
    _m = format ["<t size='%1' color='%2' align='%3' font='%4'>%5<br /></t>", _sizeTitle, _colorTitle, _alignTitle, _fontTitle, _t];
    _m = _m + format ["<t size='%1' color='%2' align='%3' font='%4'>%5<br /></t>", _sizeSubText, _colorSubText, _alignSubText, _fontSubText, _s];
    _tm = round (count toArray (_t+_s) / 6 / 2) + 3;
    [ _m, [_pX * safeZoneW + safeZoneX, _pW], [_pY * safezoneH + safezoneY, 1 * safezoneH + safezoneY], _tm, _FadeIn ] spawn BIS_fnc_dynamicText;
    sleep (_tm+_FadeIn+4);
} forEach _ms; 
