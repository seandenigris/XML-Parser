transitions
previousStatesDo: aBlock
	self incomingTransitions do: [:each | aBlock value: each previousState]