parsing
parseMixedContentModel
	| list allowedElements  |

	list :=
		(contentModel endsWith: '*')
			ifTrue: [contentModel allButLast]
			ifFalse: [contentModel].
	list do: [:each |
		(',?*+' includes: each)
			ifTrue: [
				XMLValidationException signal:
					'Cannot use ', each asString, ' in mixed content declaration']].

	allowedElements := (DTDEnumerationListParser on: list) parse.
	allowedElements remove: '#PCDATA'.

	^ XMLMixedElementValidator
		name: name
		elements: allowedElements.