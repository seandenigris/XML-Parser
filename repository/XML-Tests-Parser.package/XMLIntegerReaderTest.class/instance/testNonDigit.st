tests
testNonDigit

	2 to: self maxBase do: [:base | | baseCharacter stream |
		baseCharacter :=
			base >= 10
				ifTrue: [Character value: $A asciiValue + (base - 10)]
				ifFalse: [Character value: $0 asciiValue + base].
		stream := ((base printStringBase: base) copyWith: baseCharacter) readStream.
		self
			assert: (XMLIntegerReader readFrom: stream withBase: base) = base;
			deny: stream atEnd;
			assert: stream next = baseCharacter.

		baseCharacter := Character value: $0 asciiValue - 1.
		stream := baseCharacter asString readStream.
		self
			assert: (XMLIntegerReader readFrom: stream withBase: base) isNil;
			deny: stream atEnd;
			assert: stream next = baseCharacter].