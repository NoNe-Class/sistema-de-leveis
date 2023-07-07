/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

fazer = true;

//Desbloquando o meu mundo

//checando em qual mundo eu estou
var _room = room_get_name(room);

//Separando o mundo atual do level atual
var _tudo = string_split(_room, "_level");

var _mundo = _tudo[0];
var _level = _tudo[1];


//Meu destino é o mesmo mundo, só que o próximo level
var _destino = _mundo + "_level" + string(real(_level)+1);
destino = asset_get_index(_destino);

//Se ele não tem destino, então o valor do destino é -1
//Nesse caso eu volto para a seleção de leveis
if (destino == -1)
{
	destino = asset_get_index(_mundo);
}

var _mundo2 = string_split(_mundo, "rm_");
//Desbloquando o meu level desse mundo
var _global = variable_global_get(_mundo2[1]);
//Falando que este mundo esta desbloqueado
_global[real(_level)-1] = true;

//Definindo a variável global com base na minha variável local
variable_global_set(_mundo2[1], _global);