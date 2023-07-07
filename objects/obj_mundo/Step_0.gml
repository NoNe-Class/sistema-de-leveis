/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Decidindo se eu devo girar ou não
if (status == status_bloqueio.bloqueado)
{
	image_speed = 0;
}
else//Estou desbloqueado
{
	image_speed = 1;
	
	efeito_mouse();
	efeito_cor();
}