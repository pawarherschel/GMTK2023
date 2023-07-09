extends Node2D

signal invader_shot

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var bullet_scene: PackedScene = preload("res://scenes/components/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func shoot():
	var bullet: Node2D = bullet_scene.instance()
	bullet.flipped = true
	bullet.global_position = self.global_position  
	
	var bullets_layer: Array = get_tree().get_nodes_in_group("bullets_layer")
#	print(bullets_layer)
	for layer in bullets_layer:
		layer.add_child(bullet)


func _on_Timer_timeout():
#	self.shoot()
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	body.queue_free()
	emit_signal("invader_shot")
	pass # Replace with function body.
