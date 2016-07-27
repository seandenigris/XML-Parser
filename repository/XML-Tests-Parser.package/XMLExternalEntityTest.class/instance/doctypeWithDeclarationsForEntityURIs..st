source
doctypeWithDeclarationsForEntityURIs: aUrlCollection
	^  String streamContents: [:stream |
		stream nextPutAll: '<!DOCTYPE test ['.
		aUrlCollection withIndexDo: [:each :i |
			stream nextPutAll: '<!ENTITY entity', i printString, ' SYSTEM "', each, '">'].
		stream nextPutAll: ']>']