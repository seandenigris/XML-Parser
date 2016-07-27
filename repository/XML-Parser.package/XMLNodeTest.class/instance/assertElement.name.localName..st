assertions
assertElement: anElement name: aName localName: aLocalName
	self
		assert: anElement name = aName;
		assert: anElement qualifiedName = aName;
		assert: anElement localName = aLocalName;
		assert: (anElement isNamed: aName);
		assert: (anElement isNamed: aLocalName)