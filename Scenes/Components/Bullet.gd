extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed: int = 550
export var flipped: bool = true

var will_hit: int = WILL_HIT.HERO

enum WILL_HIT {
	HERO = 1,
	INVADER = 2,
}

# Called when the node enters the scene tree for the first time.
func _ready():
	self.linear_velocity.y = speed if flipped else -speed
	if flipped:
		self.rotation_degrees = 0
	self.collision_layer = will_hit
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_VisibilityNotifier2D_screen_exited():
	self.queue_free()
