extends Node2D

@export var initialState: State

var currentState : State
var states: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.Transitioned.connect(onChildTransition)
	if initialState:
		initialState.enter()
		currentState = initialState

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if currentState:
		currentState.update(delta)
		
func _physics_process(delta):
	if currentState:
		currentState.physicsUpdate(delta)
		
func onChildTransition(state, stateName):
	if state != currentState:
		return
	
	var newState = states.get(stateName.to_lower())
	if !newState:
		return
	
	if currentState:
		currentState.exit()
	newState.enter()
	currentState = newState
