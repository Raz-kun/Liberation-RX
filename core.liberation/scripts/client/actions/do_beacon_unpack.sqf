if (([PAR_Grp_ID] call F_getMobileRespawnsPlayer) select 1) exitWith {};

private _tent_cost = support_vehicles select {(_x select 0) == mobile_respawn} select 0 select 1;

if ( _tent_cost > (infantry_cap - resources_infantry)) then {
	hintSilent format [localize "STR_BEACON_UNPACK", resources_infantry];
} else {
	disableUserInput true;
	player playMove"AmovPknlMstpSrasWrflDnon";
	sleep 1;
	player switchMove "Acts_carFixingWheel";
	player playMoveNow "Acts_carFixingWheel";
	sleep 2;
	removeBackpack player;
	sleep 5;
	player switchMove "AmovPknlMstpSrasWrflDnon";
	player playMoveNow "AmovPknlMstpSrasWrflDnon";
	buildtype = 9;
	build_unit = [mobile_respawn,[],1,[],[],[],[]];
	dobuild = 1;
	disableUserInput false;
	disableUserInput true;
	disableUserInput false;
	waitUntil { sleep 0.5; dobuild == 0};
	if (build_confirmed == 3) then {
		player addBackpack mobile_respawn_bag;
		(backpackContainer player) setVariable ["GRLIB_mobile_respawn_bag", true, true];
		[(backpackContainer player), 0] remoteExec ["setMaxLoad", 2];
	};
};
