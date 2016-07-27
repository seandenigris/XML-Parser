initialization
setScope: aScope
	scope := aScope.
	self nodesDo: [:each | each setScope: aScope].