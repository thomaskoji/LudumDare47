///@arg frame
function scr_animationHitFrame(_frame) {
	return (image_index >= _frame - image_speed) && (image_index < _frame);
}
