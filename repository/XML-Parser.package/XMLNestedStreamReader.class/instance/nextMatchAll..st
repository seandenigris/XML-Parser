testing
nextMatchAll: aString
	| i nextChar |

	self peek == (aString at: 1)
		ifFalse: [^ false].

	"we unrolled the first iteration with the above #peek"
	i := 2.
	self next.
	[(i <= aString size)
		and: [(aString at: i) == (nextChar := self next)]]
		whileTrue: [i := i + 1].
	(i > aString size)
		ifTrue: [^ true].

	self pushBack:
		(nextChar
			ifNotNil: [
				(aString copyFrom: 1 to: i)
					at: i put: nextChar;
					yourself]
			ifNil: [aString copyFrom: 1 to: i - 1]).
	^ false.