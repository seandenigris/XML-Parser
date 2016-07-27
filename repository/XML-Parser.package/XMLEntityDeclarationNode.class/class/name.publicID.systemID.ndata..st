instance creation
name: aName publicID: aPublicId systemID: aSystemId ndata: aNotationName
	^ self new
		setName: aName
		replacement: nil
		publicID: aPublicId
		systemID: aSystemId
		ndata: aNotationName