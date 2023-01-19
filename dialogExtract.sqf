_fnc_PlayDialog = {
	params ["_callsign", "_content", "_sound", "_duration"];

	dur = _duration;
	_sfx = playSound _sound;
	[_callsign, _content] spawn BIS_fnc_showSubtitle;
	_sfx spawn
	{
		sleep dur;
		deleteVehicle _this;
	};
	sleep dur + 5;
};


["ALPHA", "HQ de Alpha répondez.", "rhs_rus_land_rc_01", 2] call _fnc_PlayDialog;
["HQ", "De HQ j'écoute.", "rhs_rus_land_rc_03", 2] call _fnc_PlayDialog;
["ALPHA", "De ALPHA, nos objectifs sont remplis, en attente d'extraction.", "rhs_rus_land_rc_02", 4] call _fnc_PlayDialog;
"marker_extract" setMarkerAlpha 1;
"marker_extract2" setMarkerAlpha 1;
["HQ", "De HQ, ECHO vous a ramené des Zodiacs en 006-076#9 pour vous extraire, vous avez une porte de sortie en partant vers le Sud-Ouest.", "rhs_rus_land_rc_03", 13] call _fnc_PlayDialog;
["ALPHA", "De ALPHA c'est reçu, terminé.", "rhs_rus_land_rc_01", 2] call _fnc_PlayDialog;
