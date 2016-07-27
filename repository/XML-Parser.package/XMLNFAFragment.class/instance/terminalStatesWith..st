converting
terminalStatesWith: aState
	^ terminalStates isArray
		ifTrue: [OrderedCollection with: terminalStates first with: aState]
		ifFalse: [
			terminalStates
				add: aState;
				yourself]