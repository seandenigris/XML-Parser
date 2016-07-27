handling tokens
handleCData: aString
	self activeSaxHandler
		startCData;
		characters: aString;
		endCData