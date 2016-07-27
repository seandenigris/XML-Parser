testing
nextMatchAll: aString
	| i currentStream nextChar pushBackString |

	i := 1.
	currentStream := stream.
	[(i <= aString size)
		and: [(aString at: i) == (nextChar := self next)]]
		whileTrue: [i := i + 1].
	(i > aString size)
		ifTrue: [^ true].

	(stream == currentStream)
		ifTrue: [
			nextChar ifNil: [i := i - 1].
			stream position: stream position - i]
		ifFalse: [
			pushBackString := aString copyFrom: 1 to: i - 1.
			self pushBack:
				(nextChar
					ifNotNil: [pushBackString copyWith: nextChar]
					ifNil: [pushBackString])].
	^ false.