extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var score = GlobalState.score
onready var heros_killed = GlobalState.hero_deaths
onready var label = $CenterContainer/VBoxContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "You got {score} Score!\nyou managed to defeat {heros} Heros!".format({
		"score": score,
		"heros": heros_killed
	})
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Retry_pressed():
	Game.change_scene("res://Scenes/gameplay/gameplay.tscn")
	pass # Replace with function body.


func _on_MainMenu_pressed():
	Game.change_scene("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.
