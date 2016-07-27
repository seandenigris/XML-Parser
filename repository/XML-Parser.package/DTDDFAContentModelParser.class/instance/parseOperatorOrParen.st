parsing
parseOperatorOrParen 
	| nextChar |

	nextChar := contentModelStream next.
	nextChar == $)
		ifTrue: [^ self popParenthesizedOperators].
	nextChar == $(
		ifTrue: [^ self startParenthesizedOperators].

	(self isBinaryOperator: nextChar)
		ifTrue: [
			self hasOperatorOnStack
				ifTrue: [
					(self isBinaryOperator: nextChar
						higherPrecedenceThan: operatorStack last)
						ifFalse: [self applyBinaryOperatorOnStack]].
			operatorStack addLast: nextChar]
		ifFalse: [self applyUnaryOperator: nextChar].