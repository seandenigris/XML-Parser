parsing
applyUnaryOperator: aCharacter
	nfaBuilder fragmentStack
		ifEmpty: [self errorMissingOperand].

	aCharacter == $+
		ifTrue: [nfaBuilder applyPlus]
		ifFalse: [
			aCharacter == $*
				ifTrue: [nfaBuilder applyStar]
				ifFalse: [nfaBuilder applyOptional]].