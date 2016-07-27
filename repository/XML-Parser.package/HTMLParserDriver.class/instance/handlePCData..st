handling tokens
handlePCData: aString
	self
		endElements: self elementNester elementsToEndBeforePCData;
		startElements: self elementNester elementsToStartBeforePCData.

	self saxHandler characters: aString.