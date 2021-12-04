extends Control

enum MenuState {
	TITLE,
	CHOICES,
	CUSTOMIZE,
	HOST,
	JOIN,
	LOBBY,
	OPTIONS
}

var state:int = MenuState.TITLE
var enable_input:bool = false

onready var _g_ui_viewport := $InterfaceViewport
onready var _g_title       := $InterfaceViewport/Title
onready var _logo_anim     := $InterfaceViewport/Title/Logo/AnimationPlayer
onready var _greeting_text := $InterfaceViewport/Title/GreetingText


func _ready() -> void:
	_logo_anim.play("enter")
	_logo_anim.connect("animation_finished", self, "_on_animation_finished")
	
	_greeting_text.set_time(0.0)
	yield(get_tree().create_timer(0.6), "timeout")
	_greeting_text.enter()


func _input(event: InputEvent) -> void:
	_g_ui_viewport.input(event)


func _unhandled_input(event: InputEvent) -> void:
	if enable_input:
		if event is InputEventKey:
			if event.pressed and not event.echo:
				if state == MenuState.TITLE:
					_to_choices()

func _to_choices() -> void:
	state = MenuState.CHOICES # TODO: make this a separate method
	_greeting_text.exit()
	_logo_anim.play("exit")


func _on_animation_finished(anim_name:String) -> void:
	match anim_name:
		"enter":
			enable_input = true
