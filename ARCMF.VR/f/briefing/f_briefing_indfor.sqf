private _side = resistance;

player createDiaryRecord ["diary", ["Credits", (format ["%1<br/>Made with ARCMF (https://github.com/ARCOMM/ARCMF)", getText (missionConfigFile >> "author")])]];

_admin = [_side, "logistics"] call ARC_fnc_buildBriefingFromConfig;
if (_admin != "") then {
    player createDiaryRecord ["diary", ["Logistics", _admin]];
};

_exe = "";

_commandersIntent = [_side, "commandersIntent"] call ARC_fnc_buildBriefingFromConfig;
if (_commandersIntent != "") then {
    _exe = format ["%1<font size='18' font='PuristaBold'>Commanders Intent</font><br/>%2<br/>", _exe, _commandersIntent];
};

_movementPlan = [_side, "movementPlan"] call ARC_fnc_buildBriefingFromConfig;
if (_movementPlan != "") then {
    _exe = format ["%1<font size='18' font='PuristaBold'>Movement Plan</font><br/>%2<br/>", _exe, _movementPlan];
};

_fireSupportPlan = [_side, "fireSupportPlan"] call ARC_fnc_buildBriefingFromConfig;
if (_fireSupportPlan != "") then {
    _exe = format ["%1<font size='18' font='PuristaBold'>Fire Support Plan</font><br/>%2<br/>", _exe, _fireSupportPlan];
};

_specialTasks = [_side, "specialTasks"] call ARC_fnc_buildBriefingFromConfig;
if (_specialTasks != "") then {
    _exe = format ["%1<font size='18' font='PuristaBold'>Special Tasks</font><br/>%2<br/>", _exe, _specialTasks];
};

if (_exe != "") then {
    player createDiaryRecord ["diary", ["Execution", _exe]];
};

_mission = [_side, "mission"] call ARC_fnc_buildBriefingFromConfig;
if (_mission != "") then {
    player createDiaryRecord ["diary", ["Mission", _mission]];
};

_situation = "";

_sit = [_side, "situation"] call ARC_fnc_buildBriefingFromConfig;
if (_sit != "") then {
    _situation = format ["%1%2<br/>", _situation, _sit];
};

_ef = [_side, "enemyForces"] call ARC_fnc_buildBriefingFromConfig;
if (_ef != "") then {
    _situation = format ["%1<font size='18' font='PuristaBold'>Enemy Forces</font><br/>%2<br/>", _situation, _ef];
};

_ff = [_side, "friendlyForces"] call ARC_fnc_buildBriefingFromConfig;
if (_ff != "") then {
    _situation = format ["%1<font size='18' font='PuristaBold'>Friendly Forces</font><br/>%2<br/>", _situation, _ff];
};

if (_situation != "") then {
    player createDiaryRecord ["diary", ["Situation", _situation]];
};
