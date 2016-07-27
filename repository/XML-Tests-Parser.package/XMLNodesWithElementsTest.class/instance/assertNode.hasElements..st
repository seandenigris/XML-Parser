assertions
assertNode: aNode hasElements: anElementCollection
	self assert: aNode elements asArray = anElementCollection asArray