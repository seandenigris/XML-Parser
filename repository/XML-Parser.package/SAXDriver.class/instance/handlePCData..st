handling tokens
handlePCData: aString
	self saxHandler
		checkEOD; 
		characters: aString