testing
nextMatchAll: aString
	| i oldStream oldPosition oldPeekChar nextChar pushBackString |

	(oldPeekChar := self peek) == (aString at: 1)
		ifFalse: [^ false].
	oldPosition := (oldStream := stream) position.
	i := 1.
	[(i <= aString size)
		and: [(aString at: i) == (nextChar := self next)]]
		whileTrue: [i := i + 1].
	(i > aString size)
		ifTrue: [^ true].

	stream == oldStream
		ifTrue: [
			peekChar := oldPeekChar.
			stream position: oldPosition]
		ifFalse:[
			pushBackString := aString copyFrom: 1 to: i - 1.
			self pushBack:
				(nextChar
					ifNotNil: [pushBackString copyWith: nextChar]
					ifNil: [pushBackString])].
	^ false.