parsing
popRemainingOperators
	[operatorStack notEmpty]
		whileTrue: [
			operatorStack last == $(
				ifTrue: [self errorMismatchedParens].
			self applyBinaryOperatorOnStack].

	nfaBuilder fragmentStack size = 1
		ifFalse: [self errorMissingOperand].