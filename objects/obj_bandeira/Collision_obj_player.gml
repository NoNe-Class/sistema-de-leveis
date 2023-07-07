/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Ir para a room inicial
if (fazer)
{
	instance_create_layer(0, 0, layer, obj_transicao, {destino: destino});
}
fazer = false;


//Desbloqueando o próximo level desse mundo

//global.mundos[mundo+1] = status_bloqueio.desbloqueado;