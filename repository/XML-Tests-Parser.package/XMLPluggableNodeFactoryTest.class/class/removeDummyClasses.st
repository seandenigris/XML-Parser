running
removeDummyClasses
	self dummyClassNames do: [:each |
		self removeDummySubclassNamed: each]