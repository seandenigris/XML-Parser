instance creation
saxDriver: aSaxDriver documentURI: anExternalSubsetUri
	^ self new
		setSAXDriver: aSaxDriver
		documentURI: anExternalSubsetUri 