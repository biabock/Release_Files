//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: AgentRev
//	@file Created: 29/06/2013 12:09

// Add custom scripts you wish to be executed on server start here
// config.sqf, admins.sqf, and serverRules.sqf are already loaded automatically

execVM (externalConfigFolder + "\bannedNames.sqf");

(createTrigger ["EmptyDetector", [0,0,0]]) setTriggerStatements
[
    "!triggerActivated thisTrigger", 
    "thisTrigger setTriggerTimeout [5,5,5,false]",
    "{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
];