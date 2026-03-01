extends CharacterBody2D

const speed = 350
const jump_velocity = -500.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float) -> void:
	if !is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("_jump") and is_on_floor():
		velocity.y = jump_velocity
		
	var direction = Input.get_axis( "_mleft", "_mright")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		
	#if velocity.x:
		#$AnimatedSprite2D.flip_h = velocity.x < 0
		#
		#if is_on_floor():
			#$AnimatedSprite2D.play("walk")
		#else:
			#$AnimatedSprite2D.play("jump")
	#else:
		#$AnimatedSprite2D.play("idle")
		
	move_and_slide()
