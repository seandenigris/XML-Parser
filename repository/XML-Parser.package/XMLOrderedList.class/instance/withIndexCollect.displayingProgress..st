NewInspector Compatibility
withIndexCollect: aTwoArgumentBlock displayingProgress: aString
	^ self newWithCollection:
		(collection
			withIndexCollect: aTwoArgumentBlock
			displayingProgress: aString)