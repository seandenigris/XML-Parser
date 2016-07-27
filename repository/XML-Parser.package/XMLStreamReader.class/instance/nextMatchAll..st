testing
nextMatchAll: aString
	| i nextChar pushBackString |

	i := 1.
	self peek == (aString at: 1)
		ifFalse: [^ false].
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