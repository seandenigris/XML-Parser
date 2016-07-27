parsing
parseElementName
	| matcher nextChar |

	nameStream reset.
	[contentModelStream atEnd
		or: [(nextChar := contentModelStream peek) isSeparator
			or: [self isOperatorOrParen: nextChar]]]
		whileFalse: [nameStream nextPut: contentModelStream next].
	contentModelStream skipSeparators.

	matcher := nameStream contents.
	matcher = '#PCDATA'
		ifTrue: [XMLValidationException signal: 'Unexpected #PCDATA in content model'].

	nfaBuilder pushMatcher: matcher.