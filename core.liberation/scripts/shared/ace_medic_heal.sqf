// by Lord_Kamephis
params ["_medic"];

private _injured = objNull;
private _deads = [];
private _units = units (group _medic);

while {alive _medic} do {
    sleep 5;
    // Waiting for wounded
    while {(isNull _injured) && (alive _medic)} do {
        if (_medic getvariable ["ACE_isUnconscious", false]) then {
            // The medic is unconscious
			systemChat "The medic is downed!";
            _injured = _medic;
        } else {
            {
                if (!alive _x or isNull _x) then {
                    _deads pushBack _x;
                };
                if ((isNull _injured) && (_x getvariable ["ACE_isUnconscious", false]) && (alive _x) && (!isNull _x)) then {
                    _injured = _x;
                };
            } foreach _units;
            _units = _units - _deads;
        };
        sleep 5;
    };

    if (_medic != _injured) then {
        // Medic go for him
		_medic groupChat format["Moving towards %1",(name _injured)];
        if ([_medic, 80] call BIS_fnc_enemyDetected) then {_medic setUnitPos "MIDDLE"};
        while {(_medic distance _injured > 2) && (alive _injured) && (alive _medic) && (!isNull _injured)} do {
            sleep 2;
            _medic moveTo getPosATL _injured;
            _medic doMove (position _injured);
        };
    };

    if ((alive _injured) && (!isNull _injured) && (alive _medic)) then {
        // Determine enemy direction and throw smoke grenade
        private _enemies = nearestObjects [_medic, ["Man"], 200];
        private _enemyPos = [];
        {
            if (side _x != side _medic && alive _x) then {
                _enemyPos = getPos _x;
                breakOut "forEach";
            };
        } forEach _enemies;

        if (!isNull _enemyPos) then {
            private _smokePos = [(_enemyPos select 0) - ((_enemyPos select 0) - (getPos _medic select 0)), 
                                 (_enemyPos select 1) - ((_enemyPos select 1) - (getPos _medic select 1)), 
                                 getPos _medic select 2];
            _medic forceWeaponFire ["Throw", "SmokeShell", _smokePos];
        };

        _medic allowDamage false;
        _medic groupChat format["Healing %1", (name _injured)];
        _medic playMove "AinvPknlMstpSnonWnonDnon_medic_1";
        sleep 5;
        [_injured] call ace_medical_treatment_fnc_fullHealLocal;
        [_injured, false] call ace_medical_fnc_setUnconscious;
        _medic allowDamage true;
        _medic groupChat "All good soldier!";
    };
    _injured = objNull;
    _medic setUnitPos "AUTO";
    _medic doFollow (leader group _medic);
};
