extends CharacterBody2D

var direction : Vector2 = Vector2()
@export var playerSpeed = 200
@export var gravity = 30
@export var jumpForce = 300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta):
	if !is_on_floor():
		velocity.y += gravity
		if Input.is_action_just_pressed("up"):
			velocity.y = -jumpForce
	

	
	var horizontal_direction = Input.get_axis("left", "right")
	velocity.x = playerSpeed*horizontal_direction
	move_and_slide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
