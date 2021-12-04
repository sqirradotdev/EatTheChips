tool
extends Node

var reg:Dictionary = {}


func _ready() -> void:
	pass


func register(id:String) -> void:
	if not reg.has(id):
		reg[id] = 0.0


func unregister(id:String) -> void:
	reg.erase(id)
