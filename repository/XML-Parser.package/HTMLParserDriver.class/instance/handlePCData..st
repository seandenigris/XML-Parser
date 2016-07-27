handling tokens
handlePCData: aString
	self elementNester
		elementsToEndBeforePCDataDo: [:each | self endElement: each ];
		elementsToStartBeforePCDataDo: [:each | self startElement: each].

	self saxHandler characters: aString.