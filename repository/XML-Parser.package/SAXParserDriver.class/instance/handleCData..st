handling tokens
handleCData: aString
	self saxHandler
		isInCDataSection: true;
		startCData;
		characters: aString;
		endCData;
		isInCDataSection: false