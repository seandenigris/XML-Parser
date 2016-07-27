handling tokens
handleStartDTD: aRoot publicID: aPublicId systemID: aSystemId
	self doctypeDefinition
		root: aRoot
		externalSubsetURI: aSystemId.
	
	self saxHandler
		startDTD: aRoot
		publicID: aPublicId
		systemID: aSystemId;
		startInternalSubset.