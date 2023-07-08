extends Node2D

signal game_over

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var available_children: Array = $Ships.get_children()
onready var shoot_timeout: Timer = $shoot_timeout

export var movement_speed: int = 2
export var seconds_between_shots: float = 0.1

var shot: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	shoot_timeout.wait_time = seconds_between_shots
	var choice: Node2D = available_children[randi() % available_children.size()]
	GlobalState.update_target(choice)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	available_children = $Ships.get_children()
	check_game_over()
	
	if Input.is_action_pressed("move_right"):
		self.position.x += movement_speed
	if Input.is_action_pressed("move_left"):
		self.position.x -= movement_speed
	
	if Input.is_action_pressed("shoot") && !shot:
		var choice: Node2D = available_children[randi() % available_children.size()]
		choice.get_child(0).shoot()
		GlobalState.update_target(choice)
		self.shot = true
		shoot_timeout.start()
	
	pass

func _on_shoot_timeout_timeout():
	self.shot = false
	pass # Replace with function body.


func _on_invader_shot():
	available_children = $Ships.get_children()
	check_game_over()
	pass # Replace with function body.

func check_game_over():
	if available_children.empty():
		emit_signal("game_over")
	
