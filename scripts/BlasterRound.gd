extends Area

signal exploded

export var muzzle_velocity = 35

var velocity = Vector3.ZERO

func _physics_process(delta):
    look_at(transform.origin + velocity.normalized(), Vector3.UP)
    transform.origin += velocity * delta

func on_body_entered(_body: Node):
    emit_signal("exploded", transform.origin)
    queue_free()
