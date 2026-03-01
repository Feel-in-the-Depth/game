extends CanvasLayer

@onready var panel = $Panel
@onready var text_label = $Panel/DialogueText
@export var day = $Global
var dialogues = []
var current_index = 0

func start_dialogue(new_dialogues: Array):
	dialogues = new_dialogues
	current_index = 0
	panel.visible = true
	show_text()
