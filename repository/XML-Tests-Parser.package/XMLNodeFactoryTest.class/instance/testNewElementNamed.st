tests
testNewElementNamed
	| factory document element |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	element := document newElementNamed: 'test'.
	self
		assert: element class == self elementClass;
		assert: element configuration == document configuration;
		assert: element nodeFactory == factory;
		assert: element name = 'test'.