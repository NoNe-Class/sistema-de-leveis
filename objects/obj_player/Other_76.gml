/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;

//Identificando a mensagem
var _tipo = event_data[? "event_type"];

//Este é o evento de sprite
if (_tipo == "sprite event")
{
	var _msg = event_data[? "message"];
	
	switch(_msg)
	{
		case "puf":
			//Criando particulas
			var _part = part_system_create(ps_puf);
			part_system_position(_part, x, y);
			break;
		case "ataque":
			//Criando o dano
			break;
	}
}