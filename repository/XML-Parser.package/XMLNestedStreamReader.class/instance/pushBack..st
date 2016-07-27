streaming
pushBack: aString
	| pushBackString |

	pushBackString := aString.
	peekChar
		ifNotNil: [
			pushBackString := pushBackString copyWith: peekChar.
			peekChar := nil].

	self pushStream: (ReadStream on: pushBackString) from: nil onClose: nil.