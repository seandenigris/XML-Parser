handling tokens
handlePCData: aString
	self
		preEndElements: self elementNester elementsToEndBeforePCData;
		preStartElements: self elementNester elementsToStartBeforePCData.

	super handlePCData: aString.