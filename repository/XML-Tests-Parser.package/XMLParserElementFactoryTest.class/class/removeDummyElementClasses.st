running
removeDummyElementClasses
	self dummyElementClassNames do: [:each | (Smalltalk at: each) removeFromSystem]