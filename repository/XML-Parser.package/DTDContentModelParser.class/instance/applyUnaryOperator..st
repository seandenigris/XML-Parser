parsing
applyUnaryOperator: aCharacter
	aCharacter == $+
		ifTrue: [nfaBuilder applyPlus]
		ifFalse: [
			aCharacter == $*
				ifTrue: [nfaBuilder applyStar]
				ifFalse: [nfaBuilder applyOptional]].