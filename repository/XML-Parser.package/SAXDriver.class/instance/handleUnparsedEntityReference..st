handling tokens
handleUnparsedEntityReference: aName
	| notationName |

	notationName := self dtd unparsedEntityAt: aName.
	self isValidating
		ifTrue: [
			notationName
				ifNil: [XMLValidationException signal: 'Undeclared unparsed entity reference &', aName, ';'].
			(self dtd includesNotation: notationName)
				ifFalse: [XMLValidationException signal: 'Undeclared notation "', notationName, '"']].
	^ notationName.

	