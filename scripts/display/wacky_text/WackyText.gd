tool
extends RichTextLabel
class_name WackyText

export var id:String = ""
export(String, MULTILINE) var wacky_text:String = "" setget set_wacky_text
export(float, 0.0, 1.0) var time:float = 1.0 setget set_time

var _tween:Tween


func _ready() -> void:
	if not Engine.editor_hint:
		_tween = Tween.new()
		add_child(_tween)
	
	bbcode_enabled = true
	custom_effects = []
	install_effect(load("res://scripts/display/wacky_text/WackyTextEffectResource.tres"))
	WackyTextManager.register(id)
	WackyTextManager.reg[id] = time


func _exit_tree() -> void:
	WackyTextManager.unregister(id)


func set_wacky_text(value:String) -> void:
	wacky_text = value
	bbcode_text = "[center][wacky id=" + id + "][shake level=6 rate=2]" + value + "[/shake][/wacky][/center]"


func set_time(value:float) -> void:
	time = value
	if time <= 0.0:
		modulate.a = 0.0
	else:
		modulate.a = 1.0
	WackyTextManager.reg[id] = value


func enter(duration:float = 1.0) -> void:
	_tween.stop_all()
	_tween.interpolate_property(self, "time", 0.0, 1.0, duration, Tween.TRANS_EXPO, Tween.EASE_OUT)
	_tween.start()


func exit(duration:float = 0.6) -> void:
	_tween.stop_all()
	_tween.interpolate_property(self, "time", 1.0, 0.0, duration, Tween.TRANS_EXPO, Tween.EASE_IN)
	_tween.interpolate_property(self, "modulate:a", 1.0, 0.0, 0.2, Tween.TRANS_EXPO, Tween.EASE_IN, duration - 0.2)
	_tween.start()
