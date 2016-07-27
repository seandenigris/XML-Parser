running
createDummyElementClasses
	self dummyElementClassNames do: [:each |
		self
			createDummySubclassOf: XMLElement
			named: each]