handling tokens
handleParameterEntityReference: aName
	^ self dtd
		parameterEntityAt: aName
		ifAbsent: [
			self isValidating
				ifTrue: [self errorUndeclaredParameterEntity: aName].
			nil]