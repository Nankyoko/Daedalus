// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attackCharacter(_attacker, _defender){
	var _atk = _attacker.damage;
	var _def = _defender.defense;
	
	var _highRange = random_range(0, .225) + .5;
	var _lowRange = random_range(0, .225);
	
	_atk -= _highRange * _def;
	_atk -= _lowRange *_def;
	
	_atk = round(_atk);
	
	if(_atk < 0) {
		_atk = 0;
	}

	_defender.currentHP -= _atk;
	
	_defender.showDamage = 60;
	_defender.damageTaken = _atk;
}