extends Node2D

var goal_reached = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if goal_reached == true:
		reachgoal()

func reachgoal():
	print("goal reached") 

func _on_area_2d_body_entered(body: Node2D) -> void:
	goal_reached = true
