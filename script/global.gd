extends Node

var day : int = 1
var max_day : int = 3
var is_school_time : bool = true

func next_day():
	if day < max_day:
		day += 1
		is_school_time = true
