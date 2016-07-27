entities
handleEntity: referenceString in: parsingContext 

	| entity entityValue |
	entity := self entity: referenceString.
	entityValue := entity valueForContext: parsingContext.
	(self class isCharEscape: entityValue)
		ifTrue: [entityValue := entity reference].
	streamReader pushStream: (ReadStream on: entityValue asString)