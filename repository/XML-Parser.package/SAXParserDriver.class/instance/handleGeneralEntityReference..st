handling
handleGeneralEntityReference: aName
	^ self doctypeDefinition
		generalEntityAt: aName
		ifAbsent: [
			self isValidating
				ifTrue: [self errorUndeclaredGeneralEntity: aName]
				ifFalse: [
					self isStandalone
						ifTrue: [self errorStandaloneUndeclaredGeneralEntity: aName]].
			nil]