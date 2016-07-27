handling tokens
handleCData: aString
	self saxHandler
		startCData;
		startCDataSection;
		characters: aString;
		endCDataSection;
		endCData