handling tokens
handleParameterEntityReference: aName
	| entity |

	entity := self dtd parameterEntityAt: aName.
	(entity isNil and: [self isValidating])
		ifTrue: [(XMLValidationException undeclaredParameterEntity: aName) signal].

	^ entity.