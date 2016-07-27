transitions
addTransition: aTransition
	super addTransition: aTransition.
	aTransition previousState: self.
	