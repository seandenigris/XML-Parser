evaluation
applyBinaryOperatorOnStack
	nfaBuilder totalFragments > 1
		ifFalse: [self errorMissingOperand].

	operatorStack last == $|
		ifTrue: [nfaBuilder applyBranch]
		ifFalse: [nfaBuilder applyConcatenation].
	operatorStack removeLast.