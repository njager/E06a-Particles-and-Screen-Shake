extends Node2D

onready var Camera = $Camera

var _start_position
var _start_rotation
var _trauma

func _ready():
	_start_position = position
	_trauma = 0.0

func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		get_node("/root/World/Camera")._apply_shake()
	