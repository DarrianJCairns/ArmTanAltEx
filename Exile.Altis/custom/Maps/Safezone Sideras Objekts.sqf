/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 20 Vehicles
private _vehicles = [
["Land_Pier_Box_F", [23240.6, 24197.8, -20.4299], [0.991188, -0.132464, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [23240.6, 24197.8, 15.3], [0, 1, 0], [0, 0, 1], true],
["Exile_Sign_AircraftCustoms", [23253.9, 24193.3, 3.57256], [-0.996293, -0.0860208, 0], [0, 0, 1], false],
["Exile_Sign_Aircraft", [23254.7, 24198.8, 3.57218], [-0.923012, 0.384772, 0], [0, 0, 1], false],
["Exile_Locker", [23251.1, 24196.5, 2.53286], [-0.98839, 0.151938, 0], [0, 0, 1], true],
["Exile_Sign_WasteDump", [23334, 24193.4, 5.38914], [-0.926825, 0.375495, 0], [0, 0, 1], false],
["OfficeTable_01_old_F", [23355.9, 24199.6, 4.96596], [0.203548, -0.979065, 0], [0, 0, 1], false],
["Land_MapBoard_01_Wall_Altis_F", [23353.7, 24200.3, 6.35994], [-0.671184, 0.741291, 0], [0, 0, 1], false],
["Exile_Locker", [23371.3, 24176.8, 4.32879], [-0.0447828, -0.998997, 0], [0, 0, 1], true],
["Exile_Locker", [23355.3, 24177.4, 4.34447], [-0.0223626, 0.99975, 0], [0, 0, 1], true],
["Exile_Sign_Locker", [23352.5, 24177.3, 5.45715], [0, 1, 0], [0, 0, 1], false],
["Exile_Sign_VehicleCustoms", [23377.6, 24187.6, 9.73896], [-0.0670079, -0.997752, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [23369.1, 24187.7, 9.81057], [-0.0377592, -0.999287, 0], [0, 0, 1], false],
["Land_FoodSacks_01_large_white_idap_F", [23347.4, 24154.3, 4.794], [-0.0229449, -0.999737, 0], [0, 0, 1], false],
["Land_FoodContainer_01_F", [23347, 24155.7, 4.55076], [0, 0.999304, 0.037308], [0.0253248, -0.037296, 0.998983], false],
["Exile_Sign_Food", [23349.3, 24153.7, 4.89369], [-0.02113, -0.999777, 0], [0, 0, 1], false],
["Land_FoodSacks_01_cargo_brown_F", [23351.3, 24154.2, 4.83427], [0, 0.999304, 0.037308], [0.0253248, -0.037296, 0.998983], false],
["Exile_Sign_Hardware", [23350.4, 24170.5, 5.31725], [0, 1, 0], [0, 0, 1], false],
["Land_CampingTable_white_F", [23340.6, 24158.6, 4.56785], [0.774071, -0.633098, 0], [0, 0, 1], false],
["Land_CampingTable_white_F", [23344.5, 24155.7, 4.58252], [-0.813018, 0.582239, 0], [0, 0, 1], false]
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

// 36 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f_exp\commercial\market\clothshelter_02_f.p3d", [23342.2, 24169.7, 5.86216], [0.595955, -0.802976, -0.00820507], [-0.0293222, -0.0319711, 0.999059]],
["a3\structures_f_exp\commercial\market\clothshelter_02_f.p3d", [23348.6, 24172.3, 5.78779], [0.0190441, -0.999819, 0], [0, 0, 1]],
["a3\structures_f_exp\commercial\market\clothshelter_02_f.p3d", [23339, 24162.9, 5.58944], [0.999527, -0.00293043, 0.0306149], [-0.0306514, -0.0133251, 0.999441]],
["a3\structures_f_exp\commercial\market\clothshelter_02_f.p3d", [23342.3, 24156.7, 5.65205], [0.586354, 0.807477, 0.064568], [-0.0585655, -0.037242, 0.997589]],
["a3\structures_f\ind\carservice\carservice_f.p3d", [23373.2, 24185.1, 5.67698], [-8.74228e-008, -1, 0], [0, 0, 1]],
["a3\structures_f_exp\commercial\market\woodenshelter_01_f.p3d", [23252.8, 24196.2, 4.21607], [-0.99154, 0.129801, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_traw2_f.p3d", [23294.5, 24207.1, 1.61465], [1, 0.000638322, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_traw_f.p3d", [23311.8, 24215, 0.240067], [0.835694, 0.549195, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_t72_hull_f.p3d", [23338, 24201.7, 5.08764], [-0.711565, -0.70262, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_car2_f.p3d", [23339.4, 24199.4, 4.2198], [-0.0606615, 0.998158, 0], [0, 0, 1]],
["a3\structures_f\wrecks\wreck_bmp2_f.p3d", [23335.2, 24198.7, 5.19123], [0.969917, -0.24043, 0.0381323], [-0.0373063, 0.00798788, 0.999272]],
["a3\structures_f\wrecks\wreck_car_f.p3d", [23331.7, 24194.2, 4.41484], [0, 0.995037, 0.0995034], [-0.521174, -0.0849212, 0.849215]],
["a3\props_f_orange\furniture\officecabinet_02_f.p3d", [23358.4, 24198.9, 5.28735], [0.749641, 0.661845, 0], [0, 0, 1]],
["a3\structures_f\items\valuables\money_f.p3d", [23355.5, 24199.5, 5.39773], [0, 0.998509, 0.0545853], [0.0159975, -0.0545783, 0.998381]],
["a3\structures_f\items\valuables\money_f.p3d", [23355.7, 24199.7, 5.40227], [0, 0.998509, 0.0545853], [0.0159975, -0.0545783, 0.998381]],
["a3\soft_f\offroad_01\offroad_01_unarmed_f.p3d", [23380.6, 24189.4, 5.55453], [0.0300309, -0.999549, 0], [0, 0, 1]],
["a3\structures_f_exp\commercial\market\clothshelter_02_f.p3d", [23349.3, 24154.7, 5.83689], [0, 0.999304, 0.037308], [0.0253248, -0.037296, 0.998983]],
["a3\structures_f_heli\ind\cargo\cargo10_brick_red_f.p3d", [23347.2, 24175.5, 5.68191], [0, 0.999992, 0.00399666], [-0.0439564, -0.0039928, 0.999025]],
["a3\structures_f\civ\constructions\bricks_v1_f.p3d", [23345.9, 24172.7, 4.29598], [0, 1, 0], [-0.0439564, 0, 0.999033]],
["a3\structures_f\civ\constructions\bricks_v1_f.p3d", [23345.9, 24171.5, 4.23137], [0, 0.99985, -0.0173316], [-0.0266571, 0.0173255, 0.999494]],
["a3\structures_f\civ\constructions\ironpipes_f.p3d", [23350.3, 24173.4, 5.05852], [-0.998178, -0.0603457, 0], [0, 0, 1]],
["a3\static_f\mortar_01\mortar_01_f.p3d", [23340.3, 24168.8, 5.0291], [-0.730554, 0.682855, 0], [0, 0, 1]],
["a3\air_f_orange\uav_06\uav_06_f.p3d", [23343.7, 24171.2, 4.55199], [0, 0.99985, -0.0173316], [0.0199975, 0.0173281, 0.99965]],
["a3\characters_f\opfor\headgear_o_helmet_ballistic_spec.p3d", [23345, 24156.2, 4.41734], [0.496364, -0.822126, -0.278804], [0.0323295, -0.303432, 0.952305]],
["a3\characters_f_orange\headgear\h_construction_headset_f.p3d", [23344.6, 24156.1, 4.44332], [0.203174, -0.852933, -0.480859], [0.0497644, -0.481472, 0.875047]],
["a3\characters_f_jets\vests\v_deckcrew_f.p3d", [23344.5, 24155.4, 4.98468], [0.614682, -0.787892, 0.0373057], [0.0232664, 0.065386, 0.997589]],
["a3\characters_f_orange\vests\v_eod_vest_f.p3d", [23343.9, 24155.5, 5.17239], [0.108907, -0.018148, -0.993886], [0.0541549, -0.99824, 0.0241616]],
["a3\weapons_f\ammoboxes\bags\backpack_bergen_f.p3d", [23340, 24158, 4.94601], [0.897211, 0.4414, 0.0133358], [-0.0377992, 0.0466745, 0.998195]],
["a3\weapons_f\ammoboxes\bags\backpack_tortila.p3d", [23340.5, 24158.7, 4.93856], [0.949115, 0.314647, 0.0133359], [-0.0310661, 0.0514021, 0.998195]],
["a3\weapons_f\ammoboxes\bags\backpack_small.p3d", [23341, 24159, 4.90156], [0.857943, 0.513571, 0.013336], [-0.0415037, 0.0434134, 0.998195]],
["a3\weapons_f\ammoboxes\ammobox_f.p3d", [23339.1, 24160.6, 4.22915], [0, 0.999872, -0.0159977], [-0.0293202, 0.0159908, 0.999442]],
["a3\weapons_f_exp\rifles\ak12\ak12_f.p3d", [23338.5, 24161.1, 5.06781], [0.996348, 0.0843422, 0.0133348], [-0.0182045, 0.0572351, 0.998195]],
["extendedbase\models\walls\metalwall\metalwall.p3d", [23338.2, 24163.4, 2.95261], [0.997223, 0.0744787, 0], [0, 0, 1]],
["a3\weapons_f_exp\rifles\ctars\ctars_f.p3d", [23338.4, 24162.3, 5.18217], [-0.994792, -0.101054, 0.0133252], [0.0191522, -0.0569135, 0.998195]],
["a3\weapons_f\rifles\khaybar\khaybarc_f.p3d", [23338.3, 24163.5, 5.12123], [0.998463, 0.0538032, 0.0133307], [-0.0149544, 0.0298901, 0.999441]],
["a3\weapons_f\machineguns\m200\m200_f.p3d", [23338.3, 24164.4, 5.08477], [0.997048, 0.0756124, 0.0133306], [-0.015604, 0.0295562, 0.999441]]
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