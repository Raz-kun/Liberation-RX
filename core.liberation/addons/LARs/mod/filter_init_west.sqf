// TFAR Radio
if (GRLIB_TFR_enabled) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_TFAR.sqf";
};
// Add ACE Weapons
if (GRLIB_ACE_enabled) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_ACE.sqf";
};
// Add ArmA3 Weapons
if (["A3_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_A3.sqf";
};
// Add AMF Weapons
if (GRLIB_AMF_enabled) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_AMF.sqf";
};
// Add Western Sahara
if (["WS_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_WS.sqf";
};
// Add CUP Weapons
if (["CP_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_CUP.sqf";
};
// Add GM Weapons
if (["GM_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_GM.sqf";
};
// Add OPTRE Weapons
if (["OPTRE", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_OPTRE.sqf";
};
// Add EricJ Weapons
if (["EJW_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_EJW.sqf";
};
// Add RHS Weapons
if (["RHS_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_RHS.sqf";
};
// Add R3F Weapons
if (["R3F_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_R3F.sqf";
};
// Add SOG Weapons
if (["SOG_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_SOG.sqf";
};
// Add 3CB Weapons
if (["3CB_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_RHS.sqf";
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_3CB.sqf";
};
// Add CWR Weapons
if (["CWR3_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_CWR.sqf";
};
// Add FFAA Weapons
if (["FFAA_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_FFAA.sqf";
};
// Add ASZ Weapons
if (["ASZ_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_ASZ.sqf";
};
// Add PO Weapons
if (["PO_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_RHS.sqf";
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_PO.sqf";
};
// Add Unsung Weapons
if (["UNS_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_UNS.sqf";
};
// Add IFA3 Weapons
if (["IFA_", GRLIB_mod_west, true] call F_startsWith) then {
    [] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_IFA.sqf";
};
// Add DLC: Spearhead 1944 (WW2) Weapons
if (["SPE_", GRLIB_mod_west, true] call F_startsWith) then {
    [] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_SPE.sqf";
};
// Add UFP (Ukrainian Faction Project) Weapons
if (["UFP_BLU", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_UFP.sqf";
};
// Add RHS + Tier One Weapons + VSM
if (["TGB_", GRLIB_mod_west, true] call F_startsWith) then {
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_RHS.sqf";
	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_TGB.sqf";
//	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_T1W.sqf";
//	[] call compileFinal preprocessFileLineNumbers "addons\LARs\mod\filter_VSM.sqf";
};
