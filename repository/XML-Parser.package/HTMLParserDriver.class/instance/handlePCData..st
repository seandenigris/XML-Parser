handling tokens
handlePCData: aString
	self elementNester
		beforePCDataElementsToEndDo: [:each | self endElement: each]
		elementsToStartDo: [:each | self startElement: each].

	self saxHandler characters: aString.