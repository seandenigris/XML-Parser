running
removeDummyElementClasses
	self dummyElementClassNames do: [:each |
		self removeDummySubclassNamed: each]