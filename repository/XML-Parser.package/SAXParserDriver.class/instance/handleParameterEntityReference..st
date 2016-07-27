handling tokens
handleParameterEntityReference: aName
	^ self doctypeDefinition
		parameterEntityAt: aName
		ifAbsent: [
			self isValidating
				ifTrue: [self errorUndeclaredParameterEntity: aName].
			nil]