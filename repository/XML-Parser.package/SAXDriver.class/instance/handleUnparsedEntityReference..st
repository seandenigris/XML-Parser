handling tokens
handleUnparsedEntityReference: aName
	| notationName |

	notationName := self dtd unparsedEntityAt: aName.
	self isValidating
		ifTrue: [
			notationName
				ifNil: [(XMLValidationException undeclaredUnparsedEntity: aName) signal].
			(self dtd includesNotation: notationName)
				ifFalse: [XMLValidationException signal: 'Undeclared notation "', notationName, '"']].
	^ notationName.

	