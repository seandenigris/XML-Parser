testing
hasOperatorOnStack
	^ operatorStack notEmpty
		and: [operatorStack last == $| or: [operatorStack last == $,]]