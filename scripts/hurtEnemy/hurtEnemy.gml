///@arg enemyID
///@arg sourceID
///@arg damage

function scr_hurtEnemy(_enemyID, _sourceID, _damage){
	with(_enemyID)
	{
		if (state isnt "die")
		{
			hp -= _damage;
			
			if (hp <= 0)
			{
				scr_stateSwitch("die");	
			}
		}
	}
}