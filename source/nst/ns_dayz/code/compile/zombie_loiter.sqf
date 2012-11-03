private["_unit","_originalPos","_pos"];
_unit = 		_this select 0;
_originalPos = 	_this select 1;
_pos = 			getPosATL _unit;

if (count _this > 2) then {
	_pos = _this select 2;
} else {
	//_unit enableAI "MOVE";
	//_unit enableAI "ANIM";
	_pos = [_originalPos,10,60,0,0,5,0] call BIS_fnc_findSafePos;
};

if(isNull group _unit) then {
	_unit moveTo _pos;
} else {
	_unit domove _pos;		
};	
_unit forceSpeed 2;
_unit setVariable ["myDest",_pos];
