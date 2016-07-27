handling tokens
handleParameterEntityReference: aName
	| entity |

	(entity := self dtd parameterEntityAt: aName)
		ifNil: [
			self isValidating
				ifTrue: [
					XMLValidationException signal:
						'Undeclared parameter entity reference %', aName, ';'].
			self saxHandler skippedEntity: aName].
	^ entity.