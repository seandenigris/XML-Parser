comparing
= aTransition
	^ aTransition == self
		or: [aTransition class == self class
			and: [aTransition nextState == nextState
				and: [aTransition matcher = matcher]]]