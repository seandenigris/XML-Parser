enumerating
withIndexCollect: aTwoArgumentBlock
	^ self copyThenSetCollection: (collection withIndexCollect: aTwoArgumentBlock)