entities
handleEntity: referenceString in: parsingContext 

	| entity entityValue |
	entity := self entity: referenceString.
	entityValue := entity valueForContext: parsingContext.
	(self class isCharEscape: entityValue)
		ifTrue: [entityValue := entity reference].
	self pushStream: (ReadStream on: entityValue asString)