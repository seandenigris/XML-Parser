enumerating
detectNextStateMatching: aMatcherBlock ifNone: aNoneBlock
	self transitionsDo: [:each |
		(aMatcherBlock value: each matcher)
			ifTrue: [^ each nextState]].
	^ aNoneBlock value.