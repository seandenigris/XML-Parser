initialization
nextState: aNewState
	super nextState: aNewState.
	aNewState incomingTransition: self.