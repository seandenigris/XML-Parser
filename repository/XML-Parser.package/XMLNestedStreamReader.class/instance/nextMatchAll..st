accessing
nextMatchAll: aString
	| nextChar  |

	"inlined peek"
	(peekChar ifNil: [peekChar := self basicNext]) == (aString at: 1)
		ifFalse: [^ false].
	self next.

	"we unrolled the first iteration with the above #peek"
	2 to: aString size do: [:i |
		(nextChar := self peek) == (aString at: i)
			ifFalse: [
				self pushBack: (aString copyFrom: 1 to: i -1).
				^ false].
			self next].
	^ true.