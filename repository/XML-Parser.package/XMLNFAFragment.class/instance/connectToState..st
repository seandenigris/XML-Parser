connecting
connectToState: aState
	self terminalStates do: [:each | each connectToState: aState]