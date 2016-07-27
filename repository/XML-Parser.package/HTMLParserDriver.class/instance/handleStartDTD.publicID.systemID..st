handling tokens
handleStartDTD: aRoot publicID: aPublicId systemID: aSystemId
	self saxHandler
		startDTD: aRoot
		publicID: aPublicId
		systemID: aSystemId