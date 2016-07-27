assertions
assertElement: anElement hasName: aName localName: aLocalName
	self
		assert: anElement name = aName;
		assert: anElement localName = aLocalName;
		assert: (anElement isNamed: aName);
		assert: (anElement isNamed: aLocalName)