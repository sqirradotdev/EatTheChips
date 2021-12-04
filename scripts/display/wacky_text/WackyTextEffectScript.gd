tool
extends RichTextEffect

var bbcode = "wacky"


func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	var id:String = char_fx.env.get("id", "")
	var value:float = WackyTextManager.reg[id]
	
	var rand:float = char_fx.character * 33.33 + char_fx.absolute_index * 4545.5454
	
	var progress:float = (1.0 - WackyTextManager.reg[id]) * 200
	
	char_fx.offset.x = cos(rand) * progress
	char_fx.offset.y = sin(rand) * progress
	
	return true
