parsing
parseElementName
	| matcher |

	nameStream reset.
	[contentModelStream atEnd
		or: [self isSpecialCharacter: contentModelStream peek]]
		whileFalse: [nameStream nextPut: contentModelStream next].

	matcher := nameStream contents.
	matcher = '#PCDATA'
		ifTrue: [XMLValidationException signal: 'Unexpected #PCDATA in content model'].

	nfaBuilder pushMatcher: matcher.