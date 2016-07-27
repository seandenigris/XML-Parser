streaming
pushBack: aString
	"Fixed to push the string before the peek char (if any)."
	
	| pushBackString |
	pushBackString := peekChar
		ifNil: [aString]
		ifNotNil: [aString, peekChar asString].
	peekChar := nil.
	self pushStream: (ReadStream on: pushBackString).