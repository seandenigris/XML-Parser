handling tokens
handleGeneralEntityReference: aName
	| entity |

	(entity := self dtd generalEntityAt: aName)
		ifNil: [
			self isValidating
				ifTrue: [(XMLValidationException undeclaredGeneralEntity: aName) signal].
			self saxHandler preservesUndeclaredEntityReferences
				ifTrue: [entity := DTDBypassedGeneralEntity named: aName].
			self saxHandler skippedEntity: aName].
	^ entity.