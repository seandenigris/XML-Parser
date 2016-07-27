accessing
nextMatchAll: aString
	| oldCurrentLineNumber oldCurrentPosition oldCurrentLineStartPosition |

	aString size > 0
		ifFalse: [^ true].

	"inlined peek"
	(peekChar ifNil: [peekChar := self basicNext]) = (aString at: 1)
		ifFalse: [^ false].
	oldCurrentLineNumber := currentLineNumber.
	oldCurrentPosition := currentPosition.
	oldCurrentLineStartPosition := currentLineStartPosition.
	self next.
	"the first iteration was unrolled with the above inlined peek/self next, so
	the to:do: loop starts at 2"
	2 to: aString size do: [:i |
		self peek = (aString at: i)
			ifFalse: [
				self pushBack: (aString copyFrom: 1 to: i -1).
				currentLineNumber := oldCurrentLineNumber.
				currentPosition := oldCurrentPosition.
				currentLineStartPosition := oldCurrentLineStartPosition.
				^ false].
		self next].
	^ true.