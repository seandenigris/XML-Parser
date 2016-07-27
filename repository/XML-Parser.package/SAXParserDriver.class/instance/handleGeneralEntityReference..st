handling
handleGeneralEntityReference: aName
	| entity |

	entity :=
		self doctypeDefinition
			generalEntityAt: aName
			ifAbsent: [
				self isValidating
					ifTrue: [self errorUndeclaredGeneralEntity: aName]
					ifFalse: [
						self isStandalone
							ifTrue: [self errorStandaloneUndeclaredGeneralEntity: aName]].
				^ nil].
	entity isUnparsed
		ifTrue: [self errorUnparsedGeneralEntityReference: aName].
	^ entity.