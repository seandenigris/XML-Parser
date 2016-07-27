assertions
assertNode: aNode hasChildren: aNodeCollection
	self assert: aNode nodes asArray = aNodeCollection asArray