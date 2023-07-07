// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//Criando um enum para facilitar a leitura do código
enum status_bloqueio
{
	bloqueado, //0
	desbloqueado //1
}


//MUNDOS
//Saber quais mundos estão bloqueados
global.mundos = [status_bloqueio.desbloqueado, status_bloqueio.bloqueado, status_bloqueio.bloqueado, status_bloqueio.bloqueado, status_bloqueio.bloqueado];

global.mundo1 = [1, 0, 0, 0, 0, 0, 0];

//Definindo a sprite para cada mundo
global.sprite_mundos = [spr_planeta, spr_planeta2, spr_planeta3, spr_planeta4, spr_planeta5];