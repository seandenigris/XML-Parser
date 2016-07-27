private
isMaxSizeException: anException
	^ anException isKindOf: (XMLClassFinder classNamed: #ZnEntityTooLarge)