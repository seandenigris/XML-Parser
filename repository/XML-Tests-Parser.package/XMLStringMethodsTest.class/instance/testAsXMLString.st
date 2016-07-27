tests
testAsXMLString
	| node |

	node := 'test' asXMLString.
	self
		assert: node class == XMLString;
		assert: node string = 'test'.