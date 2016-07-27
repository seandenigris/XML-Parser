tokenizing
nextStartDocument
	driver isParsingExternalSubset
		ifTrue: [context enterExternalSubsetTextDeclaration]
		ifFalse: [context enterProlog].
	driver handleStartDocument.