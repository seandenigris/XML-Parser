tests
testNewElementNamed
	| node element |

	node := self nodeClass new.
	element := node newElementNamed: 'test'.
	self
		assert: element isElement;
		assert: element configuration == node configuration;
		assert: element nodeFactory == node nodeFactory;
		assert: element name = 'test'.