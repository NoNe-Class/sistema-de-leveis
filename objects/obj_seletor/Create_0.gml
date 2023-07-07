/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

fazer = true;
//Descobrindo qual o meu mundo
var _room		= room_get_name(room);
var _level		= "_level" + string(level);
var _destino	= _room + _level;
destino			= asset_get_index(_destino);

//Room ta segurando rm_mundo1
var _mundo		= string_split(_room, "rm_");
//Vendo se a variável global do meu mundo existe
var _global = variable_global_get(_mundo[1]);

status = _global[level-1];


efeitos();