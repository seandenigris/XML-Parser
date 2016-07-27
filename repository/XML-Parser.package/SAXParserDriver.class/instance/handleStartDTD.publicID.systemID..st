handling tokens
handleStartDTD: aRoot publicID: aPublicId systemID: aSystemId
	externalSubsetUri := aSystemId.

	self doctypeDefinition root: aRoot.
	self saxHandler
		startDTD: aRoot
		publicID: aPublicId
		systemID: aSystemId;
		startInternalSubset.