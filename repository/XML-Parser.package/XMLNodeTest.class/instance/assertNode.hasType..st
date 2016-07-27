assertions
assertNode: aNode hasType: aType
	self assertNode: aNode hasTypes: (Array with: aType)