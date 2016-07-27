running
setUp
	self elementClassNames do: [:each |
		XMLElement
			subclass: each
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self class category]