private
toString: aString
	^ (aString respondsTo: #string) ifTrue: [aString string] ifFalse: [aString]