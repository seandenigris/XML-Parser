handling tokens
handleGeneralEntityReference: aName
	| entity |

	(entity := self dtd generalEntityAt: aName)
		ifNil: [
			self isValidating
				ifTrue: [
					XMLValidationException signal:
						'Undeclared general entity reference &', aName, ';'].
			self preservesUndeclaredEntityReferences
				ifTrue: [entity := DTDBypassedGeneralEntity named: aName].
			self saxHandler skippedEntity: aName].
	^ entity.