streaming
pushBack: aString
	"Fixed to push the string before the peek char (if any)."
	| pushBackString |

	pushBackString := aString.
	peekChar
		ifNotNil: [pushBackString := pushBackString copyWith: peekChar].
	basicNextChar
		ifNotNil: [pushBackString := pushBackString copyWith: basicNextChar].
	peekChar := nil.
	basicNextChar := nil.

	self pushStream: (ReadStream on: pushBackString).