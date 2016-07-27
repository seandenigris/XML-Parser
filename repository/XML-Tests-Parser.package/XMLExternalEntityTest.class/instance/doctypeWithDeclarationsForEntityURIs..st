source
doctypeWithDeclarationsForEntityURIs: aURICollection
	^ String streamContents: [:stream |
		stream nextPutAll: '<!DOCTYPE test ['.
		aURICollection withIndexDo: [:each :i |
			stream nextPutAll: '<!ENTITY entity', i printString, ' SYSTEM "', each, '">'].
		stream nextPutAll: ']>']