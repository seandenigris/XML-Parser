parsing
parse
	contentModelStream := contentModel readStream.
	nameStream := WriteStream on: (String new: 16).
	operatorStack := OrderedCollection new.
	nfaBuilder := XMLNFABuilder new.

	[contentModelStream atEnd]
		whileFalse: [ 
			(self parserForSpecialCharacter: contentModelStream peek)
				ifNotNil: [:selector |
					self
						perform: selector
						with: contentModelStream next]
				ifNil: [self parseElementName]].
	self popRemainingOperators.

	^ XMLDFAElementValidator
		element: element
		dfa: nfaBuilder firstStateOfAcceptingNFA asDFAState.