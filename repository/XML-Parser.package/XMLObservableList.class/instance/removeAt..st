removing
removeAt: anIndex
	^ self with: [super removeAt: anIndex] remove: (self at: anIndex)