extends CharacterBody2D

func _ready() -> void:
	$Hitbox.body_entered.connect(_on_hitbox_body_entered)

func _on_hitbox_body_entered(body) -> void:
	if body.is_in_group("player"):
		print("Player touched the enemy!")
		body.respawn()
