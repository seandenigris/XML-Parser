enumerating
elementsAt: aName do: aBlock
	(self cachedElementsByName
		at: aName
		ifAbsent: [^ self]) do: aBlock