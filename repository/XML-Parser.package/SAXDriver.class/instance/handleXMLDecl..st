handling tokens
handleXMLDecl: attributes
	self saxHandler
		checkEOD; 
		documentAttributes: attributes