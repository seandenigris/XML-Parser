parsing
parse
	contentModel = 'ANY'
		ifTrue: [^ XMLAnyElementValidator element: element].
	contentModel = 'EMPTY'
		ifTrue: [^ XMLEmptyElementValidator element: element].

	self errorInvalidContentModel.