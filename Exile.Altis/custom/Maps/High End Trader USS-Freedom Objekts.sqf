
ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 47 Vehicles
private _vehicles = [

["Land_LightHouse_F", [5992.15, 22576.4, 51.976], [0, 1, 0], [0, 0, 1], true],
["Land_Pier_Box_F", [5930.78, 22725.6, 0.935408], [-0.926783, -0.375596, 0], [0, 0, 1], true],
["Land_Pier_Box_F", [5911.44, 22717.8, 0.914463], [0.927678, 0.373381, 0], [0, 0, 1], true],
["Land_nav_pier_m_F", [5996.33, 22599.4, 15.683], [0.871272, 0.490779, 0.00461617], [-0.0588119, 0.095061, 0.993733], true],
["Land_Pier_wall_F", [5975.94, 22556.3, 37.1167], [-0.809677, 0.586875, 0], [0, 0, 1], true],
["Land_NetFence_02_m_8m_F", [5938.62, 22731.2, 24.5482], [0.924699, 0.3807, 0], [0, 0, 1], true],
["Land_NetFence_02_m_8m_F", [5941.64, 22723.8, 24.5482], [0.927341, 0.374217, 0], [0, 0, 1], true],
["Land_NetFence_02_m_8m_F", [5939.59, 22718.5, 24.5482], [0.377322, -0.926082, 0], [0, 0, 1], true],
["Land_NetFence_02_m_8m_F", [5904.93, 22708.8, 24.5272], [0.927341, 0.374217, 0], [0, 0, 1], true],
["Land_NetFence_02_m_8m_F", [5909.95, 22706.7, 24.5272], [-0.390067, 0.920787, 0], [0, 0, 1], true],
["Land_NetFence_02_m_8m_F", [5901.96, 22716.2, 24.5272], [0.927341, 0.374217, 0], [0, 0, 1], true],
["Land_Pier_wall_F", [6037.24, 22583.1, 37.1679], [0.560667, 0.828041, 0], [0, 0, 1], true],
["Land_Pier_F", [6011.04, 22576.9, 36.9937], [0.528704, -0.848807, 0], [0, 0, 1], true],
["Land_Pier_wall_F", [6061.1, 22552.4, 37.1703], [0.933599, 0.35832, 0], [0, 0, 1], true],
["Land_nav_pier_m_F", [5976.8, 22634.1, 11.2301], [0.871272, 0.490779, 0.00461617], [-0.0588119, 0.095061, 0.993733], true],
["Land_nav_pier_m_F", [5957.32, 22668.7, 6.76729], [0.871272, 0.490779, 0.00461617], [-0.0588119, 0.095061, 0.993733], true],
["Land_nav_pier_m_F", [5937.86, 22703.3, 2.28824], [0.871272, 0.490779, 0.00461617], [-0.0588119, 0.095061, 0.993733], true],
["Land_NetFence_02_m_8m_F", [5917.28, 22709.8, 24.5272], [-0.390067, 0.920787, 0], [0, 0, 1], true],
["Land_NetFence_02_m_4m_F", [5922.86, 22712, 24.8074], [-0.378006, 0.925803, 0], [0, 0, 1], true],
["Exile_Locker", [5792.01, 22700.6, 23.9609], [-0.928239, 0.371985, 0], [0, 0, 1], true],
["Exile_Sign_Locker", [5794.7, 22703.6, 24.897], [0.375956, -0.926638, 0], [0, 0, 1], true],
["Exile_Sign_Office", [6000.36, 22568.1, 42.6505], [-0.741732, -0.670696, 0], [0, 0, 1], true],
["OfficeTable_01_new_F", [5996.2, 22565, 42.0885], [-0.557998, 0.829843, 0], [0, 0, 1], true],
["MapBoard_altis_F_Preview", [5993.7, 22562, 42.5835], [-0.206852, -0.978372, 0], [0, 0, 1], true],
["Land_OfficeCabinet_02_F", [5997.29, 22570.3, 42.3576], [0.758651, 0.651497, 0], [0, 0, 1], true],
["Land_OfficeCabinet_02_F", [5996.78, 22570.9, 42.359], [0.801764, 0.597641, 0], [0, 0, 1], true],
["Land_CampingTable_small_F", [6026.52, 22571.1, 43.1196], [0.874977, -0.484164, 0], [0, 0, 1], true],
["Land_FoodSacks_01_large_brown_F", [6024.15, 22569.4, 42.7517], [-0.824729, -0.565528, 0], [0, 0, 1], true],
["Land_FoodSacks_01_small_brown_idap_F", [6025.53, 22568.7, 42.9316], [0, 1, 0], [0.000690285, 0, 1], true],
["Land_WaterBottle_01_stack_F", [6030.81, 22570.2, 43.3414], [-0.896485, 0.443074, 0], [0, 0, 1], true],
["Land_WaterBottle_01_pack_F", [6026.9, 22571.3, 43.6556], [0.913812, -0.406139, 0], [0, 0, 1], true],
["Exile_Sign_Food", [6026.7, 22566.7, 43.5952], [0.429377, 0.903125, 0], [0, 0, 1], true],
["Exile_Sign_Armory", [6030.92, 22542.9, 45.26], [0.875994, 0.482321, 0], [0, 0, 1], true],
["Exile_Sign_Equipment", [6025.79, 22555.5, 44.6129], [0.840711, 0.541484, 0], [0, 0, 1], true],
["Exile_Sign_TraderCity", [6031.34, 22522.7, 48.571], [-0.788249, 0.615356, 0], [0, 0, 1], true],
["Exile_Sign_SpecialOperations", [6018.43, 22539.1, 46.0864], [-0.94128, -0.337628, 0], [0, 0, 1], true],
["Exile_Locker", [6024.76, 22567.8, 42.4905], [0.454439, 0.890778, 0], [0, 0, 1], true],
["Land_CampingTable_white_F", [6030.94, 22556.2, 43.7208], [-0.262221, 0.963053, -0.0613901], [0.0399682, 0.0744001, 0.996427], false],
["Land_CampingTable_white_F", [6029.07, 22555.7, 43.8361], [-0.233945, 0.970303, -0.0615008], [0.0466162, 0.0743778, 0.99614], false],
["Land_MedicalTent_01_white_generic_open_F", [5994.77, 22566.3, 43.0416], [0.780317, 0.625383, -0.00097657], [-7.42422e-005, 0.00165419, 0.999999], true],
["Land_HelipadEmpty_F", [5767.79, 22720.4, 63.2], [0, 1, 0], [0, 0, 1], true]
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

// 19 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["exile_assets\model\exile_item_emre.p3d", [6026.57, 22570.6, 43.5261], [0, 0.990522, -0.137352], [0.02266, 0.137317, 0.990268]],
["exile_assets\model\exile_item_emre.p3d", [6026.38, 22570.7, 43.5261], [0.0025094, 0.990522, -0.13733], [0.00472717, 0.137317, 0.990516]],
["a3\weapons_f\ammoboxes\wpnsbox_long_f.p3d", [6014.96, 22540.1, 45.7021], [0, 0.974584, -0.224022], [0.317185, 0.212455, 0.92426]],
["a3\weapons_f\ammoboxes\wpnsbox_long_f.p3d", [6014.88, 22540.7, 45.5571], [0, 0.974584, -0.224022], [0.317185, 0.212455, 0.92426]],
["a3\weapons_f\ammoboxes\wpnsbox_long_f.p3d", [6013.25, 22540.2, 46.1247], [0, 1, 0], [0.253292, 0, 0.96739]],
["a3\static_f_gamma\aa_01\aa_01.p3d", [6014.6, 22545.4, 45.5394], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_f.p3d", [6033.64, 22544, 44.2966], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_f.p3d", [6034.3, 22544.6, 44.3134], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_f.p3d", [6034, 22544.3, 44.5822], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\mil\scrapyard\pallet_milboxes_f.p3d", [6038.92, 22542.1, 44.5223], [0, 1, 0], [0, 0, 1]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [6036.12, 22556.8, 43.8054], [0, 1, 0], [0, 0, 1]],
["a3\characters_f_orange\vests\v_eod_vest_f.p3d", [6028.43, 22555.5, 44.4614], [0, -0.00990224, -0.999951], [0.975373, 0.220553, -0.00218407]],
["a3\characters_f\opfor\equip_o_vest_gl.p3d", [6029.5, 22555.9, 44.1468], [0, 1, 0], [0, 0, 1]],
["a3\characters_f_beta\indep\headgear_ia_helmet_crew.p3d", [6030.6, 22556.1, 43.5491], [0, 0.945357, -0.326037], [0, 0.326037, 0.945357]],
["a3\characters_f\common\headgear_helmet_heli_shield.p3d", [6030.22, 22556, 43.572], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\bags\backpack_tortila.p3d", [6031.44, 22556.3, 44.0979], [0.996308, -0.0427626, -0.0744403], [0.0722164, -0.0513905, 0.996064]],
["a3\props_f_exp\military\camps\irmaskingcover_01_f.p3d", [6035.38, 22554.6, 45.3539], [-0.375546, 0.923808, -0.0744614], [0.00900048, 0.0839736, 0.996427]],
["a3\props_f_exp\military\camps\irmaskingcover_01_f.p3d", [6039.91, 22544.6, 45.2775], [-0.539344, 0.833982, -0.116542], [0.0493382, 0.169455, 0.984302]],
["a3\props_f_exp\military\camps\irmaskingcover_01_f.p3d", [6009.91, 22542.6, 47.6159], [0.0115502, 0.992399, -0.122517], [0.103774, 0.120674, 0.987253]]
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