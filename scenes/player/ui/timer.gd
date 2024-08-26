extends Control

var time: float = 0

func _process(delta):
	time += delta
	var msec = fmod(time, 1) * 1000
	var seconds = fmod(time, 60)
	var minutes = fmod(time, 3600) / 60
	$minutes.text =  "%02d:" % minutes
	$seconds.text =  "%02d." % seconds
	$miliseconds.text =  "%03d" % msec

