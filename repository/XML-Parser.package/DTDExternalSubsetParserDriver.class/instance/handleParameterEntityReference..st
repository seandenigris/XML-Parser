handling tokens
handleParameterEntityReference: aName
	| entity |

	entity := self dtd parameterEntityAt: aName.
	(entity isNil and: [self isValidating])
		ifTrue: [
			XMLValidationException signal:
				'Undeclared parameter entity reference %', aName, ';'].

	^ entity.