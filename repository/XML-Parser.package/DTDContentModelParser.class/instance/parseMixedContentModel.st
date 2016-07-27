parsing
parseMixedContentModel
	| list allowedElements  |

	list :=
		(contentModel endsWith: '*')
			ifTrue: [contentModel allButLast]
			ifFalse: [contentModel].

	allowedElements := (DTDMixedContentListParser on: list) parse.
	allowedElements remove: '#PCDATA'.

	^ XMLMixedElementValidator
		name: name
		elements: allowedElements.