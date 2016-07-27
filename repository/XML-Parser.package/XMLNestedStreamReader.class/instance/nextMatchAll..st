testing
nextMatchAll: aString
	| i nextChar pushBackString |

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

	pushBackString := aString copyFrom: 1 to: i - 1.
	self pushBack:
		(nextChar
			ifNotNil: [pushBackString copyWith: nextChar]
			ifNil: [pushBackString]).
	^ false.