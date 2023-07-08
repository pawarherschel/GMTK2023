extends Node

func add_score(alive_invaders: int):
	score += alive_invaders * 50
	score += 1000
	for node in get_tree().get_nodes_in_group("Score"):
		node.text = String(score)
	pass

func update_target(t: Node2D):
	target = t.global_position.x

var score: int = 0
var target: float
var hero_deaths: int = 0
