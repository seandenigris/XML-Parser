parsing
parseElementName
	| matcher |

	nameStream reset.
	[contentModelStream atEnd
		or: [SpecialCharacters includes: contentModelStream peek]]
		whileFalse: [nameStream nextPut: contentModelStream next].

	matcher := nameStream contents.
	matcher = '#PCDATA'
		ifTrue: [XMLValidationException signal: 'Unexpected #PCDATA in content model'].

	nfaBuilder pushMatcher: matcher.