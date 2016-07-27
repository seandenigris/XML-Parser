printing
printUnescaped: aString on: aStream
	| readStream nextChar charCode |

	readStream := aString readStream.
	[readStream atEnd]
		whileFalse: [
			(nextChar := readStream next) == $%
				ifTrue: [
					charCode := 
						XMLIntegerReader
							readFrom: readStream
							withBase: 16
							upTo: 2.
					nextChar := (charCode ifNil: [$%]) asCharacter].
			aStream nextPut: nextChar].