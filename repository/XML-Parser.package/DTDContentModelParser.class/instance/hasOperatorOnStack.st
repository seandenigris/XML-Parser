testing
hasOperatorOnStack
	^ operatorStack notEmpty
		and: [self isBinaryOperator: operatorStack last]