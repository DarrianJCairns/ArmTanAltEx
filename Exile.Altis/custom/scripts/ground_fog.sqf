// Ground Fog - TorturedChunk - Kaysi - mmmyum @ OpenDayZ.net
//Modify By CNSU   
// Modified by [TAG] dekela - fixed autorun stutter, trimed code                                                                                                                                                                                                                                                                                                                                                                             

private ["_obj","_pos","_fog1","_fog2","_fog3"];
while {true} do 
{
    if(daytime < 9 || daytime > 20) then 
    {
        _obj = player;
        _pos = position _obj;
        _fog1 = "#particlesource" createVehicleLocal _pos;
        _fog2 = "#particlesource" createVehicleLocal _pos;
        _fog3 = "#particlesource" createVehicleLocal _pos;
        {
        _x setParticleParams [
        ["\A3\Data_F\ParticleEffects\Universal\universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10,
            [0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,
            [7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj
        ];
        _x setParticleRandom [3, [100, 200, 0.075], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
        _x setParticleCircle [0.001, [0, 0, -0.12]];
        _x setDropInterval 0.01;
        } forEach [_fog1, _fog2, _fog3];
        uiSleep 120;
        {deleteVehicle _x } forEach [_fog1, _fog2, _fog3];
    };
        uiSleep 1;
};