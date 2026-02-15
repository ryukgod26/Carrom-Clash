extends Node

signal turn_changed(player)
signal score_updated(player, score)

var current_player: int = 1
var scores: Dictionary = {1: 0, 2: 0}

func pocket_coin(color: String):
	if color == "white" and current_player == 1:
		scores[1] += 1
	elif color == "black" and current_player == 2:
		scores[2] += 1
	
	score_updated.emit(current_player, scores[current_player])
	
	if scores[current_player] >= 25:
		game_over()

func switch_turn():
	current_player = 2 if current_player == 1 else 1
	turn_changed.emit(current_player)

func game_over() -> void:
	pass
