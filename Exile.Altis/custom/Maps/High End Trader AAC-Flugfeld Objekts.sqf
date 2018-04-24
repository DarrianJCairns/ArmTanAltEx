/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 19 Vehicles
private _vehicles = [
["Land_Cargo_Tower_V3_F", [11564.9, 11935.5, 36.6184], [-0.467251, -0.884125, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V3_F", [11595, 11984.4, 36.487], [-0.56061, -0.82808, 0], [0, 0, 1], true],
["Exile_Sign_TraderCity", [11645.4, 12022, 24.604], [-0.694908, -0.719098, 0], [0, 0, 1], true],
["Land_MedicalTent_01_white_generic_open_F", [11611.6, 12024.5, 24.6123], [0, 0.999992, -0.00399675], [0.00265199, 0.00399673, 0.999988], true],
["Exile_Sign_WasteDump", [11640.9, 12013.7, 24.2304], [-0.672348, 0.740236, 0], [0, 0, 1], true],
["Exile_Sign_Armory", [11576.3, 11973.4, 24.9603], [0.506062, 0.862497, 0], [0, 0, 1], true],
["Exile_Sign_Equipment", [11554.5, 11986.5, 24.9678], [-0.368058, 0.929803, 0], [0, 0, 1], true],
["Exile_Sign_Food", [11546.9, 11978.2, 24.9704], [-0.852956, 0.521982, 0], [0, 0, 1], true],
["Exile_Sign_SpecialOperations", [11564.6, 11953.4, 24.9643], [-0.40628, -0.913748, 0], [0, 0, 1], true],
["Exile_Sign_Hardware", [11614.4, 12018.6, 24.3004], [-0.0239333, 0.999714, 0], [0, 0, 1], true],
["Exile_Sign_Office", [11609.6, 12018.7, 24.324], [0, 1, 0], [0, 0, 1], true],
["Land_Mil_WallBig_4m_F", [11578.9, 11948.4, 25.389], [0, 0.999996, -0.00265204], [0.00133688, 0.00265204, 0.999996], true],
["Land_Mil_WallBig_4m_F", [11582.4, 11949, 25.3858], [-0.386727, 0.922191, -0.0024457], [0, 0.00265204, 0.999996], true],
["Land_Mil_WallBig_4m_F", [11585.2, 11951.2, 25.378], [-0.836836, 0.547453, -0.00106929], [0.00133688, 0.00399674, 0.999991], true],
["Land_Mil_WallBig_4m_F", [11587.6, 11962.7, 25.3391], [-0.886225, -0.463249, 0.00241334], [0.00133688, 0.00265204, 0.999996], true],
["Land_Mil_WallBig_4m_F", [11588.8, 11959.2, 25.3471], [-0.983578, -0.180475, 0.00179356], [0.00133688, 0.00265204, 0.999996], true],
["Land_Mil_WallBig_4m_F", [11588.2, 11955.8, 25.3568], [-0.84729, 0.531131, -0.000275862], [0.00133688, 0.00265204, 0.999996], true],
["Exile_Locker", [11587.6, 11955, 23.6598], [0.854137, -0.520048, 0.000237027], [0.00133721, 0.00265204, 0.999996], true],
["Exile_Sign_Locker", [11588.3, 11957.6, 24.693], [1, -4.37114e-008, 0], [0, 0, 1], true]
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

// 17 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11551.8, 11951.7, 24.934], [0.900185, -0.435505, -0.00123232], [0.00265199, 0.00265203, 0.999993]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11548.2, 11943.7, 24.9671], [0.900181, -0.435509, -0.00244277], [0.00399666, 0.00265202, 0.999988]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11547, 11935.2, 25.0236], [0.992763, 0.117794, -0.0233833], [0.02133, 0.0186617, 0.999598]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11548.8, 11926.5, 25.108], [0.973351, 0.228112, -0.0235025], [0.0213271, 0.0119973, 0.999701]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11551.2, 11917.8, 25.1443], [-0.947532, -0.318373, 0.028662], [0.0266547, 0.0106603, 0.999588]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11555.5, 11910.2, 24.9181], [0.811597, 0.583218, -0.0341508], [0.0439577, -0.00267182, 0.99903]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11561.6, 11904.1, 24.586], [0.634595, 0.772845, 0.000590369], [0.0266571, -0.022652, 0.999388]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11568.6, 11898.7, 24.4194], [0.615732, 0.787929, 0.00652734], [0.00133688, -0.00932852, 0.999956]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11575.8, 11893.8, 24.3784], [0.548001, 0.836477, 0.00108037], [0, -0.00129158, 0.999999]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11562.7, 11990.6, 24.8588], [0.819425, -0.573184, -0.00140665], [0.00265199, 0.00133721, 0.999996]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11594.6, 12036.8, 24.5064], [0.511367, -0.85933, -0.00749947], [0.0146639, 0, 0.999892]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11602.9, 12039.4, 24.4129], [-0.0217945, 0.999731, -0.00788291], [0.00532655, 0.00800078, 0.999954]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11611.5, 12038.3, 24.3668], [-0.260033, -0.965484, 0.0149515], [0.00799344, 0.0133312, 0.999879]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11619.8, 12035.7, 24.3255], [-0.329627, -0.944037, 0.011882], [0.00932853, 0.00932809, 0.999913]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11627.7, 12031.7, 24.2677], [-0.597949, -0.801336, 0.0178461], [0.0173315, 0.00933348, 0.999806]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11634.7, 12026.5, 24.189], [-0.716944, -0.697004, 0.0132714], [0.0133313, 0.00532603, 0.999897]],
["a3\structures_f\mil\fortification\hbarrier_big_f.p3d", [11641.1, 12020.5, 24.1352], [-0.740847, -0.671574, 0.0115712], [0.0119949, 0.00399646, 0.99992]]
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