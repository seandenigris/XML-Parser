handling tokens
handleUnparsedEntityReference: aName
	| notationName |

	notationName := self dtd unparsedEntityAt: aName.
	self isValidating
		ifTrue: [
			notationName
				ifNil: [self errorUndeclaredUnparsedEntity: aName].
			(self dtd includesNotation: notationName)
				ifFalse: [self errorUndeclaredNotation: notationName referencedBy: aName]].
	^ notationName.