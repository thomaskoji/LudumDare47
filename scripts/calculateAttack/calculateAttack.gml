///@arg maskE
///@arg maskN
///@arg maskS

function scr_calculateAttack(_maskE,_maskN,_maskS){
	
	var _oldMask = mask_index;
	
	switch (faceDirection)
	{
		case EAST:
			mask_index = _maskE;
			image_xscale = 1;
			break;
		
		case WEST:
			mask_index = _maskE;
			image_xscale = -1;
			break;
		
		case NORTH:
			mask_index = _maskN;
			image_xscale = 1;
			break;
		
		case SOUTH:
			mask_index = _maskS;
			image_xscale = 1;
			break;
	}
	
	// my code
	
	if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
	ds_list_clear(hitByAttack);
	
	// my code end
	
	var _hitByAttackNow = ds_list_create();
	var _hits = instance_place_list(x, y, obj_entityParent, _hitByAttackNow, false);
	
	if (_hits > 0)
	{
		for (var i = 0; i < _hits; i++)
		{
			var _hitID = _hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, _hitID) == -1)
			{
				ds_list_add(hitByAttack, _hitID);
				with(_hitID)
				{
					if (object_is_ancestor(object_index, obj_enemyParent))
					{
						scr_hurtEnemy(id, other.id, other.attackDamage);
					}
					
					if (entityHitScript != -1) script_execute(entityHitScript);
				}
			}
		}
	}
	ds_list_destroy(_hitByAttackNow);
	mask_index = _oldMask;
}
