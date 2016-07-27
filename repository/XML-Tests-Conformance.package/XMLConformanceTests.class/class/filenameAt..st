as yet unclassified
filenameAt: partialPath 
	| platformPartialPath methodOfFileName stream |
	
	methodOfFileName := (partialPath copyWithoutAll: '.-/\') asSymbol.
	(self class includesSelector: methodOfFileName )
		ifTrue: [ ^ self perform: methodOfFileName ].
	
	platformPartialPath := partialPath replaceAll: $/ with: FileDirectory pathNameDelimiter.
	stream := CrLfFileStream
		readOnlyFileNamed: (self baseTestDirectory directoryNamed: platformPartialPath) pathName.
	self class compile: 'source', methodOfFileName asString, String cr, '	^ ', stream contents printString classified: 'source'.
	^ stream contents.