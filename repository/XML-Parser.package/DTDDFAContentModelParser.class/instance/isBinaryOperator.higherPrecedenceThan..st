testing
isBinaryOperator: aFirstOperator higherPrecedenceThan: aSecondOperator
	^ aFirstOperator == $, and: [aSecondOperator == $|]