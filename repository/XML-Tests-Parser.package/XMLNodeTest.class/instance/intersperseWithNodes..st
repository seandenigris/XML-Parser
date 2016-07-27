accessing
intersperseWithNodes: aNodeCollection
	^ self
		intersperse: aNodeCollection
		with: (self newStrings: aNodeCollection size)