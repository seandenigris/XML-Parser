handling tokens
handleCData: aString
	self saxHandler
		checkEOD;
		startCData;
		characters: aString;
		endCData