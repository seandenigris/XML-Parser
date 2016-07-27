parsing
applyBinaryOperatorOnStack
	nfaBuilder totalFragments > 1
		ifFalse: [self errorMissingOperand].

	operatorStack last == $|
		ifTrue: [nfaBuilder applyAlternation]
		ifFalse: [nfaBuilder applyConcatenation].
	operatorStack removeLast.