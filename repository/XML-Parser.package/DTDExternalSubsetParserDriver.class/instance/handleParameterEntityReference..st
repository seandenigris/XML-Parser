handling tokens
handleParameterEntityReference: aName
	| entity |

	entity := self dtd parameterEntityAt: aName.
	(entity isNil and: [self isValidating])
		ifTrue: [self saxDriver errorUndeclaredParameterEntity: aName].

	^ entity.