tests
testElementCreation
	| factory document element |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	element := document newElement.
	self
		assert: element class == self elementClass;
		assert: element configuration == document configuration;
		assert: element nodeFactory == factory.

	element := element newElementNamed: 'test'.
	self
		assert: element class == self elementClass;
		assert: element configuration == document configuration;
		assert: element name = 'test';
		assert: element nodeFactory == factory.

	element := element newElementNamed: 'prefix:test' namespaceURI: 'prefixNS'.
	self
		assert: element class == self elementClass;
		assert: element configuration == document configuration;
		assert: element name = 'prefix:test';
		assert: element namespaceURI = 'prefixNS';
		assert: element nodeFactory == factory.