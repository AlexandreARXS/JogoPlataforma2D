//Vida do Personagem
with (other){
	hp--;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();
game_restart();