/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 23 Vehicles
private _vehicles = [
["Exile_Sign_TraderCity", [26766.2, 24628.2, 22.9912], [-0.67501, 0.737809, 0], [0, 0, 1], true],
["Exile_Locker", [26742.3, 24665.3, 21.116], [-0.777015, 0.629481, 0.000848332], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26749.4, 24669.1, 21.5207], [0.358334, 0.933593, -0.000391223], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26751.4, 24668.7, 21.5184], [0, 1, 0], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26753.4, 24669.1, 21.5162], [-0.369667, 0.929164, 0.000403596], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26740.9, 24653.8, 21.5304], [-0.921683, 0.387944, 0.00100628], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26741.3, 24655.8, 21.5299], [-0.999841, -0.0178199, 0.00109161], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26740.9, 24657.8, 21.5304], [-0.924933, -0.380129, 0.00100983], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26753.4, 24644, 21.5161], [0.977679, 0.210103, -0.00106741], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26752.3, 24645.8, 21.5174], [0.623214, 0.782051, -0.000680414], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_white_F", [26750.5, 24646.8, 21.5194], [0.341743, 0.939793, -0.000373109], [0.00109178, 0, 0.999999], true],
["Land_CampingTable_small_white_F", [26757.6, 24658.8, 21.505], [0, 1, 0], [0.00109178, 0, 0.999999], false],
["Land_CampingTable_small_white_F", [26758.5, 24658.8, 21.5039], [0, 1, 0], [0.00109178, 0, 0.999999], false],
["Land_CampingTable_small_white_F", [26759.5, 24658.8, 21.5028], [0, 1, 0], [0.00109178, 0, 0.999999], false],
["Land_CampingTable_small_white_F", [26757.5, 24658, 21.505], [0, 1, 0], [0.00109178, 0, 0.999999], false],
["Land_CampingTable_small_white_F", [26758.5, 24658, 21.5039], [0, 1, 0], [0.00109178, 0, 0.999999], false],
["Land_CampingTable_small_white_F", [26759.5, 24658, 21.5027], [0, 1, 0], [0.00109178, 0, 0.999999], false],
["Land_Device_assembled_F", [26776.6, 24649.1, 21.7983], [0, 1, 0], [0.00109178, 0, 0.999999], true],
["Land_Cargo_House_V3_F", [26758, 24625.9, 21.6189], [0, 1, 0], [0, 0, 1], true],
["Land_WaterCooler_01_new_F", [26741.5, 24664.5, 21.8489], [-0.79605, 0.60523, 0.000869114], [0.00109178, 0, 0.999999], true],
["Land_HelipadEmpty_F", [26791.6, 24625.5, 68.088], [0, 1, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V3_F", [26743.6, 24626.8, 33.336], [-0.63784, -0.770103, -0.0101047], [-0.0013439, -0.0120072, 0.999927], true],
["Land_Cargo_Tower_V3_F", [26777.3, 24672, 32.9379], [-0.679702, -0.732595, 0.0361866], [-0.0200001, 0.0678276, 0.997497], true]
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

// 76 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26743.1, 24642.7, 21.3954], [0.777712, -0.628513, -0.011642], [0.0106641, -0.00532624, 0.999929]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26739.7, 24638.4, 21.3962], [0.784594, -0.619912, -0.011015], [0.00666787, -0.00932832, 0.999934]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26736.3, 24634, 21.2156], [0.780921, -0.621383, 0.0635965], [-0.0968758, -0.0199035, 0.995097]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26732.8, 24629.7, 21.0469], [0.783899, -0.620309, 0.0268294], [-0.0426276, -0.0106596, 0.999034]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26731.4, 24624.4, 21.0963], [0.993247, 0.11602, 0.000722726], [-0.00399675, 0.0279892, 0.9996]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26734, 24619.5, 21.1826], [0.661162, 0.750236, -0.00336015], [-0.00399675, 0.00800083, 0.99996]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26738.2, 24615.8, 21.2268], [0.666082, 0.745861, -0.00507702], [-0.00133721, 0.00800089, 0.999967]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26742.3, 24612.1, 21.2702], [0.69081, 0.723004, -0.00678679], [-0.00133721, 0.0106641, 0.999942]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26746.3, 24608.2, 21.3918], [0.708199, 0.705237, 0.033085], [-0.0572399, 0.0106466, 0.998304]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26750.8, 24605.8, 21.7435], [0.146878, 0.988278, -0.0416332], [-0.057233, 0.05051, 0.997082]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26755.9, 24606, 22.1087], [-0.256786, 0.965364, -0.0461963], [-0.0942451, 0.0225594, 0.995293]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26762.1, 24670.7, 21.06], [0.784601, -0.620001, -4.49941e-005], [0.00532655, 0.00666808, 0.999964]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26765.6, 24675.2, 20.7526], [0.783607, -0.621014, -0.0173719], [0.0506016, 0.0359305, 0.998072]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26769.2, 24679.5, 20.4377], [0.784555, -0.619778, 0.0186711], [0.0119996, 0.0452823, 0.998902]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26772.8, 24683.8, 20.3046], [0.784609, -0.619759, 0.0169545], [-0.00265204, 0.0239911, 0.999709]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26777.8, 24685.9, 20.268], [0.0394474, -0.9986, 0.0352494], [-0.0159977, 0.0346411, 0.999272]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26783.1, 24684, 20.4166], [-0.637234, -0.770504, 0.016012], [-0.0199947, 0.0372989, 0.999104]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26787.4, 24680.3, 20.653], [-0.637234, -0.770408, 0.0201132], [-0.0199977, 0.0426191, 0.998891]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26791.7, 24676.8, 20.8789], [-0.637315, -0.770191, 0.025206], [-0.012, 0.0426246, 0.999019]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26796, 24673, 21.0821], [-0.637315, -0.770285, 0.0221305], [-0.012, 0.0386352, 0.999181]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26800.2, 24669.4, 21.2993], [-0.637198, -0.770548, 0.0153411], [-0.0226603, 0.0386281, 0.998997]],
["a3\structures_f\mil\fortification\hbarrier_5_f.p3d", [26802.8, 24664.6, 21.5604], [-0.990893, -0.133627, -0.0166018], [-0.0226603, 0.0439465, 0.998777]],
["a3\characters_f\blufor\headgear_b_helmet_camo.p3d", [26748.6, 24669.6, 21.3107], [0, 1, 0], [0, 0, 1]],
["a3\characters_f\opfor\headgear_o_helmet_ballistic_spec.p3d", [26748.9, 24669.5, 21.3094], [0, 1, 0], [0, 0, 1]],
["a3\characters_f_beta\indep\headgear_helmet_canvas.p3d", [26749.2, 24669.3, 21.3065], [0, 1, 0], [0, 0, 1]],
["a3\characters_f\opfor\equip_o_vest01.p3d", [26749.6, 24669.1, 21.9232], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\characters_f\blufor\equip_b_bandolier.p3d", [26750, 24668.8, 21.9228], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\weapons_f\ammoboxes\bags\backpack_small.p3d", [26752.5, 24669.1, 21.9199], [0.331934, -0.943303, -0.0003624], [0.00109178, 0, 0.999999]],
["a3\weapons_f\ammoboxes\bags\backpack_tortila.p3d", [26752.9, 24669.2, 21.9194], [0.356985, -0.93411, -0.00038975], [0.00109178, 0, 0.999999]],
["a3\supplies_f_exp\ammoboxes\uniforms_box_f.p3d", [26750.1, 24674.3, 21.2801], [-0.940196, -0.340635, 0], [0, 0, 1]],
["a3\supplies_f_exp\ammoboxes\uniforms_box_f.p3d", [26751.5, 24674.2, 21.2741], [-0.945998, 0.324174, 0], [0, 0, 1]],
["a3\supplies_f_exp\ammoboxes\uniforms_box_f.p3d", [26752.7, 24673.5, 21.2737], [-0.735022, 0.678044, 0], [0, 0, 1]],
["a3\supplies_f_exp\ammoboxes\uniforms_box_f.p3d", [26749, 24673.6, 21.2789], [-0.757631, -0.652684, 0], [0, 0, 1]],
["a3\static_f\mortar_01\mortar_01_f.p3d", [26739.9, 24652.7, 22.0394], [-0.906651, 0.421881, 0], [0, 0, 1]],
["a3\weapons_f\binocular\laserdesignator_02_ghex_f.p3d", [26740.6, 24653, 21.9762], [0.00174533, 0.999998, -1.91883e-006], [0.00109941, 0, 0.999999]],
["a3\weapons_f_beta\launchers\titan\titan_f.p3d", [26740.8, 24657.6, 22.0999], [0.719055, 0.684513, -0.120009], [0, 0.172687, 0.984977]],
["a3\weapons_f\ammo\mag_minedetector.p3d", [26740.9, 24653.6, 21.9862], [0, -0.186336, 0.982486], [0, -0.982486, -0.186336]],
["a3\weapons_f\ammoboxes\ammobox_f.p3d", [26736.2, 24653.4, 21.4236], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\ammobox_f.p3d", [26736.9, 24653, 21.4228], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\ammobox_f.p3d", [26737.3, 24652.5, 21.4222], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_large_f.p3d", [26735.1, 24656, 21.2625], [0.865061, -0.501667, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_large_f.p3d", [26736.1, 24657.5, 21.2613], [0.865061, -0.501667, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_large_f.p3d", [26737, 24659, 21.2603], [0.865061, -0.501667, 0], [0, 0, 1]],
["a3\weapons_f_exp\rifles\akm\akm_f.p3d", [26753.5, 24643.4, 21.9494], [0.0169444, -0.0370931, 0.999168], [-0.484688, -0.874351, -0.0242399]],
["a3\weapons_f_exp\rifles\aks\aks_f.p3d", [26753.4, 24643.9, 21.9379], [-0.0152652, -0.0214842, 0.999653], [-0.578142, -0.81551, -0.0263552]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.2, 24644.3, 21.9456], [0, 1, 0], [0.00109941, 0, 0.999999]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.5, 24644.4, 21.9453], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.1, 24644.6, 21.9456], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.3, 24644.7, 21.9455], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.4, 24644.7, 21.9453], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.3, 24644.5, 21.9454], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f_epb\items\military\magazine_rifle_f.p3d", [26753.4, 24644.5, 21.9453], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\weapons_f\acc\accu_bipod_02_tan_f.p3d", [26751.1, 24646.3, 21.9782], [0, 1, 0], [0.00109941, 0, 0.999999]],
["a3\weapons_f\acc\acca_snds_h_f.p3d", [26751.3, 24646.5, 21.9213], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\weapons_f_epb\acc\acco_sniper02_f.p3d", [26750.6, 24646.4, 21.922], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\weapons_f\explosives\satchel.p3d", [26740.9, 24654.2, 21.9331], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\armor_f_epc\mbt_01\mbt_01_tusk_f.p3d", [26790.5, 24662.2, 23.4754], [0, 0.999537, -0.0304112], [0, 0.0304112, 0.999537]],
["a3\structures_f\mil\shelters\camonet_big_f.p3d", [26793.8, 24663.8, 23.4431], [0, 0.999147, -0.0412979], [0.00265199, 0.0412977, 0.999143]],
["a3\armor_f_beta\apc_tracked_01\apc_tracked_01_aa_f.p3d", [26796.7, 24663.7, 23.6928], [0, 0.999147, -0.0412979], [0.00265199, 0.0412977, 0.999143]],
["a3\weapons_f\ammoboxes\wpnsbox_f.p3d", [26750.7, 24641.4, 21.3265], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_f.p3d", [26749.8, 24642, 21.3274], [0, 1, 0], [0, 0, 1]],
["a3\weapons_f\ammoboxes\wpnsbox_f.p3d", [26749.2, 24642.5, 21.3262], [0, 0.707754, -0.706459], [0, 0.706459, 0.707754]],
["a3\structures_f\civ\camping\campingchair_v1_f.p3d", [26757.6, 24660, 21.6061], [0, 1, 0], [0.00109178, 0, 0.999999]],
["a3\structures_f\civ\camping\campingchair_v1_f.p3d", [26758.6, 24660.1, 21.6047], [0, 0.999968, -0.00799344], [0, 0.00799344, 0.999968]],
["a3\structures_f\civ\camping\campingchair_v1_f.p3d", [26759.7, 24660, 21.6034], [0, 0.999968, -0.00799344], [0, 0.00799344, 0.999968]],
["a3\structures_f\civ\camping\campingchair_v1_f.p3d", [26759.5, 24656.9, 21.6039], [0.0348165, -0.999394, -3.80121e-005], [0.00109178, 0, 0.999999]],
["a3\structures_f\civ\camping\campingchair_v1_f.p3d", [26758.5, 24656.9, 21.6048], [0.0348165, -0.999305, 0.0133191], [0, 0.0133272, 0.999911]],
["a3\structures_f\civ\camping\campingchair_v1_f.p3d", [26757.3, 24656.9, 21.6062], [0.0348165, -0.999305, 0.0133191], [0, 0.0133272, 0.999911]],
["a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d", [26768.1, 24634.7, 21.0864], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d", [26770.3, 24637.3, 21.0836], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d", [26772.4, 24640.2, 21.0812], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d", [26774.9, 24642.6, 21.0784], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d", [26777.1, 24645.2, 21.0762], [0, 1, 0], [0, 0, 1]],
["a3\static_f_jets\aaa_system_01\aaa_system_01_f.p3d", [26745.3, 24623.1, 43.454], [-0.775187, 0.631732, 0], [0, 0, 1]],
["a3\static_f_jets\aaa_system_01\aaa_system_01_f.p3d", [26778.6, 24668.8, 43.2213], [-0.749441, 0.662071, 0], [0, 0, 1]],
["a3\static_f_jets\sam_system_02\sam_system_02_f.p3d", [26752.1, 24611.1, 22.915], [0, 1, 0], [0, 0, 1]]
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