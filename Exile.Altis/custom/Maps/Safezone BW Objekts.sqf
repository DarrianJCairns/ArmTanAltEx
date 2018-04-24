/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 68 Vehicles
private _vehicles = [
["Exile_Sign_WasteDump", [22172.4, 14535.2, 4.29561], [-0.98406, -0.177836, 0], [0, 0, 1], true],
["Land_ClothShelter_02_F", [22172, 14502.6, 4.62268], [-0.142458, 0.989801, 0], [0, 0, 1], true],
["Land_ClothShelter_02_F", [22169.9, 14520.2, 4.78982], [0.0919013, -0.995768, 0], [0, 0, 1], true],
["Land_ClothShelter_02_F", [22165.4, 14502.6, 4.6649], [0.139987, 0.990153, 0], [0, 0, 1], true],
["Land_ClothShelter_02_F", [22163.1, 14518, 4.82761], [0.45199, -0.892023, 0], [0, 0, 1], true],
["Land_HBarrierWall_corridor_F", [22142, 14529.5, 4.40554], [0.997365, 0.0725484, 0], [0, 0, 1], true],
["Land_Cargo_House_V3_F", [22117.5, 14520.1, 4.47979], [-0.0788126, 0.996889, 0], [0, 0, 1], true],
["Land_Cargo_Patrol_V3_F", [22148, 14525.6, 8.49172], [0.0903497, -0.99591, 0], [0, 0, 1], true],
["Land_Cargo_Patrol_V3_F", [22136, 14525, 8.61727], [0.0903497, -0.99591, 0], [0, 0, 1], true],
["Land_HBarrierWall_corridor_F", [22155.9, 14509.6, 4.03058], [-0.0780758, 0.996947, 0], [0, 0, 1], true],
["Land_Cargo_Patrol_V3_F", [22151.4, 14515.3, 8.35189], [-0.995999, -0.0893667, 0], [0, 0, 1], true],
["Land_Cargo_Patrol_V3_F", [22151.9, 14502.5, 8.10096], [-0.997267, -0.0738815, 0], [0, 0, 1], true],
["Land_Cargo_House_V3_F", [22124.3, 14520.9, 4.46866], [-0.0788126, 0.996889, 0], [0, 0, 1], true],
["Land_Cargo_House_V3_F", [22117.8, 14511, 4.47796], [0.0695158, -0.997581, 0], [0, 0, 1], true],
["Land_Cargo_House_V3_F", [22125.4, 14511.4, 4.47849], [0.0551051, -0.998481, 0], [0, 0, 1], true],
["Land_Cargo_HQ_V3_F", [22123.7, 14497.3, 7.65623], [0.0141329, -0.9999, 0], [0, 0, 1], true],
["Land_TentHangar_V1_F", [22138.8, 14404, 7.71364], [-0.0932992, 0.995638, 0], [0, 0, 1], true],
["Land_TentHangar_V1_F", [22160.5, 14406.1, 7.4343], [-0.0883036, 0.996094, 0], [0, 0, 1], true],
["Land_HelipadCircle_F", [22148.8, 14441.5, 3.6199], [-0.137978, 0.990435, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [22148.9, 14441.3, 3.61523], [-0.137978, 0.990435, 0], [0, 0, 1], true],
["CamoNet_OPFOR_big_F", [22125.1, 14456.5, 6.04213], [-0.977703, -0.209991, 0], [0, 0, 1], true],
["Land_Pipes_large_F", [22165.8, 14494.4, 3.09697], [-0.701635, -0.712536, 0], [0, 0, 1], true],
["Land_CinderBlocks_01_F", [22174.4, 14494.8, 3.92681], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Land_ConcretePipe_F", [22173.1, 14480.8, 3.60151], [-0.49958, 0.866268, 0], [0, 0, 1], true],
["Land_Pipes_large_F", [22165.2, 14493.7, 3.09616], [-0.701635, -0.712536, 0], [0, 0, 1], true],
["Land_Pipes_large_F", [22164.6, 14492.8, 3.09464], [-0.701635, -0.712536, 0], [0, 0, 1], true],
["Land_CinderBlocks_01_F", [22174.9, 14493.3, 3.92359], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Land_CinderBlocks_01_F", [22175.2, 14491.7, 3.92064], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Land_IronPipes_F", [22174.7, 14484.7, 3.76225], [0.708002, 0.70621, 0], [0, 0, 1], true],
["Land_FieldToilet_F", [22162.2, 14496, 4.32595], [-0.0369334, 0.999318, 0], [0, 0, 1], true],
["Land_Bricks_V1_F", [22166.3, 14489.9, 3.07688], [0, 1, 0], [-0.0093285, 0, 0.999956], true],
["Land_Bricks_V1_F", [22164.9, 14489.8, 3.07872], [0, 1, 0], [-0.0093285, 0, 0.999956], true],
["Land_Bricks_V1_F", [22166.2, 14488.7, 3.07546], [0, 1, 0], [-0.0093285, 0, 0.999956], true],
["Land_Bricks_V1_F", [22164.9, 14488.6, 3.07712], [0, 1, 0], [-0.0093285, 0, 0.999956], true],
["Land_GasTank_02_F", [22168.9, 14495.6, 3.95534], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Land_GasTank_02_F", [22169.4, 14495.5, 3.95404], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Land_GasTank_02_F", [22169.7, 14495.6, 3.95317], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Land_GasTank_02_F", [22170.1, 14495.6, 3.95211], [0, 0.999999, 0.00133688], [0.00265199, -0.00133687, 0.999996], true],
["Exile_Construction_HBarrier5_Preview", [22118.5, 14439.8, 4.94347], [-0.122931, 0.992415, 0], [0, 0, 1], true],
["Land_WoodenShelter_01_F", [22147.7, 14417.6, 4.61027], [0.18959, -0.981863, 0], [0, 0, 1], true],
["Exile_Locker", [22159, 14508.3, 3.24235], [-0.992221, -0.12449, 0], [0, 0, 1], true],
["Exile_Locker", [22148, 14416.3, 3.5111], [0.138642, -0.990343, 0], [0, 0, 1], true],
["Exile_Locker", [22130.3, 14531.5, 4.17983], [0.125176, -0.992135, 0], [0, 0, 1], true],
["Exile_Sign_AircraftCustoms", [22150.4, 14419.4, 4.42338], [0.321, -0.947079, 0], [0, 0, 1], true],
["Exile_Sign_Aircraft", [22144.4, 14418.4, 4.66034], [-0.0100814, -0.999949, 0], [0, 0, 1], true],
["OfficeTable_01_old_F", [22118.4, 14494.4, 4.80491], [0.55991, 0.828553, 0], [0, 0, 1], true],
["MapBoard_seismic_F", [22120.9, 14493.8, 5.35138], [0.371062, -0.928608, 0], [0, 0, 1], true],
["Exile_Locker", [22123.2, 14503.6, 4.50292], [0, 1, 0], [0, 0, 1], true],
["Land_Money_F", [22118.7, 14494.1, 5.24507], [0, 1, 0], [0.00265199, 0, 0.999996], true],
["Land_CarService_F", [22130.2, 14539.9, 5.43733], [0.117364, -0.993089, 0], [0, 0, 1], true],
["Exile_Sign_VehicleCustoms", [22134.2, 14543, 9.2987], [0.14398, -0.989581, 0], [0, 0, 1], true],
["Exile_Sign_Vehicles", [22126.3, 14542.2, 9.4412], [0.111437, -0.993771, 0], [0, 0, 1], true],
["Land_WaterTank_03_F", [22161.2, 14518, 4.12093], [0, 1, 0], [0, 0, 1], true],
["Land_WaterCooler_01_old_F", [22165.5, 14519.1, 4.03218], [0, 0.999911, 0.0133313], [0.00665928, -0.013331, 0.999889], true],
["Land_CampingTable_white_F", [22168.3, 14521.4, 3.706], [0.0891952, -0.996014, 0], [0, 0, 1], true],
["Land_CampingTable_white_F", [22174.3, 14503.4, 3.5045], [-0.988993, -0.147959, 0], [0, 0, 1], true],
["Land_CampingTable_white_F", [22169.5, 14502.4, 3.52622], [-0.988993, -0.147959, 0], [0, 0, 1], true],
["Land_CampingTable_white_F", [22167.8, 14502.2, 3.53966], [-0.986394, 0.164399, 0], [0, 0, 1], true],
["Land_CampingTable_white_F", [22163, 14503.4, 3.57631], [-0.986394, 0.164399, 0], [0, 0, 1], true],
["Exile_Sign_Equipment", [22172.1, 14500.6, 3.60927], [0.0846784, -0.996408, 0], [0, 0, 1], true],
["Exile_Sign_Armory", [22165, 14500.5, 3.74163], [-0.0395956, -0.999216, 0], [0, 0, 1], true],
["Exile_Sign_Food", [22162.2, 14516.2, 4.34336], [-0.770375, 0.637591, 0], [0, 0, 1], true],
["Exile_Sign_SpecialOperations", [22171.1, 14522, 3.74641], [-0.0814487, 0.996678, 0], [0, 0, 1], true],
["Exile_Sign_Hardware", [22164.2, 14489.2, 4.12779], [0.99991, 0.0133999, 0], [0, 0, 1], true],
["Exile_Sign_Office", [22129.2, 14496.5, 7.85899], [-0.999674, -0.0255223, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V3_F", [22176.5, 14409.5, 16.2615], [0.995758, 0.0920113, 0], [0, 0, 1], true],
["Land_PartyTent_01_F", [22171.6, 14492.1, 5.40878], [-0.0941566, 0.995557, 0], [0, 0, 1], true],
["CamoNet_OPFOR_big_F", [22124.9, 14480.3, 5.79539], [-0.903733, 0.428098, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 75 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\air_f_gamma\plane_fighter_03\plane_fighter_03_wreck_f.p3d", [22164.6, 14527.5, 3.24815], [-0.773618, 0.633652, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_brdm2_f.p3d", [22162.5, 14534.8, 3.9372], [-0.355028, -0.790136, -0.49964], [0, -0.534456, 0.845196]],
["a3\structures_f\wrecks\wreck_bmp2_f.p3d", [22166.1, 14544.9, 4.19816], [0.96943, 0.245368, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_car3_f.p3d", [22165.6, 14531.6, 4.08044], [0.674009, -0.738723, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_heli_attack_02_f.p3d", [22159, 14537.5, 6.20048], [0, 0.999999, -0.00133721], [0.0133313, 0.00133709, 0.99991]],
["a3\structures_f\wrecks\wreck_slammer_f.p3d", [22171.9, 14529.1, 4.73228], [0, 0.999999, 0.00133688], [0.00532655, -0.00133686, 0.999985]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22183.1, 14403.5, 4.09436], [0.878299, -0.478112, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22184.4, 14409.2, 4.11636], [-0.997732, -0.0673137, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22183.9, 14414.9, 4.13848], [-0.995202, -0.0978461, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22183.4, 14420.6, 4.17565], [-0.997566, -0.0697223, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22183.1, 14426.3, 4.18797], [-0.996127, -0.0879209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22182.6, 14432, 4.11477], [-0.997732, -0.0673137, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22182.2, 14437.7, 4.13689], [-0.995202, -0.0978461, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22181.7, 14443.5, 4.17406], [-0.997566, -0.0697223, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22181.4, 14449.2, 4.18638], [-0.996127, -0.0879209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22180.9, 14455, 4.0218], [-0.997732, -0.0673137, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22180.4, 14460.7, 4.04393], [-0.995202, -0.0978461, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22179.9, 14466.4, 4.08109], [-0.997566, -0.0697223, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22179.6, 14472.1, 4.09341], [-0.996127, -0.0879209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22179, 14477.9, 3.77621], [-0.995433, -0.0954674, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22178.3, 14483.5, 3.79834], [-0.992041, -0.125916, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22177.7, 14489.2, 3.8355], [-0.995199, -0.0978703, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22177.2, 14495, 3.80795], [-0.993247, -0.116021, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22179.9, 14398.7, 4.07193], [-0.771738, 0.635941, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22175.6, 14394.8, 4.04615], [-0.56465, 0.825331, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22170.8, 14391.3, 4.02109], [-0.601012, 0.79924, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22165.9, 14388.1, 3.98955], [-0.583839, 0.811869, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22160.6, 14385.6, 3.99931], [-0.215242, 0.976561, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22154.9, 14384.1, 4.00693], [-0.23908, 0.971, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22149.1, 14383.2, 4.06279], [-0.0922656, 0.995734, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22143.3, 14382.9, 4.11531], [0.0606258, 0.998161, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22137.6, 14383.6, 4.18606], [0.201162, 0.979558, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22132.1, 14385.1, 4.26379], [0.42143, 0.906861, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22127.1, 14388, 4.31737], [0.579217, 0.815173, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22122.8, 14391.9, 4.37104], [0.780363, 0.625327, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22120.5, 14397.3, 4.39527], [0.982403, 0.186774, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22119.6, 14403.1, 4.42549], [0.992038, 0.125942, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22118.5, 14409.1, 4.87237], [-0.997732, -0.0673137, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22118.1, 14414.8, 4.89449], [-0.995202, -0.0978461, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22117.6, 14420.5, 4.93166], [-0.997566, -0.0697223, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22117.3, 14426.2, 4.94398], [-0.996127, -0.0879209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22115.9, 14443.4, 4.93007], [-0.997566, -0.0697223, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22115.5, 14449.1, 4.94239], [-0.996127, -0.0879209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22115, 14454.9, 4.77781], [-0.997732, -0.0673137, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22114.5, 14460.6, 4.79993], [-0.995202, -0.0978461, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22114.1, 14466.3, 4.8371], [-0.997566, -0.0697223, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22113.7, 14472, 4.84942], [-0.996127, -0.0879209, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22113.5, 14477.8, 4.63068], [0.996371, 0.0851171, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22113, 14483.5, 4.53687], [0.996473, 0.083919, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22112.8, 14489.2, 4.54522], [0.999224, 0.0393989, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22112.7, 14495, 4.54344], [0.998678, 0.0514025, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22112.5, 14500.8, 4.52611], [0.996473, 0.083919, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22112.3, 14506.5, 4.53446], [0.999224, 0.0393989, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22112.1, 14512.2, 4.53268], [0.998678, 0.0514025, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22112.1, 14517.9, 4.52006], [0.996473, 0.083919, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22111.9, 14523.6, 4.52841], [0.999224, 0.0393989, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22113.9, 14527.5, 4.51536], [0.107535, -0.994201, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22119.6, 14528, 4.48632], [0.112386, -0.993665, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22125.3, 14528.4, 4.49467], [0.0679631, -0.997688, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22131, 14528.7, 4.49289], [0.0799461, -0.996799, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22136.7, 14529.2, 4.37204], [0.102368, -0.994747, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22147.1, 14529.8, 4.33279], [0.069898, -0.997554, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22152.8, 14530, 4.20157], [0.069898, -0.997554, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22174.8, 14498.5, 3.82165], [-0.132612, 0.991168, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22169.2, 14497.9, 3.81421], [0.0296484, -0.99956, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22163.5, 14497.9, 3.85138], [0.00142875, -0.999999, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22155.5, 14514.9, 4.10322], [-0.996957, -0.0779495, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22155.2, 14520.6, 4.14038], [-0.99876, -0.0497841, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22155, 14526.4, 4.11283], [-0.997685, -0.0680074, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22156.3, 14504.4, 3.92334], [-0.995199, -0.0978703, 0], [0, 0, 1]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [22158.9, 14499.8, 3.87533], [0.619275, 0.785174, 0], [0, 0, 1]],
["a3\structures_f\households\addons\i_garage_v2_f.p3d", [22151.6, 14539, 4.21077], [0.999701, 0.0241209, -0.00398313], [0.00420647, -0.00921545, 0.999949]],
["a3\supplies_f_heli\cargonets\cargonet_01_box_f.p3d", [22163.3, 14518.7, 3.94905], [-0.47401, 0.880483, 0.00799352], [0.00965706, -0.00387918, 0.999946]],
["a3\soft_f_beta\mrap_03\mrap_03_unarmed_f.p3d", [22167.8, 14539.9, 4.98857], [0.849737, 0.527205, -0.00134018], [0.00816033, -0.0106108, 0.99991]],
["a3\soft_f\mrap_01\mrap_01_unarmed_f.p3d", [22135.7, 14549.8, 5.69549], [-0.0529897, -0.998488, -0.014651], [-0.00476406, -0.0144187, 0.999885]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;