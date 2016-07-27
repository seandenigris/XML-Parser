transitions
addTransitionsTo: aState
	self transitionsDo: [:each | aState addTransition: each].