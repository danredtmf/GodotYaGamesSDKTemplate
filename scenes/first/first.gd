extends Control

onready var label: Label = $Margin/VBoxContainer/Panel/VBoxContainer/Label

func _process(_delta: float) -> void:
	update_ui()

func update_ui():
	label.text = "Монеты: %d" % [Global.coins]

func _on_Reward_pressed() -> void:
	Global.js_show_rewarded_ad()

func _on_Next_pressed() -> void:
	get_tree().change_scene("res://scenes/second/second.tscn")
