handling tokens
handleParameterEntityReference: aName
	| entity |

	(entity := self dtd parameterEntityAt: aName)
		ifNil: [
			self isValidating
				ifTrue: [(XMLValidationException undeclaredParameterEntity: aName) signal].
			self preservesUndeclaredEntityReferences
				ifTrue: [entity := DTDBypassedParameterEntity named: aName]].
	^ entity.