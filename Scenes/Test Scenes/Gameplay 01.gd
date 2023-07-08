extends Node2D


onready var invaders = $Invaders
onready var bullets = $Bullets

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Hero_hero_shot():
	update_score()
	pass # Replace with function body.

func update_score():
	GlobalState.add_score(invaders.available_children.size())


func _on_Invaders_game_over():
	update_score()
	bullets.queue_free()
	invaders.queue_free()
	
	pass # Replace with function body.
