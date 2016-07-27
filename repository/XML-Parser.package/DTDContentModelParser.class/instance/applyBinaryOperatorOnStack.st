parsing
applyBinaryOperatorOnStack
	operatorStack last == $|
		ifTrue: [nfaBuilder applyAlternation]
		ifFalse: [nfaBuilder applyConcatenation].
	operatorStack removeLast.