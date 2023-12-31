extends Node


var current_level = 2

var level_0 = [
	[0, 1, 0]
]

var level_1 = [
	[5, 5, 4, 4, 4, 4, 5, 5],
	[0, 0, 3, 5, 5, 3, 0, 0],
	[2, 2, 2, 4, 4, 2, 2, 2],
	[1, 1, 1, 1, 1, 1, 1, 1]
]

var level_2 = [
	[5, 4, 3, 2, 2, 3, 4, 5],
	[0, 0, 0, 4, 4, 0, 0, 0],
	[0, 0, 3, 3, 3, 3, 0, 0],
	[0, 2, 2, 0, 0, 2, 2, 0],
	[0, 2, 2, 0, 0, 2, 2, 0],
	[1, 1, 0, 0, 0, 0, 1, 1],
	[1, 1, 0, 0, 0, 0, 1, 1]
]

var level_3 = [
	[3, 5, 3, 5, 3, 5, 3, 5, 3],
	[5, 2, 5, 2, 5, 2, 5, 2, 5],
	[4, 0, 4, 0, 4, 0, 4, 0, 4],
	[0, 1, 0, 1, 0, 1, 0, 1, 0],
	[5, 0, 5, 0, 5, 0, 5, 0, 5]
]
var levels = [
	level_0,
	level_1,
	level_2,
	level_3
]


func get_current_level():
	return levels[current_level - 1]

