private
toUTF32: aString littleEndian: aBoolean
	^ String streamContents: [:stream |
		aString do: [:each |
			aBoolean
				ifTrue: [
					stream
						nextPut: (each asciiValue bitAnd: 16r000000FF) asCharacter;
						nextPut: ((each asciiValue bitAnd: 16r0000FF00) bitShift: -8) asCharacter;
						nextPut: ((each asciiValue bitAnd: 16r00FF0000) bitShift: -16) asCharacter;
						nextPut: ((each asciiValue bitAnd: 16rFF000000) bitShift: -24) asCharacter]
				ifFalse: [
					stream
						nextPut: ((each asciiValue bitAnd: 16rFF000000) bitShift: -24) asCharacter;
						nextPut: ((each asciiValue bitAnd: 16r00FF0000) bitShift: -16) asCharacter;
						nextPut: ((each asciiValue bitAnd: 16r0000FF00) bitShift: -8) asCharacter;
						nextPut: (each asciiValue bitAnd: 16r000000FF) asCharacter]]]