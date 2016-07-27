parsing
parse
	| nextChar |

	contentModelStream := contentModel readStream.
	nfaBuilder := XMLNFABuilder new.
	operatorStack := OrderedCollection new.
	[contentModelStream atEnd]
		whileFalse: [
			(self isOperatorOrParen: contentModelStream peek)
				ifTrue: [ 
					nextChar := contentModelStream next.
					(self isBinaryOperator: nextChar)
						ifTrue: [
							self hasOperatorOnStack
								ifTrue: [
									(self isBinaryOperator: nextChar
										higherPrecedenceThan: operatorStack last)
									ifFalse: [self applyBinaryOperatorOnStack]].
							operatorStack addLast: nextChar]
					ifFalse: [
						nextChar == $)
							ifTrue: [self popParenthesizedOperators]
							ifFalse: [
								nextChar == $(
									ifTrue: [operatorStack addLast: nextChar]
									ifFalse: [self applyUnaryOperator: nextChar]]]]
				ifFalse: [self pushElementMatcher]].
	self popRemainingOperators.

	^ XMLDFAElementValidator
		element: element
		dfa: nfaBuilder buildNFAFromFragments asDFA.