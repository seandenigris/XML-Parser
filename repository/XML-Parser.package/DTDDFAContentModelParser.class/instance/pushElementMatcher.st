parsing
pushElementMatcher
	| element nextChar writeStream |

	writeStream := (String new: 32) writeStream.
	[contentModelStream atEnd
		or: [(nextChar := contentModelStream peek) isSeparator
			or: [self isOperatorOrParen: nextChar]]]
		whileFalse: [writeStream nextPut: contentModelStream next].
	contentModelStream skipSeparators.

	element := writeStream contents.
	element = '#PCDATA'
		ifTrue: [XMLValidationException signal: 'Unexpected #PCDATA in content model'].

	nfaBuilder pushMatcher: (DTDElementMatcher element: element).