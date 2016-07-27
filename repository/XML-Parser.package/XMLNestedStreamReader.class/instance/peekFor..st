accessing
peekFor: aCharacter
	(peekChar ifNil: [peekChar := self basicNext]) == aCharacter
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]