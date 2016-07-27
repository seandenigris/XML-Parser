parsing
parseDFAContentModel
	| nfa nextChar |

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

	nfa := nfaBuilder buildNFAFromFragments.
	^ XMLDFAElementValidator
		element: name
		dfa: (XMLDFABuilder nfa: nfa) buildDFA.