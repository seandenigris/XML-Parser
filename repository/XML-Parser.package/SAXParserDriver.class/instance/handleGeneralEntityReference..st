handling tokens
handleGeneralEntityReference: aName
	| entity |

	(entity := self dtd generalEntityAt: aName)
		ifNil: [
			self isValidating
				ifTrue: [self errorUndeclaredGeneralEntity: aName].
			self preservesUndeclaredEntityReferences
				ifTrue: [entity := DTDBypassedGeneralEntity named: aName].
			self saxHandler skippedEntity: aName].
	^ entity.