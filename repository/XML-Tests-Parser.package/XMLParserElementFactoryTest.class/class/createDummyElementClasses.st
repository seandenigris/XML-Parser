running
createDummyElementClasses
	self dummyElementClassNames do: [:each |
		XMLElement
			subclass: each
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self category]