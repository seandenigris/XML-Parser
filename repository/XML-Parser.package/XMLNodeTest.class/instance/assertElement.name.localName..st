assertions
assertElement: anElement name: aName localName: aLocalName
	self
		assert: anElement name == aName asSymbol;
		assert: anElement tag == aName asSymbol;
		assert: anElement qualifiedName == aName asSymbol;
		assert: anElement localName == aLocalName asSymbol;
		assert: (anElement isNamed: aName);
		assert: (anElement isNamed: aLocalName)