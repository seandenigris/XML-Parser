copying
copyReplaceAll: anOldCollection with: aNewCollection
	^ self speciesNewWithCollection:
		(collection
			copyReplaceAll: anOldCollection
			with: aNewCollection)