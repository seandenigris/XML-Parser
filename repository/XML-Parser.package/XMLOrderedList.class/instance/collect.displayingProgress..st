NewInspector Compatibility
collect: aBlock displayingProgress: aString
	^ self newWithCollection:
		(collection
			collect: aBlock
			displayingProgress: aString)