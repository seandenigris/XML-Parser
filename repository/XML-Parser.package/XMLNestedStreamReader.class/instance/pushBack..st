streaming
pushBack: aString
	"Fixed to push the string before the peek char (if any)."
	| pushBackString |

	pushBackString := aString.
	peekChar
		ifNotNil: [
			pushBackString := pushBackString copyWith: peekChar.
			peekChar := nil].

	self pushStream: (ReadStream on: pushBackString).