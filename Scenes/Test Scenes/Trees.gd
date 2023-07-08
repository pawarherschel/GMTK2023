extends TileMap

export var noise_texture: NoiseTexture =  preload("res://Resources/noise_texture.tres")
var texture: Image

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	yield(noise_texture, "changed")
	texture = noise_texture.get_data()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for y in range(0, 1024):
		for x in range(0, 1024):
			var pixel: Color = texture.get_pixel(x, y)
	
	pass
