handling tokens
handleCData: aString
	self saxHandler
		startCData;
		characters: aString;
		endCData