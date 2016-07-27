tests
testInnerXML
	| element |

	element := XMLElement name: 'test' namespaces: (Array with: 'prefix'-> 'ns').
	element innerXML: '<prefix:inner>test</prefix:inner>'.

	self
		assert: element nodes size = 1;
		assert: (element firstNode isNamed: 'prefix:inner');
		assert: (element firstNode contentString = 'test').