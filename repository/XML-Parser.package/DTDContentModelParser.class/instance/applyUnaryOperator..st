parsing
applyUnaryOperator: aCharacter
	nfaBuilder fragmentStack size >= 1
		ifFalse: [self errorMissingOperand].

	aCharacter == $+
		ifTrue: [nfaBuilder applyPlus]
		ifFalse: [
			aCharacter == $*
				ifTrue: [nfaBuilder applyStar]
				ifFalse: [nfaBuilder applyOptional]].