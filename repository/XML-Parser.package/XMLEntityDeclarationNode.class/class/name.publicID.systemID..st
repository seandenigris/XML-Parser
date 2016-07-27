instance creation
name: aName publicID: aPublicId systemID: aSystemId
	^ self new
		setName: aName
		replacement: nil
		publicID: aPublicId
		systemID: aSystemId
		ndata: nil