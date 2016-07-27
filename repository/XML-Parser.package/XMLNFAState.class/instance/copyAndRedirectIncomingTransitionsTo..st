transitions
copyAndRedirectIncomingTransitionsTo: aState
	self previousStatesDo: [:each |
		each transitions copy do: [:transition |
			each addTransition:
				(transition class
					matcher: transition matcher
					nextState: aState)]]