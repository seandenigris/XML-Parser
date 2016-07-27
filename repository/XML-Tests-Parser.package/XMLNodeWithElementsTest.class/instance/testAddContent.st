tests
testAddContent
	| node |

	node := self nodeClass new.
	node addContent: 'one'.
	self
		assert: node nodes size = 1;
		assert: (node firstNode isStringNode: 'one').
	node addContent: 'two' asXMLString.
	self
		assert: node nodes size = 1;
		assert: (node firstNode isStringNode: 'onetwo').

	node addNode: (XMLElement named: 'three').
	self
		assert: node nodes size = 2;
		assert: (node firstNode isStringNode: 'onetwo');
		assert: (node nodes second isElementNamed: 'three').

	node
		addContent: (XMLCData string: 'four');
		addContent: (XMLString string: 'five').
	self
		assert: node nodes size = 4;
		assert: (node firstNode isStringNode: 'onetwo');
		assert: (node nodes second isElementNamed: 'three');
		assert: (node nodes third isCData and: [node nodes third string = 'four']);
		assert: (node nodes fourth isStringNode: 'five').