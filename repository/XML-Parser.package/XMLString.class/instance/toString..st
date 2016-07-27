private
toString: aString
	^ (aString isKindOf: String)
		ifTrue: [aString]
		ifFalse: [aString string]