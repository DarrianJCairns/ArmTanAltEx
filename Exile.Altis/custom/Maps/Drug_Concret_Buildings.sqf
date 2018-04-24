private _objects = [
	["Land_Cargo_Tower_V2_F",[5429.37,17910.5,76.5823],[[0,0.999968,0.00799344],[0.0133317,-0.00799273,0.999879]],[true,false]],
	["Land_Cargo_Tower_V2_F",[5359.32,17923.1,78.1448],[[-0.239544,-0.970765,-0.0152738],[0.134759,-0.0488242,0.989675]],[true,false]],
	["Land_Cargo_Tower_V2_F",[5400.74,17875,76.1021],[[0.999211,0.0372954,-0.0136212],[0.0133317,0.00800019,0.999879]],[true,false]],
	["Land_HBarrierTower_F",[5432.72,17920.2,76.7182],[[-0.994406,0.104748,0.0136207],[0.00933489,-0.0412975,0.999103]],[true,false]],
	["Land_HBarrierTower_F",[5433.56,17931.4,77.1092],[[-0.999823,-0.00284661,0.0186094],[0.018666,-0.0213263,0.999598]],[true,false]],
	["Exile_Construction_HBarrier5_Preview",[5361.75,17914,77.2046],[[-0.984774,-0.141487,0.101002],[0.108686,-0.0476608,0.992933]],[true,false]],
	["Exile_Construction_HBarrier5_Preview",[5364.24,17929.8,77.3149],[[-0.896434,0.441222,0.0415905],[0.0279894,-0.0372933,0.998912]],[true,false]],
	["Exile_Construction_HBarrier5_Preview",[5367.95,17934.5,77.4416],[[-0.601341,0.798993,0],[0,0,1]],[true,false]],
	["Exile_Construction_HBarrier5_Preview",[5395.02,17936,77.0547],[[0,0.999943,-0.0106641],[0.0359766,0.0106572,0.999296]],[true,false]],
	["Exile_Construction_HBarrier5_Preview",[5406.7,17937,77.1464],[[0,0.999743,-0.0226603],[-0.00265204,0.0226602,0.99974]],[true,false]],
	["Exile_Construction_HBarrier5_Preview",[5415.32,17938,77.0476],[[0,0.999304,-0.0373063],[0.0226603,0.0372967,0.999047]],[true,false]]

];
{
	private _object = (_x select 0) createVehicle [0,0,0];
	_object setPosASL (_x select 1);
	_object setVectorDirAndUp (_x select 2);
	_object enableSimulationGlobal ((_x select 3) select 0);
	_object allowDamage ((_x select 3) select 1);
} forEach _objects;

