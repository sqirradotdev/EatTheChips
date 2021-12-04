extends Node2D


func _ready() -> void:
	yield(VisualServer, "frame_post_draw")
	GameManager.switch_state(GameManager.State.MENU)
