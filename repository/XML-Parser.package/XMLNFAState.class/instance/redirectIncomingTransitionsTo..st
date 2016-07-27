transitions
redirectIncomingTransitionsTo: aState
	self incomingTransitions copy do: [:each | each nextState: aState]