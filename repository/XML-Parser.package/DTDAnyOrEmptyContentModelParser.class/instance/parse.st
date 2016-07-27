parsing
parse
	contentModel = 'ANY'
		ifTrue: [^ XMLAnyElementValidator element: name].
	contentModel = 'EMPTY'
		ifTrue: [^ XMLEmptyElementValidator element: name].

	XMLValidationException signal: 'Invalid content model "', contentModel, '"'.