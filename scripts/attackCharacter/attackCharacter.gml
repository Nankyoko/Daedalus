// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attackCharacter(_attacker, _defender){
	_defender.currentHP -= _attacker.damage;
	
	_defender.showDamage = 60;
	_defender.damageTaken = _attacker.damage;
}