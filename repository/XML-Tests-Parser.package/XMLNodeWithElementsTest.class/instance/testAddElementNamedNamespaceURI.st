tests
testAddElementNamedNamespaceURI
	| node element |

	node := self nodeClass new.
	(element := node addElementNamed: 'test' namespaceURI: 'defaultNS')
		addElementNamed: 'prefix:first' namespaceURI: 'firstNS';
		addElementNamed: 'second' namespaceURI: 'secondNS'.
	self
		assert: element namespaceURI = 'defaultNS';
		assert: element nodes first name = 'prefix:first';
		assert: element nodes first namespaceURI = 'firstNS';
		assert: element nodes second name = 'second';
		assert: element nodes second namespaceURI = 'secondNS'.