handling tokens
handleParameterEntityReference: aName
	| entity |

	(entity := self dtd parameterEntityAt: aName)
		ifNil: [
			self isValidating
				ifTrue: [self errorUndeclaredParameterEntity: aName].
			self preservesUndeclaredEntityReferences
				ifTrue: [entity := DTDBypassedParameterEntity named: aName]].
	^ entity.