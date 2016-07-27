handling tokens
handleGeneralEntityReference: aName
	^ self dtd
		generalEntityAt: aName
		ifAbsent: [
			self isValidating
				ifTrue: [self errorUndeclaredGeneralEntity: aName].
			nil]