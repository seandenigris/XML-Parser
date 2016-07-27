accessing
interspersedWithNodes: aNodeCollection
	^ self
		intersperse: aNodeCollection
		with: (self newNodes: aNodeCollection size)