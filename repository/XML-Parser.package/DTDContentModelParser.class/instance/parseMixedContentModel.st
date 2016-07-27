parsing
parseMixedContentModel
	| mayContainElements mixedContentList allowedElements  |

	mayContainElements := contentModel last == $*.
	mixedContentList :=
		mayContainElements
			ifTrue: [contentModel allButLast]
			ifFalse: [contentModel].

	allowedElements := (DTDMixedContentListParser on: mixedContentList) parse.
	allowedElements remove: '#PCDATA'.
	(mayContainElements or: [allowedElements isEmpty])
		ifFalse: [XMLValidationException signal: 'Missing * after mixed content list with elements'].

	^ XMLMixedElementValidator
		name: name
		elements: allowedElements.