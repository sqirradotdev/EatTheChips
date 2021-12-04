extends Node

enum State {
	INIT,
	MENU,
	GAMEPLAY
}

var state:int = State.INIT


func _ready() -> void:
	pass


func switch_state(to:int) -> void:
	print_debug("Switching to state: " + State.keys()[to])
	
	match to:
		State.INIT:
			get_tree().change_scene("res://scripts/state/Init.tscn")
		State.MENU:
			get_tree().change_scene("res://scripts/state/menu/Menu.tscn")
