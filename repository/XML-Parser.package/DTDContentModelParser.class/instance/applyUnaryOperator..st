parsing
applyUnaryOperator: aCharacter
	nfaBuilder hasFragments
		ifFalse: [self errorMissingOperand].

	aCharacter == $+
		ifTrue: [nfaBuilder applyPlus]
		ifFalse: [
			aCharacter == $*
				ifTrue: [nfaBuilder applyStar]
				ifFalse: [nfaBuilder applyOptional]].