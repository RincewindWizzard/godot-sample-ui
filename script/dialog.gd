extends Control

@export var title: String = "<title>"
@export var message: String = "<Message>"


signal okay_pressed
signal cancel_pressed

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("CenterContainer/VBoxContainer/header").set_text(title)
	get_node("CenterContainer/VBoxContainer/PanelContainer/VBoxContainer/MarginContainer/content").set_text(message)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ok_pressed():
	okay_pressed.emit()


func _on_cancel_pressed():
	cancel_pressed.emit()
