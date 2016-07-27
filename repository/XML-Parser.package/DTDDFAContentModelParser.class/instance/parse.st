parsing
parse
	contentModelStream := contentModel readStream.
	nameStream := WriteStream on: (String new: 16).
	nfaBuilder := XMLNFABuilder new.
	operatorStack := OrderedCollection new.

	[contentModelStream atEnd]
		whileFalse: [
			(self isOperatorOrParen: contentModelStream peek)
				ifTrue: [self parseOperatorOrParen]
				ifFalse: [self parseElementName]].
	self popRemainingOperators.

	^ XMLDFAElementValidator
		element: element
		dfa: nfaBuilder firstStateOfAcceptingNFA asDFAState.