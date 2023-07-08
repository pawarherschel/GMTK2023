extends Node2D

signal hero_shot

onready var bullet_scene: PackedScene = preload("res://Scenes/Components/Bullet.tscn")
onready var shooting_timer: Timer = $"Shooting Timer"
onready var invulnerability_timer: Timer = $"Invulnerability Timer"

export var speed: float = 2
export var difficulty_multiplier: float = 1.2

var vulnerable: bool = true

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var move_towards: float = sign(round((GlobalState.target - self.global_position.x) * 10))
	self.position.x += difficulty_multiplier * move_towards * speed
	pass


func _on_Area2D_body_entered(_body):
	if vulnerable:
		level_over()
	pass # Replace with function body.

func level_over():
	GlobalState.hero_deaths += 1
	respawn()
	emit_signal("hero_shot")
	pass

func respawn():
	var m: float = difficulty_multiplier
	var x: float = shooting_timer.wait_time
	shooting_timer.wait_time = x * 1 / m
	vulnerable = false
	invulnerability_timer.start()
	pass


func _on_Timer_timeout():
	shoot()
	pass # Replace with function body.

func shoot():
	var bullet: Node2D = bullet_scene.instance()
	bullet.flipped = false
	bullet.will_hit = bullet.WILL_HIT.INVADER
	bullet.global_position = self.global_position  
	
	var bullets_layer: Array = get_tree().get_nodes_in_group("bullets_layer")
#	print(bullets_layer)
	for layer in bullets_layer:
		layer.add_child(bullet)


func _on_Invulnerability_Timer_timeout():
	vulnerable = true
	pass # Replace with function body.
