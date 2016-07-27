handling tokens
handleStartDTD: aRoot publicID: aPublicId systemID: aSystemId
	self dtd
		rootElement: aRoot
		externalSubsetURI: aSystemId.
	
	self saxHandler
		isInDTD: true;
		startDTD: aRoot
		publicID: aPublicId
		systemID: aSystemId.