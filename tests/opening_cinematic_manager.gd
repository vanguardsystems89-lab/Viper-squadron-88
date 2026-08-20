extends Node3D

@export var cinematic_camera: Camera3D
@export var player_fighter: Node3D
@export var animation_player: AnimationPlayer
@export var tvs_hud_layer: Control

func _ready() -> void:
	# Initialize cinematic state
	tvs_hud_layer.visible = false
	player_fighter.set_process_input(false)
	
	# Play the opening timeline
	animation_player.play("gateway_opening_sequence")
	animation_player.animation_finished.connect(_on_cinematic_finished)

func _on_cinematic_finished(anim_name: StringName) -> void:
	if anim_name == &"gateway_opening_sequence":
		transition_to_player_control()

func transition_to_player_control() -> void:
	# Switch camera to cockpit view
	cinematic_camera.current = false
	player_fighter.get_node("CockpitCamera").current = true
	
	# Enable player input and TVS HUD
	player_fighter.set_process_input(true)
	tvs_hud_layer.visible = true
	
	# Clean up cinematic node
	queue_free()
