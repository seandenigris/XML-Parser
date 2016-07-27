handling tokens
handleStartDTD: aRoot publicID: aPublicId systemID: aSystemId
	self dtd rootElement: aRoot.
	(self resolvesExternalEntities and: [aSystemId notEmpty])
		ifTrue: [self parseExternalSubset: aSystemId].
	
	self saxHandler
		startDTD: aRoot
		publicID: aPublicId
		systemID: aSystemId