accessing
nextMatchAll: aString
	| nextChar oldCurrentLineNumber oldCurrentPosition oldCurrentLineStartPosition |

	aString size > 0
		ifFalse: [^ true].

	"inlined peek"
	(peekChar ifNil: [peekChar := self basicNext]) == (aString at: 1)
		ifFalse: [^ false].

	oldCurrentLineNumber := currentLineNumber.
	oldCurrentPosition := currentPosition.
	oldCurrentLineStartPosition := currentLineStartPosition.
	self next.
	"we unrolled the first iteration with the above inlined peek"
	2 to: aString size do: [:i |
		(nextChar := self peek) == (aString at: i)
			ifTrue: [self next]
			ifFalse: [
				self pushBack: (aString copyFrom: 1 to: i -1).
				currentLineNumber := oldCurrentLineNumber.
				currentPosition := oldCurrentPosition.
				currentLineStartPosition := oldCurrentLineStartPosition.
				^ false]].
	^ true.