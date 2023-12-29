extends Control

func _ready() -> void:
	Global.js_show_ad()

func _on_Back_pressed() -> void:
	get_tree().change_scene("res://scenes/first/first.tscn")
