///@arg low
///@arg high

function scr_animationHitFrameRange(_low, _high){
	return image_index >= _low and image_index <= _high;
}