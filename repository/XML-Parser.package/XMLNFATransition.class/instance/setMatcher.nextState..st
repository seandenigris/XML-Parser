initialization
setMatcher: aMatcher nextState: aNextState
	super setMatcher: aMatcher nextState: aNextState.
	aNextState incomingTransition: self.
	