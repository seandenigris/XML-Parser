accessing
attributeAt: aString
	| result |
	result := self attributes at: aString.
	^ result isEmpty ifFalse: [result] ifTrue: [nil].