handling tokens
handleStartDTD: aRoot publicID: aPublicId systemID: aSystemId
	self dtd
		rootElement: aRoot
		externalSubsetURI: aSystemId.
	
	self saxHandler
		startDTD: aRoot
		publicID: aPublicId
		systemID: aSystemId;
		startInternalSubset.