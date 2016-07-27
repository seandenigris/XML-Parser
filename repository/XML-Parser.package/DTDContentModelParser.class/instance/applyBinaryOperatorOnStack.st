parsing
applyBinaryOperatorOnStack
	nfaBuilder fragmentStack size >= 2
		ifFalse: [self errorMissingOperand].

	operatorStack last == $|
		ifTrue: [nfaBuilder applyAlternation]
		ifFalse: [nfaBuilder applyConcatenation].
	operatorStack removeLast.