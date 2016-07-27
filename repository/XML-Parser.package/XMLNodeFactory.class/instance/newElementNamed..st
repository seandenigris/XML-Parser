instance creation
newElementNamed: aName
	^ (self classForElement: aName) new
		name: aName;
		nodeFactory: self