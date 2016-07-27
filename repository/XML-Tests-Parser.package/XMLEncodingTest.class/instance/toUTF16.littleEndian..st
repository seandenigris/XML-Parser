private
toUTF16: aString littleEndian: aBoolean
	^ String streamContents: [:stream |
		aString do: [:each |
			aBoolean
				ifTrue: [
					stream
						nextPut: (each asciiValue bitAnd: 16r00FF) asCharacter;
						nextPut: ((each asciiValue bitAnd: 16rFF00) bitShift: -8) asCharacter]
				ifFalse: [
					stream
						nextPut: ((each asciiValue bitAnd: 16rFF00) bitShift: -8) asCharacter;
						nextPut: (each asciiValue bitAnd: 16r00FF) asCharacter]]]